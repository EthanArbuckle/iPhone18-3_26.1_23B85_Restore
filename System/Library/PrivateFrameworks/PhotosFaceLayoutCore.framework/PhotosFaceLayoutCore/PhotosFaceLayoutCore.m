double cropTimeAboveFacesNoMask(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = combineFaceRects(a1);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (!rectPlusCushionInsideImage(v21, v22, v24, v26, a8))
  {
    return *MEMORY[0x277CBF398];
  }

  v28 = maxRectInImageWithAnchorAtPosition(a10 / a11 / (a2 / a3), a8, 0.5, a5 + a7, v21 + v25 * 0.5, v23);
  if (!rectIsWithinRect(v21, v23, v25, v27, v28, v29, v30, v31))
  {
    return *MEMORY[0x277CBF398];
  }

  return v28;
}

double combineFaceRects(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    [v2 rectValue];
    x = v3;
    y = v5;
    width = v7;
    height = v9;

    if ([v1 count] >= 2)
    {
      v11 = 1;
      do
      {
        v12 = [v1 objectAtIndexedSubscript:v11];
        [v12 rectValue];
        v20.origin.x = v13;
        v20.origin.y = v14;
        v20.size.width = v15;
        v20.size.height = v16;
        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        v19 = CGRectUnion(v18, v20);
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;

        ++v11;
      }

      while ([v1 count] > v11);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

BOOL rectPlusCushionInsideImage(double a1, double a2, double a3, double a4, double a5)
{
  v5 = expandRect(a1, a2, a3, a4, a5, a5, a5, a5);

  return rectIsWithinRect(v5, v6, v7, v8, 0.0, 0.0, 1.0, 1.0);
}

double maxRectInImageWithAnchorAtPosition(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a5 - a2) / a3;
  v7 = 1.0 - a2;
  if (v6 >= (1.0 - a2 - a5) / (1.0 - a3))
  {
    v6 = (1.0 - a2 - a5) / (1.0 - a3);
  }

  v8 = v6 / a1;
  v9 = (a6 - a2) / a4;
  v10 = (v7 - a6) / (1.0 - a4);
  if (v9 < v10)
  {
    v10 = v9;
  }

  if (v10 < v8)
  {
    v6 = v6 * (v10 / v8);
  }

  return a5 - a3 * v6;
}

double cropTimeBelowFacesNoMask(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v49 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v22 = combineFaceRects(v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (!rectPlusCushionInsideImage(v22, v23, v25, v27, a8))
  {
    goto LABEL_14;
  }

  v43 = a5 * 0.3;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = a10 / a11 / (a2 / a3);
  v30 = v21;
  v31 = [v30 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v45;
    v34 = 1.0;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v44 + 1) + 8 * i) rectValue];
        if (v36 + v37 * 0.3 < v34)
        {
          v34 = v36 + v37 * 0.3;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v32);
  }

  else
  {
    v34 = 1.0;
  }

  v38 = maxRectInImageWithAnchorAtPosition(v29, a8, 0.5, v43, v22 + v26 * 0.5, v34);
  if (!rectIsWithinRect(v22, v24, v26, v28, v38, v39, v40, v41))
  {
LABEL_14:
    v38 = *MEMORY[0x277CBF398];
  }

  return v38;
}

double cropTimeAboveFacesWithMask(void *a1, void *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12, double a13)
{
  v23 = a2;
  v24 = combineFaceRects(a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (rectPlusCushionInsideImage(v24, v25, v27, v29, a10))
  {
    v66 = v30;
    v60 = a7 + a9;
    v67 = v28;
    v31 = v24 + v28 * 0.5;
    v32 = (v31 + 0.0) / (a10 + 0.5);
    v33 = (1.0 - v31) / (a10 + 0.5);
    if (v32 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    if (1.0 / (a10 * 2.0 + 1.0) >= v26 / (a7 + a9 + a10))
    {
      v35 = v26 / (a7 + a9 + a10);
    }

    else
    {
      v35 = 1.0 / (a10 * 2.0 + 1.0);
    }

    v36 = v34 / (a12 / a13 / (a4 / a5));
    if (v36 <= v35)
    {
      v35 = v34 / (a12 / a13 / (a4 / a5));
    }

    else
    {
      v34 = v34 * (v35 / v36);
    }

    v38 = v26;
    v39 = v26 - v35 * v60;
    v40 = v24;
    v41 = v24 + (v67 - v34) * 0.5;
    v42 = *(MEMORY[0x277CBF398] + 16);
    v69.origin = *MEMORY[0x277CBF398];
    v69.size = v42;
    v64 = v38;
    v65 = v40;
    if (rectIsWithinRect(v40, v38, v67, v66, v41, v39, v34, v35))
    {
      v59 = -8.0 / a5;
      v53 = -8.0 / a4 + 1.0;
      v46 = ((0.200845666 / (a8 * a9) + -1.0) * 0.2 + 1.0) * 0.185;
      v47 = dbl_22D12D700[a3 == 2];
      v58 = v46 / 0.18;
      v57 = v46 / 0.18 * v47;
      v56 = v46 * 0.04 / 0.82;
      v54 = a10 + 1.0;
      v55 = v56 * v47;
      do
      {
        if (v39 <= 1.0 - v35 * v54)
        {
          v48 = v39;
        }

        else
        {
          v48 = 1.0 - v35 * v54;
        }

        v49 = iterativeVerticalFacesMaskSolver(v23, 0, v68, a10, v41, v48, v34, v35, v43, v44, v45, v65, v64, v67, v66, a6, a7, a8, a9, v59, v56, v58, v55, v57);
        v51 = v50;
        x = v69.origin.x;
        if (!CGRectIsEmpty(v69))
        {
          break;
        }

        v34 = v53 * v49;
        v35 = v53 * v51;
        v39 = v64 - v53 * v51 * v60;
        v41 = v65 + (v67 - v34) * 0.5;
      }

      while (rectIsWithinRect(v65, v64, v67, v66, v41, v39, v34, v35));
    }

    else
    {
      x = v69.origin.x;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

CGFloat iterativeVerticalFacesMaskSolver(void *a1, uint64_t a2, double *a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22, double a23, double a24)
{
  v33 = a1;
  if (rectPlusCushionInsideImage(a5, a6, a7, a8, a4))
  {
    while (rectIsWithinRect(a12, a13, a14, a15, a5, a6, a7, a8))
    {
      Coverage = findCoverage(a2, v33, a5, a6, a7, a8, a16, a17, a18, a19);
      if (v35 < a22 && Coverage < a21)
      {
        if (v35 >= a24 && Coverage >= a23)
        {
          a3[12] = a5;
          a3[13] = a6;
          a3[14] = a7;
          a3[15] = a8;
        }

        break;
      }

      a6 = a6 + a20;
      if (!rectPlusCushionInsideImage(a5, a6, a7, a8, a4))
      {
        break;
      }
    }
  }

  return a7;
}

double cropTimeBelowFacesWithMask(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v22 = a2;
  v23 = combineFaceRects(a1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (rectPlusCushionInsideImage(v23, v24, v26, v28, a9))
  {
    v57 = v29;
    v58 = v27;
    v30 = v23 + v27 * 0.5;
    v31 = (v30 + 0.0) / (a9 + 0.5);
    v32 = (1.0 - v30) / (a9 + 0.5);
    if (v31 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    if (1.0 / (a9 * 2.0 + 1.0) >= (v25 + v29) / (a6 - a9))
    {
      v34 = (v25 + v29) / (a6 - a9);
    }

    else
    {
      v34 = 1.0 / (a9 * 2.0 + 1.0);
    }

    v35 = v33 / (a11 / a12 / (a3 / a4));
    v56 = a4;
    if (v35 <= v34)
    {
      v34 = v33 / (a11 / a12 / (a3 / a4));
    }

    else
    {
      v33 = v33 * (v34 / v35);
    }

    v37 = v23 + (v58 - v33) * 0.5;
    v38 = *(MEMORY[0x277CBF398] + 16);
    v60.origin = *MEMORY[0x277CBF398];
    v60.size = v38;
    if (rectIsWithinRect(v23, v25, v58, v57, v37, v25, v33, v34))
    {
      v49 = 1.0 - 8.0 / a3;
      v42 = ((0.200845666 / (a7 * a8) + -1.0) * 0.2 + 1.0) * 0.185;
      v51 = v42 / 0.18;
      v52 = v42 * 0.04 / 0.82;
      v50 = v42 / 0.18 * 0.142857143;
      do
      {
        v43 = 1.0 - v34 * (a9 + 1.0);
        v44 = v43 - v34;
        if (v25 + v34 >= v43)
        {
          v44 = v25;
        }

        v45 = iterativeVerticalFacesMaskSolver(v22, 1, v59, a9, v37, v44, v33, v34, v39, v40, v41, v23, v25, v58, v57, a5, a6, a7, a8, 8.0 / v56, v52, v51, v52 * 0.142857143, v50);
        v47 = v46;
        x = v60.origin.x;
        if (!CGRectIsEmpty(v60))
        {
          break;
        }

        v33 = v49 * v45;
        v34 = v49 * v47;
        v37 = v23 + (v58 - v33) * 0.5;
      }

      while (rectIsWithinRect(v23, v25, v58, v57, v37, v25, v33, v34));
    }

    else
    {
      x = v60.origin.x;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

double cropTimeLeftOfFacesWithMask(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, CGFloat a7, double a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22)
{
  v31 = a2;
  v32 = combineFaceRects(a1);
  v34 = v33;
  v36 = v35;
  v72 = v37;
  if (rectPlusCushionInsideImage(v32, v33, v35, v37, a20))
  {
    v38 = a6 + a8;
    v64 = a5;
    v67 = a4;
    v39 = a21 / a22 / (a4 / a5);
    v40 = 1.0 / (a20 * 2.0 + 1.0);
    v41 = v36 * 1.0001 / (1.0 - (a6 + a8));
    if (v41 >= v40)
    {
      v41 = 1.0 / (a20 * 2.0 + 1.0);
    }

    v42 = v41 / v39;
    v43 = v39 * v72;
    if (v42 >= v72)
    {
      v44 = v42;
    }

    else
    {
      v44 = v72;
    }

    v69 = a6;
    if (v42 >= v72)
    {
      v45 = v41;
    }

    else
    {
      v45 = v43;
    }

    v46 = *(MEMORY[0x277CBF398] + 16);
    v74.origin = *MEMORY[0x277CBF398];
    v74.size = v46;
    v75.origin = v74.origin;
    v75.size = v46;
    v70 = v38;
    v47 = v32 - v45 * v38;
    v76.origin = v74.origin;
    v76.size = v46;
    if (rectIsWithinRect(v32, v34, v36, v72, v47, v34, v45, v44) && v45 <= v40 && v44 <= v40)
    {
      v68 = -4.0 / v67;
      v51 = -8.0 / v64;
      v65 = 8.0 / v64 + 1.0;
      v66 = v51;
      v52 = ((0.200845666 / (a8 * a9) + -1.0) * 0.2 + 1.0) * 0.185;
      v63 = v52 / 0.18;
      v61 = a20 + 1.0;
      v62 = v52 * 0.04 / 0.82;
      do
      {
        if (v47 <= 1.0 - v45 * v61)
        {
          v53 = v47;
        }

        else
        {
          v53 = 1.0 - v45 * v61;
        }

        if (v34 <= 1.0 - v44 * v61)
        {
          v54 = v34;
        }

        else
        {
          v54 = 1.0 - v44 * v61;
        }

        v55 = iterativeBidirectionalFacesMaskSolver(v31, 2, a3, 2, &v74.origin.x, a20, v53, v54, v45, v44, v48, v49, v50, v32, v34, v36, v72, v69, a7, a8, a9, a12, a13, a14, a15, a16, a17, a18, a19, v68, v66, v62, v63);
        v45 = v65 * v55;
        v44 = v65 * v56;
        v47 = v32 - v65 * v55 * v70;
      }

      while (rectIsWithinRect(v32, v34, v36, v72, v47, v34, v65 * v55, v65 * v56) && v45 <= v40 && v44 <= v40);
    }

    x = v74.origin.x;
    if (CGRectIsEmpty(v74))
    {
      x = v75.origin.x;
      if (CGRectIsEmpty(v75))
      {
        x = v76.origin.x;
        CGRectIsEmpty(v76);
      }
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

double positionCandidateRectForSizeLeft(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a4 - a2 * a8;
  if (a1 == 2)
  {
    return result + -(a6 - a2 * (1.0 - a8)) * -0.5;
  }

  return result;
}

double iterativeBidirectionalFacesMaskSolver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, CGFloat a19, double a20, CGFloat a21, CGFloat a22, CGFloat a23, CGFloat a24, CGFloat a25, CGFloat a26, CGFloat a27, CGFloat a28, CGFloat a29, double a30, double a31, double a32, double a33)
{
  v42 = a1;
  if (rectPlusCushionInsideImage(a7, a8, a9, a10, a6))
  {
    v75 = 1.79769313e308;
    v76 = 1.79769313e308;
    v71 = 1.79769313e308;
    v72 = 1.79769313e308;
    v69 = 1.79769313e308;
    v70 = 1.79769313e308;
    v67 = a6;
    while (1)
    {
      if (!rectIsWithinRect(a14, a15, a16, a17, a7, a8, a9, a10))
      {
        goto LABEL_50;
      }

      if (rectPlusCushionInsideImage(a7, a8, a9, a10, a6))
      {
        break;
      }

LABEL_49:
      a8 = a8 + a31;
      if (!rectPlusCushionInsideImage(a7, a8, a9, a10, a6))
      {
        goto LABEL_50;
      }
    }

    v43 = (a8 - a15 + -a17 * 0.5) / a10;
    v73 = vabdd_f64(-0.5, v43);
    v74 = vabdd_f64(-0.333333333, v43);
    v44 = a7;
    v68 = a7;
    while (1)
    {
      if (!rectIsWithinRect(a14, a15, a16, a17, v44, a8, a9, a10))
      {
        goto LABEL_49;
      }

      v77.origin.x = v44;
      v77.origin.y = a8;
      v77.size.width = a9;
      v77.size.height = a10;
      if (CGRectIsNull(v77))
      {
        v45 = 1.79769313e308;
      }

      else
      {
        if (a2 == 2)
        {
          v46 = (a18 + a20 + 1.0) * 0.5;
        }

        else
        {
          v46 = a18 * 0.5;
        }

        v45 = vabdd_f64((v44 - a14 + -a16 * 0.5) / -a9, v46);
      }

      v78.origin.x = v44;
      v78.origin.y = a8;
      v78.size.width = a9;
      v78.size.height = a10;
      if (!CGRectIsNull(v78))
      {
        if (a3 == 2)
        {
          v47 = v73;
        }

        else
        {
          v47 = 0.0;
          if (a3 == 1)
          {
            v47 = v74;
          }
        }

        if (v45 < 0.02 && v47 < 0.15)
        {
          Coverage = findCoverage(a4, v42, v44, a8, a9, a10, a18, a19, a20, a21);
          if (v49 >= a33 * 0.142857143 && v49 < a33 && Coverage < a32 && Coverage >= a32 * 0.142857143)
          {
            v79.origin.x = v44;
            v79.origin.y = a8;
            v79.size.width = a9;
            v79.size.height = a10;
            v81.origin.x = a22;
            v81.origin.y = a23;
            v81.size.width = a24;
            v81.size.height = a25;
            v50 = v45 * 0.98;
            if (CGRectContainsRect(v79, v81))
            {
              if (v47 * 0.99 < v76 && v50 <= v75)
              {
                v52 = a5 + 5;
                v51 = a5 + 4;
                v53 = a5;
                v55 = a5 + 2;
                v54 = a5 + 1;
                v56 = a5 + 3;
                v57 = v69;
                v58 = v70;
                v59 = v71;
                v60 = v72;
                v61 = v45;
                v62 = v47;
                goto LABEL_40;
              }

              if (v45 * 0.99 >= v75)
              {
                goto LABEL_48;
              }

              v52 = a5 + 5;
              v51 = a5 + 4;
              v53 = a5;
              v55 = a5 + 2;
              v54 = a5 + 1;
              v65 = v47 * 0.98 > v76;
              v56 = a5 + 3;
              v57 = v69;
              v58 = v70;
              v59 = v71;
              v60 = v72;
              v61 = v45;
              v62 = v47;
            }

            else
            {
              v80.origin.x = v44;
              v80.origin.y = a8;
              v80.size.width = a9;
              v80.size.height = a10;
              v82.origin.x = a26;
              v82.origin.y = a27;
              v82.size.width = a28;
              v82.size.height = a29;
              v63 = CGRectContainsRect(v80, v82);
              v64 = v47 * 0.99;
              if (v63)
              {
                if (v64 < v72 && v50 <= v70)
                {
                  v52 = a5 + 11;
                  v51 = a5 + 10;
                  v54 = a5 + 7;
                  v53 = a5 + 6;
                  v56 = a5 + 9;
                  v55 = a5 + 8;
                  v57 = v69;
                  v59 = v71;
                  v58 = v45;
                  v60 = v47;
                  goto LABEL_39;
                }

                if (v45 * 0.99 >= v70)
                {
                  goto LABEL_48;
                }

                v52 = a5 + 11;
                v51 = a5 + 10;
                v54 = a5 + 7;
                v53 = a5 + 6;
                v59 = v71;
                v65 = v47 * 0.98 > v72;
                v56 = a5 + 9;
                v55 = a5 + 8;
                v57 = v69;
                v58 = v45;
                v60 = v47;
              }

              else
              {
                if (v64 < v71 && v50 <= v69)
                {
                  v52 = a5 + 17;
                  v51 = a5 + 16;
                  v54 = a5 + 13;
                  v53 = a5 + 12;
                  v56 = a5 + 15;
                  v55 = a5 + 14;
                  v57 = v45;
                  v59 = v47;
                  v58 = v70;
                  v60 = v72;
LABEL_39:
                  v61 = v75;
                  v62 = v76;
LABEL_40:
                  a7 = v68;
                  a6 = v67;
LABEL_47:
                  *v51 = v45;
                  *v52 = v47;
                  *v53 = v44;
                  v69 = v57;
                  v70 = v58;
                  *v54 = a8;
                  v71 = v59;
                  v72 = v60;
                  *v55 = a9;
                  v75 = v61;
                  v76 = v62;
                  *v56 = a10;
                  goto LABEL_14;
                }

                if (v45 * 0.99 >= v69)
                {
LABEL_48:
                  a7 = v68;
                  a6 = v67;
                  goto LABEL_14;
                }

                v52 = a5 + 17;
                v51 = a5 + 16;
                v54 = a5 + 13;
                v53 = a5 + 12;
                v58 = v70;
                v65 = v47 * 0.98 > v71;
                v56 = a5 + 15;
                v55 = a5 + 14;
                v57 = v45;
                v59 = v47;
                v60 = v72;
              }

              v61 = v75;
              v62 = v76;
            }

            a7 = v68;
            a6 = v67;
            if (!v65)
            {
              goto LABEL_47;
            }
          }
        }
      }

LABEL_14:
      v44 = v44 + a30;
      if (!rectPlusCushionInsideImage(v44, a8, a9, a10, a6))
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:

  return a9;
}

double cropTimeRightOfFacesWithMask(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, CGFloat a7, double a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22)
{
  v31 = a2;
  v32 = combineFaceRects(a1);
  v34 = v33;
  v36 = v35;
  v69 = v37;
  if (rectPlusCushionInsideImage(v32, v33, v37, v35, a20))
  {
    v62 = a5;
    v65 = a4;
    v38 = a21 / a22 / (a4 / a5);
    v39 = 1.0 / (a20 * 2.0 + 1.0);
    v40 = v69 * 1.0001 / (1.0 - a6);
    if (v40 >= v39)
    {
      v40 = 1.0 / (a20 * 2.0 + 1.0);
    }

    v41 = v40 / v38;
    v42 = v38 * v36;
    if (v41 >= v36)
    {
      v43 = v40;
    }

    else
    {
      v43 = v42;
    }

    v44 = *(MEMORY[0x277CBF398] + 16);
    v70.origin = *MEMORY[0x277CBF398];
    v70.size = v44;
    v71.origin = v70.origin;
    v71.size = v44;
    if (v41 >= v36)
    {
      v45 = v41;
    }

    else
    {
      v45 = v36;
    }

    v72.origin = v70.origin;
    v72.size = v44;
    if (rectIsWithinRect(v32, v34, v69, v36, v32, v34, v43, v45) && v43 <= v39 && v45 <= v39)
    {
      v66 = -4.0 / v65;
      v48 = -8.0 / v62;
      v63 = 8.0 / v62 + 1.0;
      v64 = v48;
      v49 = ((0.200845666 / (a8 * a9) + -1.0) * 0.2 + 1.0) * 0.185;
      v61 = v49 / 0.18;
      v59 = a20 + 1.0;
      v60 = v49 * 0.04 / 0.82;
      do
      {
        v50 = 1.0 - v43 * v59;
        if (v32 + v43 >= v50)
        {
          v51 = v32;
        }

        else
        {
          v51 = v50 - v43;
        }

        if (v34 <= 1.0 - v45 * v59)
        {
          v52 = v34;
        }

        else
        {
          v52 = 1.0 - v45 * v59;
        }

        v53 = iterativeBidirectionalFacesMaskSolver(v31, 1, a3, 3, &v70.origin.x, a20, v51, v52, v43, v45, v59, v46, v47, v32, v34, v69, v36, a6, a7, a8, a9, a12, a13, a14, a15, a16, a17, a18, a19, v66, v64, v60, v61);
        v43 = v63 * v53;
        v45 = v63 * v54;
      }

      while (rectIsWithinRect(v32, v34, v69, v36, v32, v34, v63 * v53, v63 * v54) && v43 <= v39 && v45 <= v39);
    }

    x = v70.origin.x;
    if (CGRectIsEmpty(v70))
    {
      x = v71.origin.x;
      if (CGRectIsEmpty(v71))
      {
        x = v72.origin.x;
        CGRectIsEmpty(v72);
      }
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

BOOL cropTimeLeftFacesNoMask(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, double a25, double a26, double a27)
{
  v28 = a25;
  v103[4] = *MEMORY[0x277D85DE8];
  v29 = combineFaceRects(a1);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = rectPlusCushionInsideImage(v29, v30, v32, v34, a25);
  if (result)
  {
    v92 = a4;
    v37 = a26 / a27 / (a3 / a4);
    v38 = a5 + a7;
    v39 = 1.0 - (a5 + a7);
    v40 = v33 * 1.0001 / v39;
    v99 = 1.0 / (a25 * 2.0 + 1.0);
    if (v40 >= v99)
    {
      v40 = 1.0 / (a25 * 2.0 + 1.0);
    }

    v41 = v40 / v37;
    v96 = a26 / a27 / (a3 / a4);
    v42 = v37 * v35;
    if (v41 < v35)
    {
      v41 = v35;
      v40 = v42;
    }

    v88 = v39;
    v89 = v40;
    v90 = v41;
    v94 = v38;
    v43 = positionCandidateRectForSizeLeft(2, v40, v41, v29, v31, v33, v35, v38);
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v91 = v43;
    v100 = v33;
    v101 = v29;
    v97 = v31;
    if (rectIsWithinRect(v29, v31, v33, v35, v43, v44, v46, v48) && rectIsWithinRect(v91, v45, v47, v49, a25, a25, v99, v99))
    {
      v86 = v47;
      v87 = v45;
      v85 = v35;
      v102[0] = a17;
      v102[1] = a18;
      v102[2] = a19;
      v102[3] = a20;
      v103[0] = a21;
      v103[1] = a22;
      v93 = 8.0 / v92 + 1.0;
      v103[2] = a23;
      v103[3] = a24;
      v50 = v102;
      v51 = 1;
      while (1)
      {
        v52 = v51;
        v53 = *v50;
        v54 = v50[1];
        v56 = v50[2];
        v55 = v50[3];
        v104.origin.x = *v50;
        v104.origin.y = v54;
        v104.size.width = v56;
        v104.size.height = v55;
        if (!CGRectIsNull(v104))
        {
          v105.origin.x = v91;
          v105.size.width = v86;
          v105.origin.y = v87;
          v105.size.height = v49;
          v108.origin.x = v53;
          v108.origin.y = v54;
          v108.size.width = v56;
          v108.size.height = v55;
          result = CGRectContainsRect(v105, v108);
          if (result)
          {
            return result;
          }

          v57 = v89;
          v58 = v90;
          v59 = v89 < v56 || v90 < v55;
          v60 = v101;
          if (v59)
          {
            v57 = v89;
            v58 = v90;
            if (v89 < v56)
            {
              v57 = v56;
            }

            if (v90 < v55)
            {
              v58 = v55;
            }

            if (v57 / v58 >= v96)
            {
              v58 = v57 / v96;
            }

            else
            {
              v57 = v96 * v58;
            }
          }

          v61 = v100;
          v62 = positionCandidateRectForSizeLeft(2, v57, v58, v101, v97, v100, v85, v94);
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v106.origin.x = a25;
          v106.origin.y = a25;
          v106.size.width = 1.0 / (a25 * 2.0 + 1.0);
          v106.size.height = v106.size.width;
          v109.origin.x = v62;
          v109.origin.y = v64;
          v109.size.width = v66;
          v109.size.height = v68;
          if (CGRectContainsRect(v106, v109))
          {
            break;
          }
        }

LABEL_27:
        v51 = 0;
        v50 = v103;
        if ((v52 & 1) == 0)
        {
          v33 = v100;
          v29 = v101;
          v31 = v97;
          v35 = v85;
          v28 = a25;
          goto LABEL_29;
        }
      }

      while (1)
      {
        if (rectIsWithinRect(v60, v97, v61, v85, v62, v64, v66, v68))
        {
          result = rectIsWithinRect(v62, v64, v66, v68, a25, a25, v99, v99);
          if (result)
          {
            break;
          }
        }

        v61 = v100;
        v60 = v101;
        v62 = positionCandidateRectForSizeLeft(2, v93 * v66, v93 * v68, v101, v97, v100, v85, v94);
        v64 = v69;
        v66 = v70;
        v68 = v71;
        v107.origin.x = a25;
        v107.origin.y = a25;
        v107.size.width = 1.0 / (a25 * 2.0 + 1.0);
        v107.size.height = v107.size.width;
        v110.origin.x = v62;
        v110.origin.y = v64;
        v110.size.width = v66;
        v110.size.height = v68;
        if (!CGRectContainsRect(v107, v110))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_29:
      v95 = v29 + v33 * 0.5;
      v72 = v35;
      v73 = v31 + v35 * 0.5;
      v74 = &cropTimeRightFacesNoMask_thirdsChoices;
      v75 = &cropTimeRightFacesNoMask_centerChoices;
      v76 = 7;
      do
      {
        if (a2 == 1)
        {
          v77 = v74;
        }

        else
        {
          v77 = v75;
        }

        v78 = maxRectInImageWithAnchorAtPosition(v96, v28, v94 + v88 * 0.5, *v77, v95, v73);
        v80 = v79;
        v82 = v81;
        v84 = v83;
        result = rectIsWithinRect(v101, v97, v100, v72, v78, v79, v81, v83);
        if (result)
        {
          result = rectIsWithinRect(v78, v80, v82, v84, v28, v28, v99, v99);
          if (result)
          {
            break;
          }
        }

        ++v74;
        ++v75;
        --v76;
      }

      while (v76);
    }
  }

  return result;
}

BOOL cropTimeRightFacesNoMask(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, double a25, double a26, double a27)
{
  v89[4] = *MEMORY[0x277D85DE8];
  v26 = combineFaceRects(a1);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = rectPlusCushionInsideImage(v26, v27, v29, v31, a25);
  if (result)
  {
    v34 = v26;
    v77 = a4;
    v35 = a26 / a27 / (a3 / a4);
    v36 = v30 * 1.0001 / (1.0 - a5);
    v83 = v35;
    rect1 = 1.0 / (a25 * 2.0 + 1.0);
    if (v36 >= rect1)
    {
      v36 = 1.0 / (a25 * 2.0 + 1.0);
    }

    v37 = v36 / v35;
    v38 = v35 * v32;
    if (v37 >= v32)
    {
      v39 = v37;
    }

    else
    {
      v39 = v32;
    }

    if (v37 >= v32)
    {
      v40 = v36;
    }

    else
    {
      v40 = v38;
    }

    v41 = a5;
    if (a2 == 2)
    {
      v42 = v28;
      v43 = v28 + v39 * -0.5 + v32 * 0.5;
    }

    else
    {
      v42 = v28;
      v43 = v28;
      if (a2 == 1)
      {
        v43 = v28 + v39 * -0.333333333 + v32 * 0.5;
      }
    }

    v44 = v34;
    v45 = v34 + -(v30 - v40 * v41) * -0.5;
    v79 = v43;
    v80 = v41;
    v46 = v39;
    v85 = v30;
    v86 = v34;
    v87 = v32;
    if (rectIsWithinRect(v34, v42, v30, v32, v45, v43, v40, v39) && rectIsWithinRect(v45, v79, v40, v46, a25, a25, rect1, rect1))
    {
      v75 = v40;
      v76 = v46;
      v81 = v42;
      v47 = -v30;
      v88[0] = a17;
      v88[1] = a18;
      v88[2] = a19;
      v88[3] = a20;
      v89[0] = a21;
      v89[1] = a22;
      v89[2] = a23;
      v89[3] = a24;
      v48 = v88;
      v49 = 1;
      v78 = 8.0 / v77 + 1.0;
      do
      {
        v50 = v49;
        v51 = *v48;
        v52 = v48[1];
        v54 = v48[2];
        v53 = v48[3];
        v90.origin.x = *v48;
        v90.origin.y = v52;
        v90.size.width = v54;
        v90.size.height = v53;
        if (!CGRectIsNull(v90))
        {
          v91.origin.x = v45;
          v91.origin.y = v79;
          v91.size.width = v75;
          v91.size.height = v76;
          v94.origin.x = v51;
          v94.origin.y = v52;
          v94.size.width = v54;
          v94.size.height = v53;
          result = CGRectContainsRect(v91, v94);
          if (result)
          {
            return result;
          }

          v55 = v75 < v54 || v76 < v53;
          v56 = v76;
          v57 = v75;
          if (v55)
          {
            if (v75 >= v54)
            {
              v57 = v75;
            }

            else
            {
              v57 = v54;
            }

            if (v76 >= v53)
            {
              v56 = v76;
            }

            else
            {
              v56 = v53;
            }

            if (v57 / v56 >= v83)
            {
              v56 = v57 / v83;
            }

            else
            {
              v57 = v83 * v56;
            }
          }

          if (a2 == 2)
          {
            v58 = v81 + v56 * -0.5 + v87 * 0.5;
          }

          else
          {
            v58 = v81;
            if (a2 == 1)
            {
              v58 = v81 + v56 * -0.333333333 + v87 * 0.5;
            }
          }

          v59 = v86;
          v60 = v86 + (v47 + v57 * v80) * -0.5;
          v92.origin.x = a25;
          v92.origin.y = a25;
          v92.size.width = 1.0 / (a25 * 2.0 + 1.0);
          v92.size.height = v92.size.width;
          v95.origin.x = v60;
          v95.origin.y = v58;
          v95.size.width = v57;
          v95.size.height = v56;
          if (CGRectContainsRect(v92, v95))
          {
            while (1)
            {
              if (rectIsWithinRect(v59, v81, v85, v87, v60, v58, v57, v56))
              {
                result = rectIsWithinRect(v60, v58, v57, v56, a25, a25, rect1, rect1);
                if (result)
                {
                  return result;
                }
              }

              v56 = v78 * v56;
              if (a2 == 2)
              {
                break;
              }

              v58 = v81;
              if (a2 == 1)
              {
                v61 = -0.333333333;
LABEL_44:
                v58 = v81 + v56 * v61 + v87 * 0.5;
              }

              v57 = v78 * v57;
              v59 = v86;
              v60 = v86 + (v47 + v57 * v80) * -0.5;
              v93.origin.x = a25;
              v93.origin.y = a25;
              v93.size.width = 1.0 / (a25 * 2.0 + 1.0);
              v93.size.height = v93.size.width;
              v96.origin.x = v60;
              v96.origin.y = v58;
              v96.size.width = v57;
              v96.size.height = v56;
              if (!CGRectContainsRect(v93, v96))
              {
                goto LABEL_46;
              }
            }

            v61 = -0.5;
            goto LABEL_44;
          }
        }

LABEL_46:
        v49 = 0;
        v48 = v89;
      }

      while ((v50 & 1) != 0);
      v30 = v85;
      v44 = v86;
      v42 = v81;
      v32 = v87;
    }

    v82 = v44 + v30 * 0.5;
    v62 = v42;
    v63 = v42 + v32 * 0.5;
    v64 = &cropTimeRightFacesNoMask_thirdsChoices;
    v65 = &cropTimeRightFacesNoMask_centerChoices;
    v66 = 7;
    do
    {
      if (a2 == 1)
      {
        v67 = v64;
      }

      else
      {
        v67 = v65;
      }

      v68 = maxRectInImageWithAnchorAtPosition(v83, a25, v80 * 0.5, *v67, v82, v63);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      result = rectIsWithinRect(v86, v62, v85, v87, v68, v69, v71, v73);
      if (result)
      {
        result = rectIsWithinRect(v68, v70, v72, v74, a25, a25, rect1, rect1);
        if (result)
        {
          break;
        }
      }

      ++v64;
      ++v65;
      --v66;
    }

    while (v66);
  }

  return result;
}

double findCoverage(uint64_t a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = a2;
  v20 = renormalizeRect(a7, a8, a9, a10, a3, a4, a5, a6);
  v24 = v20;
  v25 = v21;
  if (a1 > 1)
  {
    v27 = v22 * 0.82;
    if (a1 == 2)
    {
      v20 = v20 + v22 * 0.82;
    }

    else
    {
      v24 = v20 + v22 * 0.18;
    }

    v26 = v23;
  }

  else
  {
    v26 = v23 * 0.82;
    if (a1)
    {
      v25 = v21 + v23 * 0.18;
    }

    else
    {
      v21 = v21 + v23 * 0.82;
    }

    v27 = v22;
  }

  [v19 coverageOfTimeLabel:{v20, v21}];
  [v19 coverageOfTimeLabel:{v24, v25, v27, v26}];
  v29 = v28;

  return v29;
}

PFLCCurationScore *PFLCCurationScoreForAsset(void *a1, uint64_t a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_alloc_init(MEMORY[0x277CD9880]);
  [v3 setIncludedDetectionTypes:&unk_284052860];
  v110 = v3;
  v4 = [MEMORY[0x277CD9868] fetchFacesInAsset:v2 options:v3];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v117 objects:&v121 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v118;
    obj = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v118 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v117 + 1) + 8 * i);
        [v11 size];
        v13 = v12;
        v14 = [v2 pixelWidth];
        v15 = [v2 pixelHeight];
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = v13 * v16;
        [v11 centerX];
        v19 = fmax(v17 * -0.5 + v18 * [v2 pixelWidth], 0.0);
        [v11 centerY];
        v21 = fmax(v17 * -0.5 + v20 * [v2 pixelHeight], 0.0);
        v22 = [v2 pixelWidth];
        if (v17 >= v22 - v19)
        {
          v23 = v22 - v19;
        }

        else
        {
          v23 = v17;
        }

        v24 = [v2 pixelHeight];
        if (v17 >= v24 - v21)
        {
          v17 = v24 - v21;
        }

        CGAffineTransformMakeScale(&v122, (1.0 / [v2 pixelWidth]), (1.0 / objc_msgSend(v2, "pixelHeight")));
        v125.origin.x = v19;
        v125.origin.y = v21;
        v125.size.width = v23;
        v125.size.height = v17;
        v126 = CGRectApplyAffineTransform(v125, &v122);
        v122.b = 0.0;
        v122.c = 0.0;
        *&v122.d = xmmword_22D12D780;
        v122.a = 1.0;
        v122.ty = 1.0;
        v127 = CGRectApplyAffineTransform(v126, &v122);
        x = v127.origin.x;
        y = v127.origin.y;
        width = v127.size.width;
        height = v127.size.height;
        v29 = pflc_layout_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = _rectAsString(x, y, width, height);
          v31 = [v11 detectionType];
          LODWORD(v122.a) = 136315650;
          *(&v122.a + 4) = "NSArray<NSValue *> * _Nullable faceRectsForAsset(PHAsset *__strong)";
          WORD2(v122.b) = 2112;
          *(&v122.b + 6) = v30;
          HIWORD(v122.c) = 2048;
          *&v122.d = v31;
          _os_log_impl(&dword_22D126000, v29, OS_LOG_TYPE_DEFAULT, "%s: face at %@, detectionType == %ld", &v122, 0x20u);
        }

        v32 = [MEMORY[0x277CCAE60] valueWithRect:{x, y, width, height}];
        [v5 addObject:v32];
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v117 objects:&v121 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v33 = pflc_layout_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v2 localIdentifier];
      LODWORD(v122.a) = 136315394;
      *(&v122.a + 4) = "NSArray<NSValue *> * _Nullable faceRectsForAsset(PHAsset *__strong)";
      WORD2(v122.b) = 2112;
      *(&v122.b + 6) = v34;
      _os_log_impl(&dword_22D126000, v33, OS_LOG_TYPE_DEFAULT, "%s: No PHFace data in asset %@", &v122, 0x16u);
    }
  }

  v35 = [v2 pixelWidth];
  v36 = [v2 pixelHeight];
  [v2 preferredCropRect];
  v108 = v38;
  v109 = v37;
  v106 = v40;
  v107 = v39;
  [v2 acceptableCropRect];
  v104 = v42;
  v105 = v41;
  v102 = v44;
  v103 = v43;
  v45 = [MEMORY[0x277CBEB38] dictionary];
  v99 = 0;
  if (v5)
  {
    v46 = a2 == 0;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    v47 = 1;
  }

  else
  {
    v47 = a2;
  }

  v48 = *MEMORY[0x277D3B3B8] * 0.5;
  v100 = *(MEMORY[0x277D3B3C0] + 8);
  v101 = *MEMORY[0x277D3B3C0];
  v49 = *MEMORY[0x277D3B3C0] / v100;
  v50 = v35 * v48 + 0.0;
  v51 = v36 * v48 + 0.0;
  v52 = v48 * -2.0 + 1.0;
  v53 = v52 * v35;
  v54 = v52 * v36;
  v55 = v49 * v54;
  if (v49 * v54 >= v53)
  {
    v55 = v53;
  }

  v98 = v55;
  v56 = v50 + fmax((v53 - v55) * 0.5, 0.0);
  v57 = v53 / v49;
  if (v57 >= v54)
  {
    v57 = v54;
  }

  v96 = v57;
  v97 = v56;
  v111 = v36;
  v113 = v35;
  v94 = 1.0 / v35;
  v95 = v51 + fmax((v54 - v57) * 0.5, 0.0);
  v93 = 1.0 / v36;
  v114 = -1.0;
  for (j = 1; j != 9; ++j)
  {
    PFCRectForTimePosition();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v71 = PFLCCalculateLayout(0, 1, v47, v5, 0, j, v113, v111, v109, v108, v107, v106, v67, v68, v69, v70, v105, v104, v103, v102, v101, v100, v59, v61, v63, v65);
    [v71 visibleRect];
    obja = v64;
    if (CGRectIsEmpty(v128))
    {
      CGAffineTransformMakeScale(&v121, v94, v93);
      v129.origin.x = v97;
      v129.size.width = v98;
      v129.origin.y = v95;
      v129.size.height = v96;
      v130 = CGRectApplyAffineTransform(v129, &v121);
      v72 = v130.origin.x;
      v73 = v130.origin.y;
      v74 = v130.size.width;
      v75 = v130.size.height;
      v76 = pflc_layout_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = _rectAsString(v72, v73, v74, v75);
        LODWORD(v121.a) = 138412290;
        *(&v121.a + 4) = v77;
        _os_log_impl(&dword_22D126000, v76, OS_LOG_TYPE_DEFAULT, "PFLCCurationScoreForAsset: Backup crop: %@", &v121, 0xCu);
      }

      v78 = v66;

      v79 = [[PFLCLayout alloc] initWithCropScore:0 layoutScore:0.0 foregroundCoverage:0.0 visibleRect:0.0 usesMask:v72, v73, v74, v75];
      v71 = v79;
    }

    else
    {
      v78 = v66;
    }

    v80 = [PFLCCurationPositionScore alloc];
    [v71 cropScore];
    v82 = v81;
    [v71 visibleRect];
    v121.a = 1.0;
    v121.b = 0.0;
    v121.c = 0.0;
    *&v121.d = xmmword_22D12D780;
    v121.ty = 1.0;
    v132 = CGRectApplyAffineTransform(v131, &v121);
    v83 = v132.origin.x;
    v84 = v132.origin.y;
    v85 = v132.size.width;
    v86 = v132.size.height;
    v121.a = 1.0;
    v121.b = 0.0;
    v121.c = 0.0;
    *&v121.d = xmmword_22D12D780;
    v121.ty = 1.0;
    v132.origin.x = v60;
    v132.origin.y = v62;
    v132.size.width = obja;
    v132.size.height = v78;
    v133 = CGRectApplyAffineTransform(v132, &v121);
    v87 = [(PFLCCurationPositionScore *)v80 initWithCropScore:v47 cropRect:v82 timeLabelRect:v83 classification:v84, v85, v86, *&v133.origin.x, *&v133.origin.y, *&v133.size.width, *&v133.size.height];
    v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:j];
    [v45 setObject:v87 forKeyedSubscript:v88];

    [v71 cropScore];
    if (v89 > v114)
    {
      [v71 cropScore];
      v114 = v90;
      v99 = j;
    }
  }

  v91 = [[PFLCCurationScore alloc] initWithPositionScores:v45 preferredPosition:v99];

  return v91;
}

PFLCLayout *PFLCCalculateLayout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, uint64_t a13, uint64_t a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, double a21, double a22, double a23, CGFloat a24, double a25, CGFloat a26)
{
  v145 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a5;
  v32 = *MEMORY[0x277CBF3A0];
  v33 = *(MEMORY[0x277CBF3A0] + 8);
  v34 = *(MEMORY[0x277CBF3A0] + 16);
  v35 = *(MEMORY[0x277CBF3A0] + 24);
  v125 = a7;
  v118 = a21 * 0.8;
  v131 = v34;
  v133 = v35;
  rect1 = v33;
  if (!a1)
  {
    v128 = 0.0;
    v49 = 0;
    v50 = 0.0;
    v44 = *MEMORY[0x277CBF3A0];
    v119 = 0.0;
    v43 = *(MEMORY[0x277CBF3A0] + 16);
    v41 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_32;
  }

  v36 = pflc_layout_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v140 = a3;
    _os_log_impl(&dword_22D126000, v36, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): trying with a mask", buf, 0xCu);
  }

  v37 = [[PFLCCoverageValidator alloc] initWithMaskImage:a1 orientation:a2];
  v40 = v37;
  if (a3 > 2)
  {
    v128 = 0.0;
    if (a3 == 3)
    {
      v45 = layoutNatureMatte(v37, a6, a7, a8, a9, a10, a11, a12, v38, v39, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
      goto LABEL_14;
    }

    v41 = v35;
    v51 = a7;
    v43 = v34;
    v44 = v32;
    if (a3 == 4)
    {
      v45 = layoutCityScapeMatte(v37, a6, v51, a8, a9, a10, a11, a12, v38, v39, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
      goto LABEL_14;
    }
  }

  else
  {
    v128 = 0.0;
    if (a3 == 1)
    {
      v45 = layoutPeopleMatte(v37, v30, a6, a7, a8, a9, a10, a11, a12, v38, v39, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
      goto LABEL_14;
    }

    v41 = v35;
    v42 = a7;
    v43 = v34;
    v44 = v32;
    if (a3 == 2)
    {
      v45 = layoutPetsMatte(v37, v30, v42, a8, a9, a10, a11, a12, v31, a6, v38, v39, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
LABEL_14:
      v44 = v45;
      v33 = v46;
      v43 = v47;
      v41 = v48;
    }
  }

  v147.origin.x = v44;
  v147.origin.y = v33;
  v147.size.width = v43;
  v147.size.height = v41;
  if (CGRectIsEmpty(v147) || !rectIsWithinRect(v44, v33, v43, v41, 0.0, 0.0, 1.0, 1.0))
  {

    v49 = 0;
    v50 = 0.0;
    v119 = 0.0;
    v44 = v32;
    v33 = rect1;
    v43 = v34;
    v41 = v133;
  }

  else
  {
    [(PFLCCoverageValidator *)v40 coverageOfTimeLabel:renormalizeRect(a23, a24, a25, a26, v44, v33, v43, v41)];
    v53 = v52;
    v54 = pflc_layout_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = _rectAsString(v44, v33, v43, v41);
      *buf = 134218498;
      v140 = a3;
      v141 = 2112;
      v142 = v55;
      v143 = 2048;
      v144 = v53;
      _os_log_impl(&dword_22D126000, v54, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): found rect %@, coverage %.3f", buf, 0x20u);
    }

    v119 = v53;

    v56 = 0.0;
    if (v43 > 0.0)
    {
      v57 = v43;
    }

    else
    {
      v57 = 0.0;
    }

    if (v41 > 0.0)
    {
      v58 = v41;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = (v58 + v57) * 0.1 * 0.5;
    if (v59 > 0.1)
    {
      v59 = 0.1;
    }

    v60 = 1.0 - v59;
    if (v125 * v43 < v118)
    {
      v56 = 1.0 - v125 * v43 / v118;
    }

    v61 = v60 + v56 * -0.3;

    v49 = 1;
    v128 = v61;
    v62 = v61 == 0.0;
    v50 = 1.0;
    if (!v62)
    {
      goto LABEL_81;
    }
  }

LABEL_32:
  v63 = pflc_layout_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v140 = a3;
    _os_log_impl(&dword_22D126000, v63, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): trying with no mask", buf, 0xCu);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v74 = layoutNatureNoMatte(a6, v125, a8, a9, a10, a11, a12, v70, v71, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
      goto LABEL_46;
    }

    if (a3 == 4)
    {
      v74 = layoutCityScapeNoMatte(a6, v125, a8, a9, a10, a11, a12, v70, v71, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
      goto LABEL_46;
    }

    v72 = v41;
    v34 = v43;
    v73 = v33;
    v74 = v44;
    if (a3 == 5)
    {
      v34 = v131;
      v72 = v133;
      v73 = rect1;
      v74 = v32;
    }
  }

  else
  {
    v72 = v133;
    v73 = rect1;
    v74 = v32;
    if (a3)
    {
      if (a3 == 1)
      {
        v74 = layoutPeopleNoMatte(v30, a6, v125, a8, a9, a10, a11, a12, v70, v71, v64, v65, v66, v67, v68, v69, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        goto LABEL_46;
      }

      v72 = v41;
      v34 = v43;
      v73 = v33;
      v74 = v44;
      if (a3 == 2)
      {
        v74 = layoutPetsNoMatte(v30, v125, a8, a9, a10, a11, a12, v31, a6, v70, v71, *&a17, *&a18, *&a19, *&a20, a21, a22, a23, a24, a25, a26);
LABEL_46:
        v34 = v75;
        v72 = v76;
      }
    }
  }

  v77 = v74;
  v78 = v73;
  v79 = v34;
  v80 = v72;
  if (CGRectIsEmpty(*&v74) || !rectIsWithinRect(v77, v78, v34, v72, 0.0, 0.0, 1.0, 1.0))
  {
    v113 = pflc_layout_log();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v140 = a3;
      _os_log_impl(&dword_22D126000, v113, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): no rect found", buf, 0xCu);
    }

    v44 = v32;
    v33 = rect1;
    v43 = v131;
    v41 = v133;
  }

  else
  {
    v132 = v77;
    v134 = v78;
    v81 = pflc_layout_log();
    v82 = v72;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v83 = _rectAsString(v77, v78, v34, v72);
      *buf = 134218242;
      v140 = a3;
      v141 = 2112;
      v142 = v83;
      _os_log_impl(&dword_22D126000, v81, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): found rect %@", buf, 0x16u);
    }

    v84 = 0.0;
    rect1a = v34;
    if (v34 > 0.0)
    {
      v85 = v34;
    }

    else
    {
      v85 = 0.0;
    }

    if (v72 > 0.0)
    {
      v84 = v72;
    }

    v86 = (v84 + v85) * 0.1 * 0.5;
    if (v86 > 0.1)
    {
      v86 = 0.1;
    }

    v50 = 0.9;
    v126 = 0.9 - v86;
    v87 = v30;
    v88 = [v87 count];
    v89 = 0.0;
    v90 = a21 * 0.8;
    v91 = v125;
    if (v88)
    {
      v92 = v88;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v93 = v87;
      v94 = [v93 countByEnumeratingWithState:&v135 objects:buf count:16];
      if (v94)
      {
        v95 = v94;
        v96 = *v136;
        v127 = 0.0;
        v97 = v34;
        do
        {
          for (i = 0; i != v95; ++i)
          {
            if (*v136 != v96)
            {
              objc_enumerationMutation(v93);
            }

            [*(*(&v135 + 1) + 8 * i) rectValue];
            v100 = v99;
            v102 = v101;
            v104 = v103;
            v106 = v105;
            v148.origin.x = v132;
            v148.origin.y = v134;
            v148.size.width = v97;
            v148.size.height = v82;
            v150.origin.x = v100;
            v150.origin.y = v102;
            v150.size.width = v104;
            v150.size.height = v106;
            if (!CGRectContainsRect(v148, v150))
            {
              v107 = v82;
              v108 = 1;
              while (1)
              {
                v109 = vcvtd_n_f64_u32(v108, 2uLL);
                v151.origin.x = expandRect(v100, v102, v104, v106, v109 * -0.05, v109 * -0.2, v109 * -0.1, v109 * -0.2);
                v151.origin.y = v110;
                v151.size.width = v111;
                v151.size.height = v112;
                v149.origin.x = v132;
                v149.origin.y = v134;
                v149.size.width = rect1a;
                v149.size.height = v107;
                if (CGRectContainsRect(v149, v151))
                {
                  break;
                }

                if (++v108 == 5)
                {
                  v109 = 1.25;
                  break;
                }
              }

              v127 = v127 + v109;
              v82 = v107;
              v97 = rect1a;
            }
          }

          v95 = [v93 countByEnumeratingWithState:&v135 objects:buf count:16];
        }

        while (v95);
      }

      else
      {
        v127 = 0.0;
      }

      v89 = v127 / v92;
      v91 = v125;
      v90 = a21 * 0.8;
      v50 = 0.9;
    }

    v114 = v126 + v89 * -0.3;
    v43 = rect1a;
    v115 = 1.0 - v91 * rect1a / v90;
    if (v91 * rect1a >= v90)
    {
      v115 = 0.0;
    }

    v128 = v114 + v115 * -0.3;
    v44 = v132;
    v33 = v134;
    v41 = v82;
  }

LABEL_81:
  v116 = [[PFLCLayout alloc] initWithCropScore:v49 layoutScore:v128 foregroundCoverage:v50 visibleRect:v119 usesMask:v44, v33, v43, v41];

  return v116;
}

double layoutNatureMatte(void *a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, CGFloat a18, double a19, CGFloat a20)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v25 = a1;
  v26 = *MEMORY[0x277CBF3A0];
  v27 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v49[0] = a11 + a13 * 0.333333333;
      v49[1] = a12;
      v49[2] = a13 * 0.666666667;
      v49[3] = a14;
      v33 = v27;
      v34 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v52 = v34;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];

      v32 = cropTimeLeftOfFacesWithMask(v30, v25, 2, a3, a4, a17, a18, a19, a20, v35, v36, a5, a6, a7, a8, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v33, a15, a16);
      goto LABEL_11;
    }

    if (a2 == 6)
    {
      *v48 = a11;
      *&v48[1] = a12;
      *&v48[2] = a13 * 0.666666667;
      *&v48[3] = a14;
      v37 = v27;
      v38 = [MEMORY[0x277CCAE60] valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v51 = v38;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];

      v32 = cropTimeRightOfFacesWithMask(v30, v25, 2, a3, a4, a17, a18, a19, a20, v39, v40, a5, a6, a7, a8, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v37, a15, a16);
      goto LABEL_11;
    }

    if (a2 != 7)
    {
      goto LABEL_12;
    }

LABEL_8:
    *v50 = a11;
    *&v50[1] = a12 + a14 * 0.5;
    *&v50[2] = a13;
    *&v50[3] = a14 * 0.5;
    v28 = v27;
    v29 = [MEMORY[0x277CCAE60] valueWithBytes:v50 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v53[0] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];

    v32 = cropTimeAboveFacesWithMask(v30, v25, 3, a3, a4, a17, a18, a19, a20, v28, v31, a15, a16);
LABEL_11:
    v26 = v32;

    goto LABEL_12;
  }

  if (a2 == 1 || a2 == 3)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v26;
}

double layoutNatureNoMatte(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v25 = *MEMORY[0x277CBF3A0];
  v26 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 != 3)
      {
LABEL_14:
        *v62 = a10;
        *&v62[1] = a11;
        *&v62[2] = a12;
        *&v62[3] = a13;
        v43 = [MEMORY[0x277CCAE60] valueWithBytes:v62 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v66 = v43;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];

        v40 = cropTimeBelowFacesNoMask(v31, a2, a3, a16, a17, a18, a19, v26, v44, a14, a15);
        goto LABEL_16;
      }
    }

    else if (a1 != 1)
    {
      if (a1 != 2)
      {
        return v25;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = a10;
    *&v63[1] = a11;
    *&v63[2] = a12;
    *&v63[3] = a13;
    v41 = [MEMORY[0x277CCAE60] valueWithBytes:v63 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v67[0] = v41;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];

    v40 = cropTimeAboveFacesNoMask(v31, a2, a3, a16, a17, a18, a19, v26, v42, a14, a15);
LABEL_16:
    v25 = v40;

    return v25;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v61[0] = a10 + a12 * 0.333333333;
      v61[1] = a11;
      v61[2] = a12 * 0.666666667;
      v61[3] = a13;
      v48 = [MEMORY[0x277CCAE60] valueWithBytes:v61 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v65 = v48;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];

      cropTimeLeftFacesNoMask(v31, 2, a2, a3, a16, a17, a18, a19, v55, v56, v49, v50, v51, v52, v53, v54, *&a4, *&a5, *&a6, *&a7, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v26, a14, a15);
    }

    else
    {
      *v60 = a10;
      *&v60[1] = a11;
      *&v60[2] = a12 * 0.666666667;
      *&v60[3] = a13;
      v30 = [MEMORY[0x277CCAE60] valueWithBytes:v60 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v64 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];

      cropTimeRightFacesNoMask(v31, 2, a2, a3, a16, a17, a18, a19, v38, v39, v32, v33, v34, v35, v36, v37, *&a4, *&a5, *&a6, *&a7, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v26, a14, a15);
    }

    goto LABEL_16;
  }

  if (a1 == 8)
  {
    goto LABEL_14;
  }

  if (a1 == 7)
  {
    goto LABEL_13;
  }

  return v25;
}

double layoutPeopleMatte(void *a1, void *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, double a16, double a17, double a18, CGFloat a19, double a20, CGFloat a21)
{
  v30 = a1;
  v31 = a2;
  v32 = *MEMORY[0x277CBF3A0];
  if ([v31 count])
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v37 = *MEMORY[0x277D3B3B8] * 0.5;
        v34 = expandRects(v31, 0.01, 0.01, 0.05, 0.01);
        v36 = cropTimeLeftOfFacesWithMask(v34, v30, 1, a4, a5, a18, a19, a20, a21, v38, v39, a6, a7, a8, a9, a12, a13, a14, a15, v37, a16, a17);
        goto LABEL_12;
      }

      if (a3 == 6)
      {
        v40 = *MEMORY[0x277D3B3B8] * 0.5;
        v34 = expandRects(v31, 0.01, 0.01, 0.05, 0.01);
        v36 = cropTimeRightOfFacesWithMask(v34, v30, 1, a4, a5, a18, a19, a20, a21, v41, v42, a6, a7, a8, a9, a12, a13, a14, a15, v40, a16, a17);
        goto LABEL_12;
      }

      if (a3 != 7)
      {
        goto LABEL_13;
      }

LABEL_9:
      v33 = *MEMORY[0x277D3B3B8] * 0.5;
      v34 = expandRects(v31, 0.0, 0.01, 0.02, 0.01);
      v36 = cropTimeAboveFacesWithMask(v34, v30, 1, a4, a5, a18, a19, a20, a21, v33, v35, a16, a17);
LABEL_12:
      v32 = v36;

      goto LABEL_13;
    }

    if (a3 == 1 || a3 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_13:

  return v32;
}

double layoutPeopleNoMatte(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, double a21, double a22, double a23, double a24, double a25, double a26)
{
  v29 = a1;
  x = *MEMORY[0x277CBF3A0];
  if ([v29 count])
  {
    v97 = *MEMORY[0x277D3B3B8] * 0.5;
    if (a2 <= 4)
    {
      if (a2 > 2)
      {
        if (a2 != 3)
        {
LABEL_29:
          v31 = expandRects(v29, 0.01, 0.01, 0.0, 0.01);
          v107.origin.x = cropTimeBelowFacesNoMask(v31, a3, a4, a23, a24, a25, a26, v97, v63, a21, a22);
          x = v107.origin.x;
          if (CGRectIsNull(v107))
          {
            v64 = 1;
            do
            {
              v65 = v31;
              v66 = vcvtd_n_f64_u32(v64, 2uLL);
              v31 = expandRects(v29, v66 * -0.05, v66 * -0.2, v66 * -0.1, v66 * -0.2);

              v108.origin.x = cropTimeBelowFacesNoMask(v31, a3, a4, a23, a24, a25, a26, v97, v67, a21, a22);
              x = v108.origin.x;
            }

            while (CGRectIsNull(v108) && v64++ < 4);
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      else if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_29;
      }

LABEL_21:
      v31 = expandRects(v29, 0.0, 0.01, 0.02, 0.01);
      v105.origin.x = cropTimeAboveFacesNoMask(v31, a3, a4, a23, a24, a25, a26, v97, v57, a21, a22);
      x = v105.origin.x;
      if (CGRectIsNull(v105))
      {
        v58 = 1;
        do
        {
          v59 = v31;
          v60 = vcvtd_n_f64_u32(v58, 2uLL);
          v31 = expandRects(v29, v60 * -0.05, v60 * -0.2, v60 * -0.1, v60 * -0.2);

          v106.origin.x = cropTimeAboveFacesNoMask(v31, a3, a4, a23, a24, a25, a26, v97, v61, a21, a22);
          x = v106.origin.x;
        }

        while (CGRectIsNull(v106) && v58++ < 4);
      }

      goto LABEL_44;
    }

    if (a2 <= 6)
    {
      v98 = *&a5;
      if (a2 == 5)
      {
        v31 = expandRects(v29, 0.01, 0.01, 0.05, 0.01);
        v69 = a4;
        cropTimeLeftFacesNoMask(v31, 1, a3, a4, a23, a24, a25, a26, v76, v77, v70, v71, v72, v73, v74, v75, v98, *&a6, *&a7, *&a8, a17, a18, a19, a20, v97, a21, a22);
        x = v109.origin.x;
        if (CGRectIsNull(v109))
        {
          v102 = a3;
          v79 = *MEMORY[0x277CBF398];
          v78 = *(MEMORY[0x277CBF398] + 8);
          v96 = v69;
          v80 = *(MEMORY[0x277CBF398] + 16);
          v81 = *(MEMORY[0x277CBF398] + 24);
          v82 = 1;
          do
          {
            v83 = v31;
            v84 = vcvtd_n_f64_u32(v82, 2uLL);
            v31 = expandRects(v29, v84 * -0.05, v84 * -0.2, v84 * -0.1, v84 * -0.2);

            cropTimeLeftFacesNoMask(v31, 1, v102, v96, a23, a24, a25, a26, v91, v92, v85, v86, v87, v88, v89, v90, v79, v78, v80, v81, v79, v78, v80, v81, v97, a21, a22);
            x = v110.origin.x;
          }

          while (CGRectIsNull(v110) && v82++ < 4);
        }
      }

      else
      {
        v31 = expandRects(v29, 0.01, 0.01, 0.05, 0.01);
        v32 = a4;
        cropTimeRightFacesNoMask(v31, 1, a3, a4, a23, a24, a25, a26, v39, v40, v33, v34, v35, v36, v37, v38, v98, *&a6, *&a7, *&a8, a17, a18, a19, a20, v97, a21, a22);
        x = v103.origin.x;
        if (CGRectIsNull(v103))
        {
          v101 = a3;
          v42 = *MEMORY[0x277CBF398];
          v41 = *(MEMORY[0x277CBF398] + 8);
          v95 = v32;
          v43 = *(MEMORY[0x277CBF398] + 16);
          v44 = *(MEMORY[0x277CBF398] + 24);
          v45 = 1;
          do
          {
            v46 = v31;
            v47 = vcvtd_n_f64_u32(v45, 2uLL);
            v31 = expandRects(v29, v47 * -0.05, v47 * -0.2, v47 * -0.1, v47 * -0.2);

            cropTimeRightFacesNoMask(v31, 1, v101, v95, a23, a24, a25, a26, v54, v55, v48, v49, v50, v51, v52, v53, v42, v41, v43, v44, v42, v41, v43, v44, v97, a21, a22);
            x = v104.origin.x;
          }

          while (CGRectIsNull(v104) && v45++ < 4);
        }
      }

      goto LABEL_44;
    }

    if (a2 == 8)
    {
      goto LABEL_29;
    }

    if (a2 == 7)
    {
      goto LABEL_21;
    }
  }

LABEL_45:

  return x;
}

double layoutPetsMatte(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  v50 = *MEMORY[0x277CBF3A0];
  v31 = v30;
  if ([v31 count])
  {
    v44 = a15;
    v45 = a13;
    v46 = a5;
    v51 = a3;
    v52 = a4;
    v32 = -0.2;
    v33 = v31;
  }

  else
  {
    v55.origin.x = a13;
    v55.origin.y = a14;
    v55.size.width = a15;
    v55.size.height = a16;
    if (CGRectIsEmpty(v55))
    {
      v33 = v31;
      goto LABEL_5;
    }

    v45 = a13;
    v46 = a5;
    v51 = a3;
    v52 = a4;
    *v53 = a13;
    *&v53[1] = a14;
    v44 = a15;
    *&v53[2] = a15;
    *&v53[3] = a16;
    v35 = [MEMORY[0x277CCAE60] valueWithBytes:v53 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v54[0] = v35;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];

    v32 = 0.0;
  }

  v36 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a10 <= 4)
  {
    if (a10 > 2)
    {
      if (a10 != 3)
      {
LABEL_20:
        v37 = expandRects(v33, v32, 0.01, 0.0, 0.01);
        v39 = cropTimeBelowFacesWithMask(v37, v29, v51, v52, a19, a20, a21, a22, v36, v41, a17, a18);
        goto LABEL_22;
      }
    }

    else if (a10 != 1)
    {
      if (a10 != 2)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

LABEL_19:
    v37 = expandRects(v33, v32, 0.01, 0.02, 0.01);
    v39 = cropTimeAboveFacesWithMask(v37, v29, 2, v51, v52, a19, a20, a21, a22, v36, v40, a17, a18);
LABEL_22:
    v34 = v39;

    goto LABEL_23;
  }

  if (a10 <= 6)
  {
    expandRects(v33, v32, 0.01, 0.02, 0.01);
    if (a10 == 5)
      v37 = {;
      v39 = cropTimeLeftOfFacesWithMask(v37, v29, 1, v51, v52, a19, a20, a21, a22, a7, v42, v46, a6, a7, a8, v45, a14, v44, a16, v36, a17, a18);
    }

    else
      v37 = {;
      v39 = cropTimeRightOfFacesWithMask(v37, v29, 1, v51, v52, a19, a20, a21, a22, a7, v38, v46, a6, a7, a8, v45, a14, v44, a16, v36, a17, a18);
    }

    goto LABEL_22;
  }

  if (a10 == 8)
  {
    goto LABEL_20;
  }

  if (a10 == 7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v34 = v50;
LABEL_23:

  return v34;
}

double layoutPetsNoMatte(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, double a16, double a17, double a18, double a19, double a20, double a21)
{
  v108[1] = *MEMORY[0x277D85DE8];
  v27 = a1;
  x = *MEMORY[0x277CBF3A0];
  v29 = v27;
  v100 = a3;
  v106 = a2;
  if ([v29 count])
  {
    v95 = *&a13;
    v96 = *&a12;
    v30 = -0.2;
    v31 = v29;
  }

  else
  {
    v109.origin.x = a12;
    v109.origin.y = a13;
    v109.size.width = a14;
    v109.size.height = a15;
    if (CGRectIsEmpty(v109))
    {
      v31 = v29;
      goto LABEL_49;
    }

    v95 = *&a13;
    v96 = *&a12;
    *v107 = a12;
    *&v107[1] = a13;
    *&v107[2] = a14;
    *&v107[3] = a15;
    v32 = [MEMORY[0x277CCAE60] valueWithBytes:v107 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v108[0] = v32;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:1];

    v30 = 0.0;
  }

  if (a9 <= 4)
  {
    if (a9 > 2)
    {
      if (a9 != 3)
      {
LABEL_33:
        v104 = v30;
        v64 = *MEMORY[0x277D3B3B8] * 0.5;
        v34 = expandRects(v31, v30, 0.01, 0.0, 0.01);
        v114.origin.x = cropTimeBelowFacesNoMask(v34, a2, a3, a18, a19, a20, a21, v64, v65, a16, a17);
        x = v114.origin.x;
        if (CGRectIsNull(v114))
        {
          v66 = 1;
          do
          {
            v67 = v34;
            v68 = vcvtd_n_f64_u32(v66, 2uLL);
            v34 = expandRects(v29, v104 + v68 * -0.05, v68 * -0.2, v68 * -0.1, v68 * -0.2);

            v115.origin.x = cropTimeBelowFacesNoMask(v34, a2, a3, a18, a19, a20, a21, v64, v69, a16, a17);
            x = v115.origin.x;
          }

          while (CGRectIsNull(v115) && v66++ < 4);
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else if (a9 != 1)
    {
      if (a9 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

LABEL_25:
    v103 = v30;
    v57 = *MEMORY[0x277D3B3B8] * 0.5;
    v34 = expandRects(v31, v30, 0.01, 0.02, 0.01);
    v112.origin.x = cropTimeAboveFacesNoMask(v34, a2, a3, a18, a19, a20, a21, v57, v58, a16, a17);
    x = v112.origin.x;
    if (CGRectIsNull(v112))
    {
      v59 = 1;
      do
      {
        v60 = v34;
        v61 = vcvtd_n_f64_u32(v59, 2uLL);
        v34 = expandRects(v29, v103 + v61 * -0.05, v61 * -0.2, v61 * -0.1, v61 * -0.2);

        v113.origin.x = cropTimeAboveFacesNoMask(v34, a2, a3, a18, a19, a20, a21, v57, v62, a16, a17);
        x = v113.origin.x;
      }

      while (CGRectIsNull(v113) && v59++ < 4);
    }

    goto LABEL_48;
  }

  if (a9 <= 6)
  {
    if (a9 == 5)
    {
      v105 = v30;
      v71 = *MEMORY[0x277D3B3B8] * 0.5;
      v34 = expandRects(v31, v30, 0.01, 0.02, 0.01);
      cropTimeLeftFacesNoMask(v34, 1, a2, a3, a18, a19, a20, a21, a6, *&v96, v72, v73, v74, v75, v76, v77, *&a4, *&a5, *&a6, *&a7, v96, v95, *&a14, *&a15, v71, a16, a17);
      x = v116.origin.x;
      if (CGRectIsNull(v116))
      {
        v78 = *MEMORY[0x277CBF398];
        v79 = *(MEMORY[0x277CBF398] + 8);
        v80 = *(MEMORY[0x277CBF398] + 16);
        v81 = *(MEMORY[0x277CBF398] + 24);
        v82 = 1;
        do
        {
          v83 = v34;
          v84 = vcvtd_n_f64_u32(v82, 2uLL);
          v34 = expandRects(v29, v105 + v84 * -0.05, v84 * -0.2, v84 * -0.1, v84 * -0.2);

          cropTimeLeftFacesNoMask(v34, 1, v106, v100, a18, a19, a20, a21, v91, v92, v85, v86, v87, v88, v89, v90, v78, v79, v80, v81, v78, v79, v80, v81, v71, a16, a17);
          x = v117.origin.x;
        }

        while (CGRectIsNull(v117) && v82++ < 4);
      }
    }

    else
    {
      v102 = v30;
      v33 = *MEMORY[0x277D3B3B8] * 0.5;
      v34 = expandRects(v31, v30, 0.01, 0.02, 0.01);
      cropTimeRightFacesNoMask(v34, 1, a2, a3, a18, a19, a20, a21, a6, *&v96, v35, v36, v37, v38, v39, v40, *&a4, *&a5, *&a6, *&a7, v96, v95, *&a14, *&a15, v33, a16, a17);
      x = v110.origin.x;
      if (CGRectIsNull(v110))
      {
        v41 = *MEMORY[0x277CBF398];
        v42 = *(MEMORY[0x277CBF398] + 8);
        v43 = *(MEMORY[0x277CBF398] + 16);
        v44 = *(MEMORY[0x277CBF398] + 24);
        v45 = 1;
        do
        {
          v46 = v34;
          v47 = vcvtd_n_f64_u32(v45, 2uLL);
          v34 = expandRects(v29, v102 + v47 * -0.05, v47 * -0.2, v47 * -0.1, v47 * -0.2);

          cropTimeRightFacesNoMask(v34, 1, v106, v100, a18, a19, a20, a21, v54, v55, v48, v49, v50, v51, v52, v53, v41, v42, v43, v44, v41, v42, v43, v44, v33, a16, a17);
          x = v111.origin.x;
        }

        while (CGRectIsNull(v111) && v45++ < 4);
      }
    }

    goto LABEL_48;
  }

  if (a9 == 8)
  {
    goto LABEL_33;
  }

  if (a9 == 7)
  {
    goto LABEL_25;
  }

LABEL_49:

  return x;
}

id pflc_layout_log()
{
  if (pflc_layout_log_onceToken != -1)
  {
    pflc_layout_log_cold_1();
  }

  v1 = pflc_layout_log___logger;

  return v1;
}

uint64_t __pflc_layout_log_block_invoke()
{
  pflc_layout_log___logger = os_log_create("com.apple.photosfacelayoutcore", "layout");

  return MEMORY[0x2821F96F8]();
}

__n128 makePresentationTransform@<Q0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result.n128_u64[0] = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        *a4 = 0x3FF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return result;
      }

      if (a1 == 2)
      {
        result.n128_f64[0] = a2;
        *a4 = 0xBFF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
LABEL_9:
        *(a4 + 32) = result.n128_u64[0];
        return result;
      }

      goto LABEL_21;
    }

    if (a1 != 3)
    {
      result.n128_f64[0] = a3;
      *a4 = 0x3FF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0xBFF0000000000000;
      goto LABEL_15;
    }

    result.n128_f64[0] = a2;
    v9 = a3;
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
LABEL_21:
        v11 = MEMORY[0x277CBF2C0];
        v12 = *(MEMORY[0x277CBF2C0] + 16);
        *a4 = *MEMORY[0x277CBF2C0];
        *(a4 + 16) = v12;
        result = v11[2];
        *(a4 + 32) = result;
        return result;
      }

      result.n128_f64[0] = a2;
      *(a4 + 8) = xmmword_22D12D820;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
LABEL_15:
      *(a4 + 40) = result.n128_u64[0];
      return result;
    }

    result.n128_f64[0] = a3;
    v9 = a2;
    __asm { FMOV            V2.2D, #-1.0 }

    *(a4 + 8) = _Q2;
LABEL_20:
    *(a4 + 32) = result.n128_u64[0];
    *(a4 + 40) = v9;
    return result;
  }

  if (a1 != 5)
  {
    result.n128_f64[0] = a3;
    *(a4 + 8) = xmmword_22D12D830;
    goto LABEL_9;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

CGFloat uprightCTM@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_22D12D780;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_22D12D780;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

id expandRects(void *a1, double a2, double a3, double a4, double a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    v15 = a3 + a5 + 1.0;
    v16 = a2 + a4 + 1.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * i) rectValue];
        v24[0] = v20 - v18 * a5;
        v24[1] = v21 - v19 * a2;
        v24[2] = v15 * v18;
        v24[3] = v16 * v19;
        v22 = [MEMORY[0x277CCAE60] valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v10 addObject:v22];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  return v10;
}

double renormalizeRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, a7, a8);
  v14 = v15;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  return a5 + COERCE_DOUBLE(CGRectApplyAffineTransform(v16, &v14));
}

id _rectAsString(double a1, double a2, double a3, double a4)
{
  if (fmax(a3, a4) <= 1.0)
  {
    v4 = @"{ %.5f, %.5f, %.5f, %.5f }";
  }

  else
  {
    v4 = @"{ %.1f, %.1f, %.1f, %.1f }";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, *&a1, *&a2, *&a3, *&a4];

  return v5;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}