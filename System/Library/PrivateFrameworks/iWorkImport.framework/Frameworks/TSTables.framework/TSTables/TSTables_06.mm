double sub_2211B93F8(void *a1, double *a2)
{
  v3 = a1;
  v8 = v3;
  if (v3)
  {
    v9 = [TSTLayout alignedStrokeFrame]_0(v3, v4, v5, v6, v7);
    v97 = v10;
    v98 = v11;
    v12 = v9;
    v14 = v13;
    v19 = sub_2211B877C(v8, v15, v16, v17, v18);
    v24 = objc_msgSend_spaceBundle(v8, v20, v21, v22, v23);
    v29 = objc_msgSend_space(v24, v25, v26, v27, v28);

    v30 = sub_2211B44A8(v8);
    v35 = objc_msgSend_layoutEngine(v8, v31, v32, v33, v34);
    isDynamicallyRowTabResizing = objc_msgSend_isDynamicallyRowTabResizing(v35, v36, v37, v38, v39);

    if (isDynamicallyRowTabResizing)
    {
      v45 = objc_msgSend_layoutEngine(v8, v41, v42, v43, v44);
      objc_msgSend_dynamicRowTabSize(v45, v46, v47, v48, v49);
      v98 = v50;
    }

    v99 = 0.0;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(v8, v41, &v99, v43, v44);
    v96 = v51;
    v94 = v14;
    v95 = v12;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v8, v52, v53, v54, v55))
    {
      v60 = v12 - (v96 + 10.0) / v19;
    }

    else
    {
      v100.origin.x = v12;
      v100.origin.y = v97;
      v100.size.height = v98;
      v100.size.width = v14;
      v60 = 10.0 / v19 + CGRectGetMaxX(v100);
    }

    v62 = sub_2211B8FA4(v8, v56, v57, v58, v59);
    rect = v63;
    v64 = v62;
    v66 = v65;
    v68 = v67;
    v77 = v30 + v98;
    v78 = v97 - v30;
    v79 = v96 / v19;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v8, v69, v70, v71, v72))
    {
      v80 = v99 / v19;
      if (v60 < v64 + v99 / v19)
      {
        v101.size.width = v94;
        v101.origin.x = v95;
        v101.origin.y = v97;
        v101.size.height = v98;
        MaxX = CGRectGetMaxX(v101);
        if (v64 < MaxX)
        {
          MaxX = v64;
        }

        v80 = v99 / v19;
        v60 = MaxX + v99 / v19;
      }
    }

    else
    {
      v102.origin.x = v60;
      v102.origin.y = v78;
      v92 = v96 / v19;
      v102.size.width = v96 / v19;
      v102.size.height = v77;
      v82 = CGRectGetMaxX(v102);
      v103.origin.x = v64;
      v103.origin.y = v66;
      v103.size.width = rect;
      v103.size.height = v68;
      v83 = CGRectGetMaxX(v103);
      v80 = v99 / v19;
      v84 = v82 <= v83 - v99 / v19;
      v79 = v96 / v19;
      if (!v84)
      {
        v104.origin.x = v64;
        v104.origin.y = v66;
        v104.size.width = rect;
        v104.size.height = v68;
        v60 = CGRectGetMaxX(v104) - (v96 + v99) / v19;
        v80 = v99 / v19;
        v79 = v96 / v19;
      }
    }

    if (v60 < v64 + v80)
    {
      v105.size.width = v94;
      v105.origin.x = v95;
      v105.origin.y = v97;
      v105.size.height = v98;
      v85 = CGRectGetMaxX(v105);
      if (v64 < v85)
      {
        v85 = v64;
      }

      v60 = v85 + v99 / v19;
    }

    v86 = v78 + -31.0 / v19;
    if (v86 >= v66)
    {
      v87 = v77;
    }

    else
    {
      v87 = v77 - (v66 - v86);
    }

    if (v86 >= v66)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = v66 - v86;
    }

    if (v87 <= 0.0)
    {
      v61 = *MEMORY[0x277CBF3A0];
      if (!a2)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v89 = v78 + v66 - v86;
      if (v86 >= v66)
      {
        v89 = v78;
      }

      objc_msgSend_canvasRectForLayoutRect_(v29, v73, v74, v75, v76, v60, v89, v79, *&v92);
      v61 = v90;
      if (!a2)
      {
        goto LABEL_32;
      }
    }

    *a2 = v88;
    goto LABEL_32;
  }

  v61 = *MEMORY[0x277CBF3A0];
LABEL_33:

  return v61;
}

double sub_2211B9750(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2211B4394(a1, a2, a3, a4, a5);
  objc_msgSend_frame(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

double sub_2211B985C(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_space(v6, v7, v8, v9, v10);

  v16 = v1[45];
  if (*(v1 + 425) == 1)
  {
    v17 = sub_2211B817C(v1);
  }

  else
  {
    v17 = *MEMORY[0x277CBF348];
  }

  if ((objc_msgSend_layoutDirectionIsLeftToRight(v1, v12, v13, v14, v15) & 1) == 0)
  {
    v17 = v1[47] - v17;
  }

  objc_msgSend_canvasStrokeFrame(v11, v18, v19, v20, v21);
  sub_2211B44A8(v1);

  return v16 + v17;
}

double sub_2211B996C(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_space(v6, v7, v8, v9, v10);

  if (v1[425] == 1)
  {
    v16 = sub_2211B817C(v1);
  }

  objc_msgSend_canvasStrokeFrame(v11, v12, v13, v14, v15, v16);
  v18 = v17;
  sub_2211B44A8(v1);

  return v18;
}

double sub_2211B9A64(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_space(v6, v7, v8, v9, v10);

  v17 = v1[45];
  v16 = v1[46];
  if (*(v1 + 425) == 1)
  {
    v18 = sub_2211B817C(v1);
    v20 = v19;
  }

  else
  {
    v18 = *MEMORY[0x277CBF348];
    v20 = *(MEMORY[0x277CBF348] + 8);
  }

  if ((objc_msgSend_layoutDirectionIsLeftToRight(v1, v12, v13, v14, v15) & 1) == 0)
  {
    v18 = v1[47] - v18;
  }

  v21 = sub_2211B44A8(v1);
  objc_msgSend_canvasStrokeFrame(v11, v22, v23, v24, v25);
  v30 = v17 + v18;
  if (v30 < v31)
  {
    objc_msgSend_canvasStrokeFrame(v11, v26, v27, v28, v29);
    v30 = v32;
  }

  objc_msgSend_canvasStrokeFrame(v11, v26, v27, v28, v29);
  if (v16 + v20 + v21 < v37)
  {
    objc_msgSend_canvasStrokeFrame(v11, v33, v34, v35, v36);
  }

  return v30;
}

void sub_2211B9BC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v7 = objc_msgSend_spaceBundle(v37, v3, v4, v5, v6);
  v12 = objc_msgSend_space(v7, v8, v9, v10, v11);

  v13 = sub_2211B985C(v37);
  objc_msgSend_layoutPointForCanvasPoint_(v12, v14, v15, v16, v17, v13);
  v19 = v18;
  objc_msgSend_alignedStrokeFrame(v12, v20, v21, v22, v23);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v37, v32, v33, v34, v35))
  {
    v36 = v19 - v25;
    if (v19 - v25 < 0.0)
    {
      v36 = 0.0;
    }
  }

  else
  {
    v39.origin.x = v25;
    v39.origin.y = v27;
    v39.size.width = v29;
    v39.size.height = v31;
    v36 = fmin(v19 - CGRectGetMaxX(v39), 0.0);
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, v36, 0.0);
}

void sub_2211B9D04(void *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v19 = a1;
  v7 = sub_2211B9DC0(v19, v3, v4, v5, v6);
  sub_2211B88A4(v19, v8, v9, v10, v11, v7, v12, v13, v14);
  v16 = *(v19 + 42) - v15;
  if (*(v19 + 425) == 1)
  {
    sub_2211B817C(v19);
    v16 = v16 + v17;
  }

  if (v16 >= 0.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0.0;
  }

  CGAffineTransformMakeTranslation(a2, 0.0, v18);
}

double sub_2211B9DC0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2211B4394(a1, a2, a3, a4, a5);
  objc_msgSend_alignedStrokeFrameForTableNameBorder(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void sub_2211B9E30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v7 = objc_msgSend_spaceBundle(v25, v3, v4, v5, v6);
  v12 = objc_msgSend_space(v7, v8, v9, v10, v11);

  v13 = sub_2211B996C(v25);
  objc_msgSend_layoutPointForCanvasPoint_(v12, v14, v15, v16, v17, v13);
  v19 = v18;
  objc_msgSend_alignedStrokeFrame(v12, v20, v21, v22, v23);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, 0.0, fmax(v19 - v24, 0.0));
}

void sub_2211B9F18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v7 = objc_msgSend_spaceBundle(v39, v3, v4, v5, v6);
  v12 = objc_msgSend_space(v7, v8, v9, v10, v11);

  v13 = sub_2211B9A64(v39);
  objc_msgSend_layoutPointForCanvasPoint_(v12, v14, v15, v16, v17, v13);
  v19 = v18;
  v21 = v20;
  objc_msgSend_alignedStrokeFrame(v12, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v39, v34, v35, v36, v37))
  {
    v38 = v19 - v27;
    if (v19 - v27 < 0.0)
    {
      v38 = 0.0;
    }
  }

  else
  {
    v41.origin.x = v27;
    v41.origin.y = v29;
    v41.size.width = v31;
    v41.size.height = v33;
    v38 = fmin(v19 - CGRectGetMaxX(v41), 0.0);
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, v38, fmax(v21 - v29, 0.0));
}

BOOL sub_2211BA064(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_space(v6, v7, v8, v9, v10);

  v12 = v1[41];
  v13 = v1[42];
  v14 = v1[43];
  v15 = v1[44];
  v16 = sub_2211B817C(v1);
  v18 = v17;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v1, v19, v20, v21, v22))
  {
    objc_msgSend_headerColumnsWidth(v11, v23, v24, v25, v26);
    v32 = v12 + v16 + v31;
  }

  else
  {
    objc_msgSend_headerColumnsWidth(v11, v23, v24, v25, v26);
    v32 = v12 - (v16 + v33);
  }

  objc_msgSend_headerRowsHeight(v11, v27, v28, v29, v30);
  v35 = v34;
  v36 = sub_2211B44A8(v1);
  objc_msgSend_canvasStrokeFrame(v11, v37, v38, v39, v40);
  v44.origin.y = v13 + v18 + v35 + v36;
  v44.origin.x = v32;
  v44.size.width = v14;
  v44.size.height = v15;
  v41 = CGRectIntersectsRect(v43, v44);

  return v41;
}

void sub_2211BA16C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_2211BA19C(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4, v5);
  v11 = objc_msgSend_supportsFrozenHeaders(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_layoutEngine(v1, v12, v13, v14, v15);
    v21 = objc_msgSend_entireHeaderColumnsCellRange(v16, v17, v18, v19, v20);
    isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v16, v22, v21, v22, v23);
    if (sub_2211B4730(v1, v25, v26, v27, v28) && sub_2211B7A08(v1, v29, v30, v31, v32) && sub_2213A2C08(v16))
    {
      v37 = (objc_msgSend_numberOfHeaderColumns(v16, v33, v34, v35, v36) != 0) & (isEntireCellRangeHidden ^ 1u);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

uint64_t TSTLayoutGetTableNameVisible(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 427);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

double sub_2211BA2B8(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_space(v6, v7, v8, v9, v10);
  v16 = sub_2211C042C(v1, v12, v13, v14, v15);
  objc_msgSend_canvasRectForLayoutRect_(v11, v17, v18, v19, v20, v16);
  v22 = v21;

  return v22;
}

uint64_t sub_2211BA370(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4, v5);
  v11 = objc_msgSend_supportsFrozenHeaders(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_layoutEngine(v1, v12, v13, v14, v15);
    v21 = objc_msgSend_entireHeaderRowsCellRange(v16, v17, v18, v19, v20);
    isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v16, v22, v21, v22, v23);
    if (sub_2211B4730(v1, v25, v26, v27, v28) && sub_2211B7A08(v1, v29, v30, v31, v32) && sub_2213A2C6C(v16))
    {
      v37 = (objc_msgSend_numberOfHeaderRows(v16, v33, v34, v35, v36) != 0) & (isEntireCellRangeHidden ^ 1u);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

double sub_2211BA638(double *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[41];
  v6 = a1[42];
  v7 = a1[43];
  v8 = a1[44];
  v9 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v14 = objc_msgSend_space(v9, v10, v11, v12, v13);
  objc_msgSend_layoutRectForCanvasRect_(v14, v15, v16, v17, v18, v5, v6, v7, v8);
  v20 = v19;

  return v20;
}

uint64_t sub_2211BA6F0(void *a1)
{
  v1 = a1;
  v6 = sub_2211B4394(v1, v2, v3, v4, v5);
  v7 = sub_2211BA768(v1, v6);

  return v7;
}

uint64_t sub_2211BA768(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_cellRangeVisibleRect(v3, v5, v6, v7, v8);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v17 = 0x7FFF7FFFFFFFLL;
  if (!CGRectIsEmpty(v27) && objc_msgSend_frameHasWidthAndHeight(v4, v13, v14, v15, v16))
  {
    objc_msgSend_layoutRectForCanvasRect_(v4, v18, v19, v20, v21, x, y, width, height);
    v17 = objc_msgSend_rangeIntersectingLayoutRect_(v4, v22, v23, v24, v25);
  }

  return v17;
}

__n128 sub_2211BAC10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

id sub_2211BAC20(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_tableInfo(v1, v2, v3, v4, v5);
  if (objc_msgSend_repeatingHeaderRowsEnabled(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_numberOfHeaderRows(v6, v11, v12, v13, v14) != 0;
  }

  else
  {
    v15 = 0;
  }

  if (objc_msgSend_repeatingHeaderColumnsEnabled(v6, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_numberOfHeaderColumns(v6, v16, v17, v18, v19) != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_2211B6DA4(v1);
  v23 = v22;
  v24 = sub_2211B6E48(v1);
  v26 = v25;
  v67 = sub_2211B7004(v1);
  v28 = v27;
  v29 = sub_2211B71BC(v1);
  v65 = v30;
  v66 = v29;
  if (!v20)
  {
    goto LABEL_54;
  }

  if (!HIDWORD(v23) || !v23 || !HIDWORD(v26) || !v26)
  {
    goto LABEL_52;
  }

  v31 = v21 & 0xFFFF00000000;
  if (v21 == 0x7FFFFFFFLL && v31 != 0x7FFF00000000)
  {
    goto LABEL_14;
  }

  v37 = v31 != 0x7FFF00000000 && v21 == 0x7FFFFFFF;
  if (v37 || v21 <= v24)
  {
    v38 = v21 + HIDWORD(v23) - 1;
    if (v21 == 0x7FFFFFFF)
    {
      v38 = 0x7FFFFFFF;
    }

    if (v38 >= v24)
    {
      if (v21 != 0x7FFFFFFFLL && v31 == 0x7FFF00000000)
      {
        v35 = v23 + 32766;
        v32 = HIDWORD(v24);
        v33 = 0x7FFF;
        goto LABEL_34;
      }

LABEL_14:
      v32 = HIDWORD(v24);
      v33 = WORD2(v21);
      if (WORD2(v21) > WORD2(v24))
      {
        goto LABEL_52;
      }

      v34 = WORD2(v21) == 0x7FFF || v23 == 0;
      v35 = v23 - 1 + WORD2(v21);
      v36 = v34 ? 0x7FFF : v23 - 1 + WORD2(v21);
      if (v36 < WORD2(v24))
      {
        goto LABEL_52;
      }

LABEL_34:
      if (v33 == 0x7FFF || v23 == 0)
      {
        v40 = 0x7FFF;
      }

      else
      {
        v40 = v35;
      }

      v41 = v32;
      v42 = v26 + v32 - 1;
      if (v41 == 0x7FFF || v26 == 0)
      {
        v42 = 0x7FFF;
      }

      if (v40 < v42)
      {
        goto LABEL_52;
      }

      v44 = v21 + HIDWORD(v23) - 1;
      if (v21 == 0x7FFFFFFF)
      {
        v44 = 0x7FFFFFFF;
      }

      v45 = v24 == 0x7FFFFFFF ? 0x7FFFFFFF : v24 + HIDWORD(v26) - 1;
      if (v44 < v45)
      {
        goto LABEL_52;
      }

LABEL_54:
      v46 = 0;
      if (!v15)
      {
        goto LABEL_102;
      }

      goto LABEL_55;
    }
  }

LABEL_52:
  v46 = objc_msgSend_region_addingRange_(TSTCellRegion, v30, 0, v24, v26);
  if (!v15)
  {
    goto LABEL_102;
  }

LABEL_55:
  if (HIDWORD(v23) && v23 && HIDWORD(v28) && v28)
  {
    v47 = v21 & 0xFFFF00000000;
    if (v21 != 0x7FFFFFFFLL || v47 == 0x7FFF00000000)
    {
      v53 = v47 != 0x7FFF00000000 && v21 == 0x7FFFFFFF;
      if (!v53 && v21 > v67)
      {
        goto LABEL_99;
      }

      v54 = v21 + HIDWORD(v23) - 1;
      if (v21 == 0x7FFFFFFF)
      {
        v54 = 0x7FFFFFFF;
      }

      if (v54 < v67)
      {
        goto LABEL_99;
      }

      if (v21 != 0x7FFFFFFFLL && v47 == 0x7FFF00000000)
      {
        v51 = v23 + 32766;
        v48 = HIDWORD(v67);
        v49 = 0x7FFF;
        goto LABEL_81;
      }
    }

    v48 = HIDWORD(v67);
    v49 = WORD2(v21);
    if (WORD2(v21) <= WORD2(v67))
    {
      v50 = WORD2(v21) == 0x7FFF || v23 == 0;
      v51 = v23 - 1 + WORD2(v21);
      v52 = v50 ? 0x7FFF : v23 - 1 + WORD2(v21);
      if (v52 >= WORD2(v67))
      {
LABEL_81:
        if (v49 == 0x7FFF || v23 == 0)
        {
          v56 = 0x7FFF;
        }

        else
        {
          v56 = v51;
        }

        v57 = v48;
        v58 = v28 + v48 - 1;
        if (v57 == 0x7FFF || v28 == 0)
        {
          v58 = 0x7FFF;
        }

        if (v56 >= v58)
        {
          v60 = v21 + HIDWORD(v23) - 1;
          if (v21 == 0x7FFFFFFF)
          {
            v60 = 0x7FFFFFFF;
          }

          v61 = v67 == 0x7FFFFFFF ? 0x7FFFFFFF : v67 + HIDWORD(v28) - 1;
          if (v60 >= v61)
          {
            goto LABEL_100;
          }
        }
      }
    }
  }

LABEL_99:
  v62 = objc_msgSend_region_addingRange_(TSTCellRegion, v30, v46, v67, v28);

  v46 = v62;
LABEL_100:
  if (v20)
  {
    v63 = objc_msgSend_region_addingRange_(TSTCellRegion, v30, v46, v66, v65);

    v46 = v63;
  }

LABEL_102:

  return v46;
}

id sub_2211BB074(void *a1)
{
  v67[7] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_layoutEngine(v1, v12, v13, v14, v15);
  isDynamicallyRepressingFrozenHeaderColumns = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v16, v17, v18, v19, v20);

  if ((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns))
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_2211B7B58(v1, v22, v23, v24, v25);
  }

  v67[0] = v26;
  if (isDynamicallyRepressingFrozenHeaderRows)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_2211B7AFC(v1, v27, v28, v29, v30);
  }

  v67[1] = v31;
  if (isDynamicallyRepressingFrozenHeaderColumns)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_2211B7AA0(v1, v32, v33, v34, v35);
  }

  v67[2] = v36;
  v67[3] = TSTLayoutGetRepeatHeaderCornerSpace(v1, v37, v38, v39, v40);
  v67[4] = TSTLayoutGetRepeatHeaderRowsSpace(v1, v41, v42, v43, v44);
  v67[5] = TSTLayoutGetRepeatHeaderColumnsSpace(v1, v45, v46, v47, v48);
  v67[6] = sub_2211B4394(v1, v49, v50, v51, v52);
  if (isDynamicallyRepressingFrozenHeaderColumns)
  {
    if (isDynamicallyRepressingFrozenHeaderRows)
    {
      goto LABEL_12;
    }

LABEL_33:

    if ((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((isDynamicallyRepressingFrozenHeaderRows & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  if (((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns) & 1) == 0)
  {
LABEL_13:
  }

LABEL_14:
  v60 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v53, 7, v54, v55);
  for (i = 0; i != 7; ++i)
  {
    v62 = v67[i];
    if (!v62)
    {
      continue;
    }

    v63 = objc_msgSend_layoutSpaceType(v62, v56, v57, v58, v59);
    if (v63 == 1)
    {
      if (!sub_2211B82D0(v1))
      {
        continue;
      }

      v64 = sub_2211B848C(v1);
LABEL_24:
      if ((v64 & 1) == 0)
      {
        continue;
      }

LABEL_25:
      objc_msgSend_addObject_(v60, v56, v67[i], v58, v59);
      continue;
    }

    if (v63 == 2)
    {
      v64 = sub_2211B82D0(v1);
      goto LABEL_24;
    }

    if (v63 != 3 || sub_2211B848C(v1))
    {
      goto LABEL_25;
    }
  }

  for (j = 6; j != -1; --j)
  {
  }

  return v60;
}

void sub_2211BB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11)
{
  if (v12)
  {
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v15)
    {
      do
      {
LABEL_4:
        v17 = *(v16 - 1);
        v16 -= 8;
      }

      while (v16 != &a11);

      _Unwind_Resume(a1);
    }
  }

  goto LABEL_4;
}

uint64_t sub_2211BB390(void *a1, CGFloat a2, double a3)
{
  v193 = *MEMORY[0x277D85DE8];
  v174 = a1;
  v172 = sub_2211B4394(v174, v3, v4, v5, v6);
  v169 = sub_2211BB074(v174);
  if (v174 && v174[427] == 1)
  {
    v11 = objc_msgSend_layoutEngine(v174, v7, v8, v9, v10);
    if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v11, v12, v13, v14, v15) & 1) != 0 || !sub_2211BA370(v174))
    {
    }

    else
    {
      v16 = sub_2211B848C(v174);

      if (v16)
      {
        v21 = v174;
        v22 = sub_2211B7AFC(v174, v17, v18, v19, v20);
        if (v22)
        {
          memset(&v191, 0, sizeof(v191));
          sub_2211B9E30(v174, &v191);
          v23 = sub_2211BBD00(v174);
          v25 = v24;
          objc_msgSend_canvasFrame(v22, v26, v27, v28, v29, v23);
          v190 = v191;
          v197 = CGRectApplyAffineTransform(v196, &v190);
          if (a3 < CGRectGetMinY(v197) && a3 > v25)
          {

            v30 = 0x7FFF7FFFFFFFLL;
            goto LABEL_156;
          }
        }
      }
    }
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = v169;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v186, v192, 16);
  v21 = v174;
  if (v35)
  {
    v36 = *v187;
    v170 = vdupq_lane_s64(*&a2, 0);
    v173 = -1;
    v175 = -1;
    while (1)
    {
      v37 = 0;
      do
      {
        if (*v187 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v186 + 1) + 8 * v37);
        if (v38)
        {
          v39 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v32, *(*(&v186 + 1) + 8 * v37), v33, v34);
          v41 = v39 == -1 || v32 == -1;
          v42 = v41 || v39 > v32;
          v43 = HIDWORD(v39);
          v44 = v32 >> 32;
          v45 = v42 || v43 == 0xFFFFFFFF;
          v46 = v45 || v44 == 0xFFFFFFFF;
          if (!v46 && v43 <= v44)
          {
            v48 = objc_msgSend_layoutSpaceType(v38, v32, v40, v33, v34);
            v52 = v48;
            if (v48)
            {
              if (v48 > 4)
              {
                if ((v48 - 5) >= 2)
                {
                  goto LABEL_63;
                }

                v60 = 1;
LABEL_64:
                v61 = v38;
                v183 = *MEMORY[0x277CBF2C0];
                rect = *(MEMORY[0x277CBF2C0] + 32);
                rect_16 = *(MEMORY[0x277CBF2C0] + 16);
              }

              else
              {
                switch(v48)
                {
                  case 1:
                    sub_2211B9F18(v21, &v190);
                    break;
                  case 2:
                    sub_2211B9BC4(v21, &v190);
                    break;
                  case 3:
                    sub_2211B9E30(v21, &v190);
                    break;
                  default:
LABEL_63:
                    v60 = 0;
                    goto LABEL_64;
                }

                CGAffineTransformInvert(&v191, &v190);
                v183 = *&v191.a;
                v60 = 1;
                v61 = v172;
                rect = *&v191.tx;
                rect_16 = *&v191.c;
              }

              v182 = v61;
              v184 = vaddq_f64(rect, vmlaq_f64(vmulq_n_f64(rect_16, a3), v170, v183));
              if (v21[425] == 1)
              {
                if (v52 == 3)
                {
                  v77 = objc_msgSend_layout(v38, v62, v63, v64, v65);
                  v78 = sub_2211B93F8(v77, 0);
                  v80 = v79;
                  v82 = v81;
                  v84 = v83;

                  v199.origin.x = v78;
                  v199.origin.y = v80;
                  v199.size.width = v82;
                  v199.size.height = v84;
                  v195.x = a2;
                  v195.y = a3;
                  if (CGRectContainsPoint(v199, v195))
                  {
                    v86 = objc_msgSend_layoutController(v21, v62, v85, v64, v65);
                    v91 = objc_msgSend_canvas(v86, v87, v88, v89, v90);
                    isAnchoredAtRight = objc_msgSend_isAnchoredAtRight(v91, v92, v93, v94, v95);
                    v97 = -31.0;
                    if (isAnchoredAtRight)
                    {
                      v97 = 31.0;
                    }

                    rect_16b = v97;

                    v98.f64[1] = v184.f64[1];
                    v98.f64[0] = rect_16b;
                    v184 = v98;
                  }
                }

                else if (v52 == 2)
                {
                  v66 = objc_msgSend_layout(v38, v62, v63, v64, v65);
                  v67 = sub_2211B9064(v66, 0);
                  v69 = v68;
                  v71 = v70;
                  v73 = v72;

                  v198.origin.x = v67;
                  v198.origin.y = v69;
                  v198.size.width = v71;
                  v198.size.height = v73;
                  v194.x = a2;
                  v194.y = a3;
                  v74 = CGRectContainsPoint(v198, v194);
                  v75 = v184.f64[1];
                  v76.f64[0] = v184.f64[0];
                  if (v74)
                  {
                    v75 = -31.0;
                  }

                  v76.f64[1] = v75;
                  v184 = v76;
                }
              }

              v99 = v60;
              v100 = objc_msgSend_gridPointHitByCanvasPoint_tabsViewable_(v182, v62, 0, v64, v65);
              v108 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v101, v38, v102, v103);
              v109 = v104;
              rect_16a = HIDWORD(v100);
              if (v52 == 4)
              {
                objc_msgSend_frame(v172, v104, v105, v106, v107);
                objc_msgSend_canvasRectForLayoutRect_(v172, v110, v111, v112, v113);
                recta = v114;
                v116 = v115;
                v118 = v117;
                v120 = v119;
                objc_msgSend_frame(v38, v121, v122, v123, v124);
                objc_msgSend_canvasRectForLayoutRect_(v38, v125, v126, v127, v128);
                v130 = v129;
                v132 = v131;
                v134 = v133;
                v136 = v135;
                v140 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v137, v38, v138, v139);
                v142 = v141;
                v200.origin.x = v130;
                v200.origin.y = v132;
                v200.size.width = v134;
                v200.size.height = v136;
                if (v184.f64[0] <= CGRectGetMaxX(v200))
                {
                  v201.origin.x = v130;
                  v201.origin.y = v132;
                  v201.size.width = v134;
                  v201.size.height = v136;
                  if (v184.f64[0] >= CGRectGetMinX(v201) || (v202.origin.x = recta, v202.origin.y = v116, v202.size.width = v118, v202.size.height = v120, v184.f64[0] <= CGRectGetMinX(v202)))
                  {
                    v203.origin.x = v130;
                    v203.origin.y = v132;
                    v203.size.width = v134;
                    v203.size.height = v136;
                    if (v184.f64[1] <= CGRectGetMaxY(v203))
                    {
                      if (v100 == -1 && rect_16a != 0xFFFFFFFF && HIDWORD(v140) <= rect_16a && HIDWORD(v142) >= rect_16a)
                      {
                        v153 = 0;
                        v155 = 0;
                        v154 = HIDWORD(v100);
                        v146 = HIDWORD(v100);
                        if ((v99 & 1) == 0)
                        {
                          goto LABEL_115;
                        }
                      }

                      else
                      {
                        if (v142 >= v100)
                        {
                          v146 = 0;
                        }

                        else
                        {
                          v146 = -1;
                        }

                        if (v100 == -1 || v140 > v100)
                        {
                          v146 = -1;
                        }

                        if (rect_16a != 0xFFFFFFFF)
                        {
                          v146 = HIDWORD(v100);
                        }

                        if ((v99 & 1) == 0)
                        {
LABEL_113:
                          v155 = v100;
LABEL_115:
                          if (v155 != -1 && v108 <= v155 && v109 >= v155 && v146 != -1 && HIDWORD(v108) <= v146 && v109 >> 32 >= v146)
                          {
                            if (v100 == -1)
                            {
                              v166 = 0x7FFF00000000;
                            }

                            else
                            {
                              v166 = v100 << 32;
                            }

                            if (rect_16a == 0xFFFFFFFF)
                            {
                              v167 = 0x7FFFFFFFLL;
                            }

                            else
                            {
                              v167 = HIDWORD(v100);
                            }

                            v21 = v174;
                            v30 = v166 | v167;
LABEL_155:

                            goto LABEL_156;
                          }

LABEL_131:

                          v21 = v174;
                          goto LABEL_34;
                        }

LABEL_106:
                        if (v100 == -1)
                        {
                          v155 = 0;
                          goto LABEL_115;
                        }

                        v153 = v100;
                        v154 = v146;
                      }

                      if (v154 == -1)
                      {
                        v146 = 0;
                      }

                      else
                      {
                        v146 = v154;
                      }

                      v155 = v153;
                      goto LABEL_115;
                    }
                  }
                }
              }

              else if ((v52 - 5) <= 1)
              {
                objc_msgSend_canvasFrame(v38, v104, v105, v106, v107);
                x = v204.origin.x;
                y = v204.origin.y;
                width = v204.size.width;
                height = v204.size.height;
                if (v184.f64[0] > CGRectGetMaxX(v204))
                {
                  goto LABEL_131;
                }

                v205.origin.x = x;
                v205.origin.y = y;
                v205.size.width = width;
                v205.size.height = height;
                MaxY = CGRectGetMaxY(v205);
                v146 = HIDWORD(v100);
                if (v184.f64[1] > MaxY)
                {
                  goto LABEL_131;
                }

                if ((v99 & 1) == 0)
                {
                  goto LABEL_113;
                }

                goto LABEL_106;
              }

              v146 = HIDWORD(v100);
              if ((v99 & 1) == 0)
              {
                goto LABEL_113;
              }

              goto LABEL_106;
            }

            v53 = objc_msgSend_gridPointHitByCanvasPoint_tabsViewable_(v38, v49, v21[425], v50, v51, a2, a3);
            v54 = HIDWORD(v53);
            if (v53 > 0xFFFFFFFEFFFFFFFFLL || v53 == 0xFFFFFFFFLL)
            {
              v165 = 0x7FFF00000000;
              if (v53 != 0xFFFFFFFFLL)
              {
                v165 = v53 << 32;
              }

              if (v54 == 0xFFFFFFFFLL)
              {
                v54 = 0x7FFFFFFFLL;
              }

              v30 = v165 | v54;
              goto LABEL_155;
            }

            if (v53 != -1 && v173 == -1)
            {
              v57 = v53;
            }

            else
            {
              v57 = v173;
            }

            v173 = v57;
            v58 = v175;
            if (v54 != 0xFFFFFFFFLL && v175 == -1)
            {
              v58 = HIDWORD(v53);
            }

            v175 = v58;
          }
        }

LABEL_34:
        ++v37;
      }

      while (v35 != v37);
      v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v186, v192, 16);
      v35 = v161;
      if (!v161)
      {

        v162 = v175 == -1;
        if (v173 == -1)
        {
          goto LABEL_138;
        }

        v163 = v173 << 32;
        goto LABEL_139;
      }
    }
  }

  v175 = -1;
  v162 = 1;
LABEL_138:
  v163 = 0x7FFF00000000;
LABEL_139:
  v41 = !v162;
  v164 = 0x7FFFFFFFLL;
  if (v41)
  {
    v164 = v175;
  }

  v30 = v163 | v164;
LABEL_156:

  return v30;
}

double sub_2211BBD00(void *a1)
{
  v1 = a1;
  v2 = sub_2211C049C(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v13 = objc_msgSend_spaceBundle(v1, v9, v10, v11, v12);
  v18 = objc_msgSend_space(v13, v14, v15, v16, v17);
  objc_msgSend_canvasRectForLayoutRect_(v18, v19, v20, v21, v22, v2, v4, v6, v8);
  v24 = v23;

  return v24;
}

uint64_t sub_2211BBDD4(void *a1)
{
  v1 = a1;
  TSTLayoutGetCanvasFrame(v1);
  TSUClampPointInRect();
  v4 = sub_2211BB390(v1, v2, v3);

  return v4;
}

double sub_2211BBE60(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2AD0);
}

double sub_2211BBEC4(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v11 = *(MEMORY[0x277CBF398] + 24);
  rect = *(MEMORY[0x277CBF398] + 16);
  v50 = v7;
  sub_2211BB074(v7);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v56, v60, 16);
  if (v15)
  {
    v51 = 0;
    v16 = 0;
    v17 = HIDWORD(a2);
    v18 = *v57;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v56 + 1) + 8 * i);
        if (objc_msgSend_intersectsGridRange_(v20, v13, a2 | (v17 << 32), a3, v14))
        {
          v21 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v13, a2 | (v17 << 32), a3, v20);
          x = v8[2](v8, v20, v21, v22);
          y = v24;
          width = v26;
          height = v28;
          v34 = objc_msgSend_layoutSpaceType(v20, v30, v31, v32, v33);
          if (v34 > 1)
          {
            if (v34 == 3)
            {
              memset(&v55, 0, sizeof(v55));
              sub_2211B9E30(v50, &v55);
              v54 = v55;
              v66.origin.x = x;
              v66.origin.y = y;
              v66.size.width = width;
              v66.size.height = height;
              v67 = CGRectApplyAffineTransform(v66, &v54);
              x = v67.origin.x;
              y = v67.origin.y;
              width = v67.size.width;
              height = v67.size.height;
              objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v41, v20, v42, v43);
              v17 = (v44 + 1);
LABEL_17:
              v16 = 1;
            }

            else
            {
              if (v34 != 2)
              {
                goto LABEL_14;
              }

              memset(&v55, 0, sizeof(v55));
              sub_2211B9BC4(v50, &v55);
              v54 = v55;
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              v65 = CGRectApplyAffineTransform(v64, &v54);
              x = v65.origin.x;
              y = v65.origin.y;
              width = v65.size.width;
              height = v65.size.height;
              objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v37, v20, v38, v39);
              LODWORD(a2) = v40 + 1;
              v51 = 1;
            }
          }

          else if (v34)
          {
            if (v34 == 1)
            {
              memset(&v55, 0, sizeof(v55));
              sub_2211B9F18(v50, &v55);
              v54 = v55;
              v62.origin.x = x;
              v62.origin.y = y;
              v62.size.width = width;
              v62.size.height = height;
              v63 = CGRectApplyAffineTransform(v62, &v54);
              x = v63.origin.x;
              y = v63.origin.y;
              width = v63.size.width;
              height = v63.size.height;
              v51 = 1;
              goto LABEL_17;
            }

LABEL_14:
            if (objc_msgSend_containsGridRange_(v20, v35, a2 | (v17 << 32), a3, v36))
            {
              goto LABEL_37;
            }
          }

          v68.origin.x = v9;
          v68.origin.y = v10;
          v68.size.width = rect;
          v68.size.height = v11;
          if (CGRectIsNull(v68))
          {
            v9 = x;
            v10 = y;
            rect = width;
            v11 = height;
            continue;
          }

          if (v51)
          {
            if (!objc_msgSend_layoutDirectionIsLeftToRight(v50, v13, v45, v46, v14))
            {
              v69.origin.x = x;
              v69.origin.y = y;
              v69.size.width = width;
              v69.size.height = height;
              MaxX = CGRectGetMaxX(v69);
              v70.origin.x = v9;
              v70.origin.y = v10;
              v70.size.width = rect;
              v70.size.height = v11;
              if (MaxX <= CGRectGetMaxX(v70))
              {
                goto LABEL_28;
              }

              v71.origin.x = x;
              v71.origin.y = y;
              v71.size.width = width;
              v71.size.height = height;
              v48 = CGRectGetMaxX(v71);
              v72.origin.x = v9;
              v72.origin.y = v10;
              v72.size.width = rect;
              v72.size.height = v11;
              width = width - (v48 - CGRectGetMaxX(v72));
              if (width >= 0.0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            if (x < v9)
            {
              width = width - (v9 - x);
              if (width >= 0.0)
              {
                x = x + v9 - x;
                goto LABEL_28;
              }

LABEL_27:
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

LABEL_28:
          if ((v16 & (y < v10)) == 1)
          {
            height = height - (v10 - y);
            if (height >= 0.0)
            {
              y = y + v10 - y;
            }

            else
            {
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

          v73.origin.x = v9;
          v73.origin.y = v10;
          v73.size.width = rect;
          v73.size.height = v11;
          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = height;
          v74 = CGRectUnion(v73, v75);
          rect = v74.size.width;
          v9 = v74.origin.x;
          v10 = v74.origin.y;
          v11 = v74.size.height;
          continue;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v56, v60, 16);
      x = v9;
      if (!v15)
      {
        goto LABEL_37;
      }
    }
  }

  x = v9;
LABEL_37:

  return x;
}

double sub_2211BC400(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BBEC4(v5, a2, a3, &unk_2834A2AD0);
  v14 = sub_2211B87F0(v5, v7, v8, v9, v10, v6, v11, v12, v13);

  return v14;
}

double sub_2211BC494(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BBE60(v5, a2, a3);
  v14 = sub_2211B87F0(v5, v7, v8, v9, v10, v6, v11, v12, v13);

  return v14;
}

double sub_2211BC520(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  sub_2211BB074(a1);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v9 = v32 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v31, v35, 16);
  if (v13)
  {
    v14 = *v32;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_intersectsGridRange_(v16, v11, a2, a3, v12, v31))
        {
          v17 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v11, a2, a3, v16);
          objc_msgSend_canvasStrokeFrameForGridRange_(v16, v18, v17, v18, v19);
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          if (objc_msgSend_containsGridRange_(v16, v28, a2, a3, v29))
          {
            x = v21;
            goto LABEL_15;
          }

          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          if (CGRectIsNull(v37))
          {
            x = v21;
            y = v23;
            width = v25;
            height = v27;
          }

          else
          {
            v38.origin.x = x;
            v38.origin.y = y;
            v38.size.width = width;
            v38.size.height = height;
            v40.origin.x = v21;
            v40.origin.y = v23;
            v40.size.width = v25;
            v40.size.height = v27;
            v39 = CGRectUnion(v38, v40);
            x = v39.origin.x;
            y = v39.origin.y;
            width = v39.size.width;
            height = v39.size.height;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v31, v35, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return x;
}

double sub_2211BC768(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BC520(a1, v4 | v3, v6 | v5);
}

double sub_2211BC7C4(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BC768(v5, a2, a3);
  v14 = sub_2211B87F0(v5, v7, v8, v9, v10, v6, v11, v12, v13);

  return v14;
}

double sub_2211BC850(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2AF0);
}

void sub_2211BC8C0(uint64_t a1, void *a2)
{
  v21 = a2;
  if ((objc_msgSend_isFrozen(v21, v3, v4, v5, v6) & 1) == 0)
  {
    objc_msgSend_alignedStrokeFrame(v21, v7, v8, v9, v10);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    IsNull = CGRectIsNull(*(*(*(a1 + 32) + 8) + 48));
    v20 = *(*(a1 + 32) + 8);
    if (IsNull)
    {
      *(v20 + 48) = v12;
      *(v20 + 56) = v14;
      *(v20 + 64) = v16;
      *(v20 + 72) = v18;
    }

    else
    {
      v23.origin.x = v12;
      v23.origin.y = v14;
      v23.size.width = v16;
      v23.size.height = v18;
      *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(v20 + 48), v23);
    }
  }
}

double sub_2211BC9B4(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BCA14(a1, v4 | v3, v6 | v5, 0);
}

double sub_2211BCA14(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 24);
  rect = *(MEMORY[0x277CBF398] + 16);
  v61 = v7;
  sub_2211BB074(v7);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  obj = v68 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v67, v71, 16);
  if (v14)
  {
    v62 = 0;
    v15 = 0;
    v16 = HIDWORD(a2);
    v17 = *v68;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v67 + 1) + 8 * i);
        if (a4 == 1)
        {
          if (!objc_msgSend_intersectsRowGridRange_(*(*(&v67 + 1) + 8 * i), v12, a2 | (v16 << 32), a3, v13))
          {
            continue;
          }

          v31 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v16 << 32), a3, v19);
          objc_msgSend_alignedStrokeLineForRowGridRange_(v19, v32, v31, v32, v33);
        }

        else if (a4 == 2)
        {
          if (!objc_msgSend_intersectsColumnGridRange_(*(*(&v67 + 1) + 8 * i), v12, a2 | (v16 << 32), a3, v13))
          {
            continue;
          }

          v20 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v16 << 32), a3, v19);
          objc_msgSend_alignedStrokeLineForColumnGridRange_(v19, v21, v20, v21, v22);
        }

        else
        {
          if (!objc_msgSend_intersectsGridRange_(*(*(&v67 + 1) + 8 * i), v12, a2 | (v16 << 32), a3, v13))
          {
            continue;
          }

          v34 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v16 << 32), a3, v19);
          objc_msgSend_alignedStrokeFrameForGridRange_(v19, v35, v34, v35, v36);
        }

        x = v27;
        y = v28;
        width = v29;
        height = v30;
        v41 = objc_msgSend_layoutSpaceType(v19, v23, v24, v25, v26, v61);
        switch(v41)
        {
          case 1:
            memset(&v66, 0, sizeof(v66));
            sub_2211B9F18(v61, &v66);
            v65 = v66;
            v77.origin.x = x;
            v77.origin.y = y;
            v77.size.width = width;
            v77.size.height = height;
            v78 = CGRectApplyAffineTransform(v77, &v65);
            x = v78.origin.x;
            y = v78.origin.y;
            width = v78.size.width;
            height = v78.size.height;
            v62 = 1;
            goto LABEL_20;
          case 3:
            memset(&v66, 0, sizeof(v66));
            sub_2211B9E30(v61, &v66);
            v65 = v66;
            v75.origin.x = x;
            v75.origin.y = y;
            v75.size.width = width;
            v75.size.height = height;
            v76 = CGRectApplyAffineTransform(v75, &v65);
            x = v76.origin.x;
            y = v76.origin.y;
            width = v76.size.width;
            height = v76.size.height;
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v50, v19, v51, v52);
            v16 = (v53 + 1);
LABEL_20:
            v15 = 1;
            break;
          case 2:
            memset(&v66, 0, sizeof(v66));
            sub_2211B9BC4(v61, &v66);
            v65 = v66;
            v73.origin.x = x;
            v73.origin.y = y;
            v73.size.width = width;
            v73.size.height = height;
            v74 = CGRectApplyAffineTransform(v73, &v65);
            x = v74.origin.x;
            y = v74.origin.y;
            width = v74.size.width;
            height = v74.size.height;
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v46, v19, v47, v48);
            LODWORD(a2) = v49 + 1;
            v62 = 1;
            break;
          default:
            if (objc_msgSend_isRepeat(v19, v42, v43, v44, v45) && (objc_msgSend_containsGridRange_(v19, v54, a2 | (v16 << 32), a3, v55) & 1) != 0)
            {
              goto LABEL_42;
            }

            break;
        }

        v79.origin.x = v8;
        v79.origin.y = v9;
        v79.size.width = rect;
        v79.size.height = v10;
        if (CGRectIsNull(v79))
        {
          v8 = x;
          v9 = y;
          rect = width;
          v10 = height;
          continue;
        }

        if (v62)
        {
          if (!objc_msgSend_layoutDirectionIsLeftToRight(v19, v12, v56, v57, v13))
          {
            v80.origin.x = x;
            v80.origin.y = y;
            v80.size.width = width;
            v80.size.height = height;
            MaxX = CGRectGetMaxX(v80);
            v81.origin.x = v8;
            v81.origin.y = v9;
            v81.size.width = rect;
            v81.size.height = v10;
            if (MaxX <= CGRectGetMaxX(v81))
            {
              goto LABEL_33;
            }

            v82.origin.x = x;
            v82.origin.y = y;
            v82.size.width = width;
            v82.size.height = height;
            v59 = CGRectGetMaxX(v82);
            v83.origin.x = v8;
            v83.origin.y = v9;
            v83.size.width = rect;
            v83.size.height = v10;
            width = width - (v59 - CGRectGetMaxX(v83));
            if (width >= 0.0)
            {
              goto LABEL_33;
            }

LABEL_32:
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
            goto LABEL_33;
          }

          if (x < v8)
          {
            width = width - (v8 - x);
            if (width < 0.0)
            {
              goto LABEL_32;
            }

            x = x + v8 - x;
          }
        }

LABEL_33:
        if ((v15 & (y < v9)) == 1)
        {
          height = height - (v9 - y);
          if (height >= 0.0)
          {
            y = y + v9 - y;
          }

          else
          {
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
          }
        }

        v84.origin.x = v8;
        v84.origin.y = v9;
        v84.size.width = rect;
        v84.size.height = v10;
        v86.origin.x = x;
        v86.origin.y = y;
        v86.size.width = width;
        v86.size.height = height;
        v85 = CGRectUnion(v84, v86);
        rect = v85.size.width;
        v8 = v85.origin.x;
        v9 = v85.origin.y;
        v10 = v85.size.height;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v67, v71, 16);
      x = v8;
      if (!v14)
      {
        goto LABEL_42;
      }
    }
  }

  x = v8;
LABEL_42:

  return x;
}

id sub_2211BD990(void *a1, uint64_t a2, unint64_t a3, void *a4, int a5, int a6, char a7, void *a8, CGFloat a9, double a10, double a11)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = WORD2(a2);
  }

  v12 = a2 << 32;
  v13 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v12 = 0xFFFFFFFF00000000;
  }

  v14 = (a3 + v11 - 1);
  if (HIDWORD(a3))
  {
    v13 = ((v12 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v14 = 0xFFFFFFFFLL;
  }

  v15 = sub_2211BDA14(a1, v12 | v11, v14 | v13, a4, a5, a6, a7, a8, a9, a10, a11);

  return v15;
}

id sub_2211BDA14(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, int a6, char a7, void *a8, CGFloat a9, double a10, double a11)
{
  v20 = a1;
  v79 = a4;
  memset(&v82, 0, sizeof(v82));
  CGAffineTransformMakeScale(&v82, a9, a9);
  v80 = v20;
  if (a6)
  {
    v25 = sub_2211BCA14(v20, a2, a3, 0);
    v27 = vaddq_f64(*&v82.tx, vmlaq_n_f64(vmulq_n_f64(*&v82.c, v26), *&v82.a, v25));
  }

  else
  {
    v27 = vdupq_n_s64(0xC0F86A0000000000);
  }

  v77 = v27;
  if ((a5 & 0x2C) != 0)
  {
    v28 = sub_2211BDE48(v20, a2, a3, v79, a5, a6, a7, a9, a10, a11);
  }

  else
  {
    v28 = 0;
  }

  if ((a5 & 0x13) == 0)
  {
    goto LABEL_17;
  }

  v29 = sub_2211BE8B0(v80, a2, a3, v79, a5, a6, a7, a9, a10, a11);
  v30 = v29;
  if (v29 && v28)
  {
    v31 = objc_msgSend_first(v29, v21, v22, v23, v24);
    v36 = objc_msgSend_second(v30, v32, v33, v34, v35);
    v41 = objc_msgSend_first(v28, v37, v38, v39, v40);
    v49 = objc_msgSend_second(v28, v42, v43, v44, v45);
    if (v31 && v41)
    {
      if (a11 == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v31, v46, v41, v47, v48);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v31, v46, v41, v47, v48);
      }
      v50 = ;
    }

    else
    {
      if (v31)
      {
        v66 = v31;
      }

      else
      {
        v66 = v41;
      }

      v50 = v66;
    }

    v65 = v50;
    if (v36 && v49)
    {
      if (a11 == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v36, v51, v49, v52, v53);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v36, v51, v49, v52, v53);
      }
      v67 = ;
    }

    else
    {
      if (v36)
      {
        v68 = v36;
      }

      else
      {
        v68 = v49;
      }

      v67 = v68;
    }

    v64 = v67;

    if (!v65)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v29)
  {
    v54 = objc_msgSend_first(v29, v21, v22, v23, v24);
    v59 = objc_msgSend_second(v30, v55, v56, v57, v58);
  }

  else
  {
LABEL_17:
    v54 = objc_msgSend_first(v28, v21, v22, v23, v24, *&v77);
    v59 = objc_msgSend_second(v28, v60, v61, v62, v63);
    v30 = 0;
  }

  v64 = v59;
  v65 = v54;
  if (!v54)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (a6)
  {
    CGAffineTransformMakeTranslation(&v81, -v77.f64[0], -v77.f64[1]);
    objc_msgSend_transformUsingAffineTransform_(v65, v69, &v81, v70, v71);
    CGAffineTransformMakeTranslation(&v81, -v77.f64[0], -v77.f64[1]);
    objc_msgSend_transformUsingAffineTransform_(v64, v72, &v81, v73, v74);
  }

  if (a8)
  {
    v75 = v64;
    *a8 = v64;
  }

LABEL_40:

  return v65;
}

id sub_2211BDE48(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, char a6, char a7, double a8, double a9, double a10)
{
  v18 = a1;
  v19 = a4;
  v86 = v19;
  if (objc_msgSend_isRectangle(v19, v20, v21, v22, v23))
  {
    v28 = !sub_2211B7A50(v18, v24, v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_msgSend_boundingCellRange(v19, v24, v25, v26, v27);
  v34 = v30;
  if (WORD2(v29) == 0x7FFF)
  {
    v35 = -1;
  }

  else
  {
    v35 = WORD2(v29);
  }

  v89 = v35;
  v80 = objc_msgSend_array(MEMORY[0x277CBEB18], v30, v31, v32, v33);
  v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38, v39);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = sub_2211BE574;
  v103[3] = &unk_278460AE0;
  v91 = v18;
  v104 = v91;
  v107 = a8;
  v108 = a9;
  v110 = a6;
  v111 = a7;
  v109 = a10;
  v82 = v80;
  v105 = v82;
  v83 = v40;
  v106 = v83;
  v41 = MEMORY[0x223DA1C10](v103);
  v46 = v41;
  v47 = a3 + 1;
  if (a3 + 1 >= a2)
  {
    v54 = 0;
    v92 = a2 & 0xFFFFFFFF00000000;
    v55 = 0x7FFFFFFFLL;
    v90 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v55 = HIDWORD(a2);
    }

    v81 = v55;
    if (v34)
    {
      v56 = v89 + v34;
    }

    else
    {
      v56 = 0;
    }

    v84 = v56;
    v78 = v96;
    v79 = v95;
    v57 = (~a5 & 0x2C) == 0 || v28;
    if (a3 == -2)
    {
      v58 = 0x7FFF;
    }

    else
    {
      v58 = a3 + 1;
    }

    v85 = v58;
    v59 = ~a3 + a2;
    while (1)
    {
      v60 = a3;
      v61 = (a2 + v54);
      v62 = v59 + v54;
      a3 = a3 & 0xFFFFFFFF00000000 | v61;
      if (v57)
      {
        break;
      }

      if (v54)
      {
        if (v62)
        {
          goto LABEL_29;
        }

        if (v47 == -1)
        {
          v88 = 0;
        }

        else
        {
          v88 = 0;
          if (v90 != 0xFFFFFFFF && HIDWORD(v60) != 0xFFFFFFFF && v90 <= HIDWORD(v60))
          {
            v88 = ((v60 - v92) & 0xFFFFFFFF00000000) + 0x100000001;
          }
        }

        v70 = objc_msgSend_layoutEngine(v91, v42, v43, v44, v45, v78);
        v74 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v70, v71, v85, v72, v73);

        if (v47 == v84)
        {
          goto LABEL_51;
        }

        if ((a5 & 0x28) == 0x28)
        {
          goto LABEL_54;
        }

        if ((a5 & 8) != 0)
        {
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = sub_2211BE678;
          v97[3] = &unk_278460B08;
          v98[1] = v92 | v61;
          v98[2] = a3;
          v98[0] = v46;
          objc_msgSend_enumerateMissingRowsIntersectingCellRange_usingBlock_(v86, v77, v81 | (v74 << 32), v88, v97);
          v69 = v98;
          goto LABEL_62;
        }

        if ((a5 & 0x20) != 0)
        {
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v95[0] = sub_2211BE6A4;
          v95[1] = &unk_278460B08;
          v96[1] = v92 | v61;
          v96[2] = a3;
          v96[0] = v46;
          objc_msgSend_enumerateRowsIntersectingCellRange_usingBlock_(v86, v75, v81 | (v74 << 32), v88, v94);
          v69 = v78;
          goto LABEL_62;
        }
      }

      else
      {
        if (a2 == -1)
        {
          v87 = 0;
        }

        else
        {
          v87 = 0;
          if (v90 != 0xFFFFFFFF && HIDWORD(v60) != 0xFFFFFFFF && v90 <= HIDWORD(v60))
          {
            v87 = ((v60 - v92) & 0xFFFFFFFF00000000) + 0x100000001;
          }
        }

        v63 = objc_msgSend_layoutEngine(v91, v42, v43, v44, v45, v78, v79);
        v67 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v63, v64, (a2 - 1), v65, v66);

        if (v89 == a2)
        {
          goto LABEL_43;
        }

        if ((a5 & 0x24) == 0x24)
        {
          goto LABEL_54;
        }

        if ((a5 & 4) != 0)
        {
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = sub_2211BE620;
          v101[3] = &unk_278460B08;
          v102[1] = v92 | v61;
          v102[2] = a3;
          v102[0] = v46;
          objc_msgSend_enumerateMissingRowsIntersectingCellRange_usingBlock_(v86, v76, v81 | (v67 << 32), v87, v101);
          v69 = v102;
          goto LABEL_62;
        }

        if ((a5 & 0x20) != 0)
        {
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = sub_2211BE64C;
          v99[3] = &unk_278460B08;
          v100[1] = v92 | v61;
          v100[2] = a3;
          v100[0] = v46;
          objc_msgSend_enumerateRowsIntersectingCellRange_usingBlock_(v86, v68, v81 | (v67 << 32), v87, v99);
          v69 = v100;
LABEL_62:
        }
      }

LABEL_55:
      ++v54;
      if (a2 + v54 > v47)
      {
        goto LABEL_8;
      }
    }

    if (v54)
    {
      if (v62)
      {
LABEL_29:
        if ((a5 & 0x20) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
LABEL_51:
        if ((a5 & 8) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
LABEL_43:
      if ((a5 & 4) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_54:
    v41 = v46[2](v46, v92 | v61, a3);
    goto LABEL_55;
  }

LABEL_8:
  v48 = sub_2211BE6D0(v41, v82);
  v49 = sub_2211BE6D0(v48, v83);
  v52 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v50, v48, v49, v51);

  return v52;
}

void sub_2211BE574(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  v9 = *(a1 + 72);
  v15 = 0;
  v10 = objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(v4, a2, a2, a3, 2, v7, v8, &v15, v5, v6, v9);
  v14 = v15;
  if (v10)
  {
    objc_msgSend_addObject_(*(a1 + 40), v11, v10, v12, v13);
  }

  if (v14)
  {
    objc_msgSend_addObject_(*(a1 + 48), v11, v14, v12, v13);
  }
}

id sub_2211BE6D0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a2;
  v4 = 0;
  v5 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v4)
        {
          objc_msgSend_bounds(*(*(&v21 + 1) + 8 * i), v6, v7, v8, v9, v21);
          objc_msgSend_bounds(v4, v14, v15, v16, v17);
          if ((TSUIntersectsRect() & 1) == 0)
          {
            objc_msgSend_appendBezierPath_(v5, v6, v13, v8, v9);
            v18 = v13;

            v4 = v18;
          }
        }

        else
        {
          v19 = v13;

          v4 = v19;
          v5 = v4;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v21, v25, 16);
    }

    while (v10);
  }

  return v5;
}

id sub_2211BE8B0(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, char a6, char a7, double a8, double a9, double a10)
{
  v18 = a1;
  v19 = a4;
  v99 = v19;
  if (objc_msgSend_isRectangle(v19, v20, v21, v22, v23))
  {
    v28 = !sub_2211B7A50(v18, v24, v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_msgSend_boundingCellRange(v19, v24, v25, v26, v27);
  v34 = v30;
  if (v29 == 0x7FFFFFFF)
  {
    v35 = 0xFFFFFFFF00000000;
  }

  else
  {
    v35 = v29 << 32;
  }

  v96 = objc_msgSend_array(MEMORY[0x277CBEB18], v30, v31, v32, v33);
  v101 = v28;
  v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38, v39);
  v41 = HIDWORD(a2);
  v42 = HIDWORD(a3);
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = sub_2211BEFA4;
  v114[3] = &unk_278460AE0;
  v102 = v18;
  v115 = v102;
  v118 = a8;
  v119 = a9;
  v121 = a6;
  v122 = a7;
  v120 = a10;
  v94 = v96;
  v116 = v94;
  v95 = v40;
  v117 = v95;
  v43 = MEMORY[0x223DA1C10](v114);
  v104 = v43;
  v48 = HIDWORD(a3) + 1;
  if ((HIDWORD(a3) + 1) >= HIDWORD(a2))
  {
    v55 = 0;
    v56 = &v34[v35 - 0x100000000];
    v100 = HIDWORD(v35);
    v57 = a3;
    v58 = HIDWORD(v56);
    v61 = a3 == -1 || a2 == -1 || a3 < a2;
    v62 = a2 << 32;
    v103 = a2;
    if (a2 == 0xFFFFFFFFLL)
    {
      v62 = 0x7FFF00000000;
    }

    v93 = v62;
    if (v34 >> 32)
    {
      v63 = v58 + 1;
    }

    else
    {
      v63 = 0;
    }

    v97 = v63;
    v64 = (a3 - a2 + 1) | 0x100000000;
    v65 = (~a5 & 0x13) == 0 || v101;
    v66 = HIDWORD(a3) == -2 || v61;
    if (HIDWORD(a3) == -2)
    {
      v67 = 0x7FFFFFFF;
    }

    else
    {
      v67 = HIDWORD(a3) + 1;
    }

    v98 = v67;
    if (v66)
    {
      v68 = 0;
    }

    else
    {
      v68 = v64;
    }

    v91 = v68;
    if (v41 == 0xFFFFFFFF || v61)
    {
      v70 = 0;
    }

    else
    {
      v70 = v64;
    }

    v92 = v70;
    v71 = ~v42 + HIDWORD(a2);
    while (1)
    {
      v72 = (v41 + v55);
      v73 = v71 + v55;
      v74 = v72 << 32;
      v75 = v57 | (v72 << 32);
      if (v65)
      {
        break;
      }

      if (v55)
      {
        if (v73)
        {
          goto LABEL_50;
        }

        v81 = objc_msgSend_layoutEngine(v102, v44, v45, v46, v47);
        v85 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v81, v82, v98, v83, v84);

        if (v48 == v97)
        {
          goto LABEL_56;
        }

        if ((a5 & 0x12) == 0x12)
        {
          goto LABEL_63;
        }

        if ((a5 & 2) != 0)
        {
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = sub_2211BF0A0;
          v108[3] = &unk_278460B08;
          v109[1] = v74 | v103;
          v109[2] = v75;
          v109[0] = v104;
          objc_msgSend_enumerateMissingColumnsIntersectingCellRange_usingBlock_(v99, v90, v93 | v85, v91, v108);
          v87 = v109;
          goto LABEL_71;
        }

        if ((a5 & 0x10) != 0)
        {
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = sub_2211BF0C8;
          v106[3] = &unk_278460B08;
          v107[1] = v74 | v103;
          v107[2] = v75;
          v107[0] = v104;
          objc_msgSend_enumerateColumnsIntersectingCellRange_usingBlock_(v99, v88, v93 | v85, v91, v106);
          v87 = v107;
          goto LABEL_71;
        }
      }

      else
      {
        v76 = objc_msgSend_layoutEngine(v102, v44, v45, v46, v47);
        v80 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v76, v77, (v41 - 1), v78, v79);

        if (v41 == v100)
        {
          goto LABEL_53;
        }

        if ((a5 & 0x11) == 0x11)
        {
          goto LABEL_63;
        }

        if (a5)
        {
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = sub_2211BF050;
          v112[3] = &unk_278460B08;
          v113[1] = v74 | v103;
          v113[2] = v75;
          v113[0] = v104;
          objc_msgSend_enumerateMissingColumnsIntersectingCellRange_usingBlock_(v99, v89, v93 | v80, v92, v112);
          v87 = v113;
          goto LABEL_71;
        }

        if ((a5 & 0x10) != 0)
        {
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = sub_2211BF078;
          v110[3] = &unk_278460B08;
          v111[1] = v74 | v103;
          v111[2] = v75;
          v111[0] = v104;
          objc_msgSend_enumerateColumnsIntersectingCellRange_usingBlock_(v99, v86, v93 | v80, v92, v110);
          v87 = v111;
LABEL_71:
        }
      }

LABEL_64:
      ++v55;
      if (v41 + v55 > v48)
      {
        goto LABEL_8;
      }
    }

    if (v55)
    {
      if (v73)
      {
LABEL_50:
        if ((a5 & 0x10) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_56:
        if ((a5 & 2) == 0)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
LABEL_53:
      if ((a5 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_63:
    v43 = v104[2](v104, v74 | v103, v75);
    goto LABEL_64;
  }

LABEL_8:
  v49 = sub_2211BF0F0(v43, v94);
  v50 = sub_2211BF0F0(v49, v95);
  v53 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v51, v49, v50, v52);

  return v53;
}

void sub_2211BEFA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  v9 = *(a1 + 72);
  v15 = 0;
  v10 = objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(v4, a2, a2, a3, 1, v7, v8, &v15, v5, v6, v9);
  v14 = v15;
  if (v10)
  {
    objc_msgSend_addObject_(*(a1 + 40), v11, v10, v12, v13);
  }

  if (v14)
  {
    objc_msgSend_addObject_(*(a1 + 48), v11, v14, v12, v13);
  }
}

id sub_2211BF0F0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a2;
  v4 = 0;
  v5 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v4)
        {
          objc_msgSend_bounds(*(*(&v21 + 1) + 8 * i), v6, v7, v8, v9, v21);
          objc_msgSend_bounds(v4, v14, v15, v16, v17);
          if ((TSUIntersectsRect() & 1) == 0)
          {
            objc_msgSend_appendBezierPath_(v5, v6, v13, v8, v9);
            v18 = v13;

            v4 = v18;
          }
        }

        else
        {
          v19 = v13;

          v4 = v19;
          v5 = v4;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v21, v25, 16);
    }

    while (v10);
  }

  return v5;
}

double sub_2211BF2D0(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2B10);
}

uint64_t sub_2211BFB80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211BFB98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  if (!objc_msgSend_intersectsCellRange_(*(a1 + 32), a2, a2, a3, a5))
  {
    return;
  }

  if (*(a1 + 200) == 1 && (*(a1 + 201) & 1) == 0)
  {
    v6 = objc_msgSend_visiblePartOfRange_(*(a1 + 32), v8, v6, v5, v9);
    v5 = v8;
  }

  v10 = HIDWORD(v5);
  v11 = HIDWORD(v6);
  v12 = *(a1 + 144);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v15 = *(a1 + 148);
      v16 = *(a1 + 156);
    }

    else
    {
      LODWORD(v13) = v6;
      v14 = v5;
      if (v12 != 3)
      {
        goto LABEL_27;
      }

      v15 = *(a1 + 164);
      v16 = *(a1 + 172);
    }

    v13 = sub_221119E0C(v15, v16, v6, v5);
    v11 = HIDWORD(v13);
    v10 = HIDWORD(v8);
    v14 = v8;
    goto LABEL_26;
  }

  if (!v12)
  {
    v17 = *(a1 + 148);
    if (v17 == 0x7FFFFFFF || (v17 & 0xFFFF00000000) == 0x7FFF00000000 || (v8 = *(a1 + 156), !HIDWORD(v8)) || !v8 || (v18 = sub_221119E0C(v17, v8, v6, v5), (v18 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) || !HIDWORD(v8) || !v8 || v18 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v18) & 0x101FFFF00000000) == 0 && v8 == *(MEMORY[0x277D813C8] + 8))
    {
      v14 = v5;
    }

    else
    {
      LOWORD(v11) = v8 + WORD2(v6);
      v14 = v5 - v8;
    }

    v19 = *(a1 + 164);
    if (v19 == 0x7FFFFFFF || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || (v8 = *(a1 + 172), !HIDWORD(v8)) || !v8 || (v20 = sub_221119E0C(v19, v8, v6 & 0xFFFF0000FFFFFFFFLL | (v11 << 32), v5 & 0xFFFFFFFF00000000 | v14), (v20 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) || !HIDWORD(v8) || !v8 || v20 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v20) & 0x101FFFF00000000) == 0 && v8 == *(MEMORY[0x277D813C8] + 8))
    {
      LODWORD(v13) = v6;
    }

    else
    {
      v13 = v6 + HIDWORD(v8);
      v10 = (HIDWORD(v5) - HIDWORD(v8));
    }

    goto LABEL_27;
  }

  LODWORD(v13) = v6;
  v14 = v5;
  if (v12 == 1)
  {
    v13 = sub_221119E0C(*(a1 + 180), *(a1 + 188), v6, v5);
    v14 = v8;
    v11 = HIDWORD(v13);
    v10 = HIDWORD(v8);
LABEL_26:
    v6 = v13;
  }

LABEL_27:
  v52 = 0;
  if (v12 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = &v52;
  }

  v22 = *(a1 + 196);
  v23 = v11 << 32;
  if (v22)
  {
    sub_2211BD990(*(a1 + 40), v6 & 0xFFFF000000000000 | v13 | v23, v14 | (v10 << 32), *(a1 + 48), v22, 0, *(a1 + 200), v21, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  else
  {
    objc_msgSend_alignedStrokeFramePathForRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(*(a1 + 40), v8, v6 & 0xFFFF000000000000 | v13 | v23, v14 | (v10 << 32), v22, 0, *(a1 + 200), v21, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
  v24 = ;
  v25 = v24;
  v26 = *(a1 + 112);
  v49 = *(a1 + 96);
  v50 = v26;
  v51 = *(a1 + 128);
  objc_msgSend_transformUsingAffineTransform_(v25, v27, &v49, v28, v29);
  v30 = *(a1 + 112);
  v49 = *(a1 + 96);
  v50 = v30;
  v51 = *(a1 + 128);
  objc_msgSend_transformUsingAffineTransform_(v52, v31, &v49, v32, v33);
  if (v24)
  {
    v37 = *(*(a1 + 56) + 8);
    v38 = *(v37 + 40);
    if (v38)
    {
      if (*(a1 + 88) == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v38, v34, v24, v35, v36);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v38, v34, v24, v35, v36);
      }
      v39 = ;
      v42 = *(*(a1 + 56) + 8);
      v41 = *(v42 + 40);
      *(v42 + 40) = v39;
    }

    else
    {
      v40 = v24;
      v41 = *(v37 + 40);
      *(v37 + 40) = v40;
    }
  }

  if (v52)
  {
    v43 = *(*(a1 + 64) + 8);
    v44 = *(v43 + 40);
    if (v44)
    {
      if (*(a1 + 88) == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v44, v34, v52, v35, v36);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v44, v34, v52, v35, v36);
      }
      v45 = ;
      v48 = *(*(a1 + 64) + 8);
      v47 = *(v48 + 40);
      *(v48 + 40) = v45;
    }

    else
    {
      v46 = v52;
      v47 = *(v43 + 40);
      *(v43 + 40) = v46;
    }
  }
}

double sub_2211C0188(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBF3A0];
  if (sub_2211B44A8(v1) > 0.0)
  {
    v7 = sub_2211B4394(v1, v3, v4, v5, v6);
    v11 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v8, v7, v9, v10);
    objc_msgSend_frameForGridRange_(v7, v12, v11, v12, v13);
    v2 = v14;
    objc_msgSend_alignedRectForLayoutRect_(v7, v15, v16, v17, v18);
  }

  return v2;
}

uint64_t sub_2211C027C(void *a1)
{
  v1 = a1;
  v6 = v1;
  if (v1 && v1[427] == 1)
  {
    v7 = objc_msgSend_tableInfo(v1, v2, v3, v4, v5);
    if (objc_msgSend_tableNameBorderEnabled(v7, v8, v9, v10, v11))
    {
      hasTableBorder = objc_msgSend_hasTableBorder(v7, v12, v13, v14, v15);
    }

    else
    {
      hasTableBorder = 0;
    }
  }

  else
  {
    hasTableBorder = 0;
  }

  return hasTableBorder;
}

double sub_2211C031C(void *a1)
{
  v1 = a1;
  v6 = 0.0;
  if (sub_2211C027C(v1))
  {
    v7 = objc_msgSend_tableInfo(v1, v2, v3, v4, v5);
    v12 = objc_msgSend_tableNameBorderStroke(v7, v8, v9, v10, v11);
    objc_msgSend_width(v12, v13, v14, v15, v16);
    v6 = v17;
  }

  return v6;
}

void sub_2211C0390(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_2211C03BC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2211B4394(a1, a2, a3, a4, a5);
  objc_msgSend_frameForTableNameBorder(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

double sub_2211C042C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2211B4394(a1, a2, a3, a4, a5);
  objc_msgSend_strokeFrameForTableNameBorder(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

double sub_2211C049C(void *a1)
{
  v1 = a1;
  v2 = sub_2211C0188(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_2211BA370(v1) && sub_2211B848C(v1))
  {
    memset(&v11, 0, sizeof(v11));
    sub_2211B9D04(v1, &v11);
    v10 = v11;
    v12.origin.x = v2;
    v12.origin.y = v4;
    v12.size.width = v6;
    v12.size.height = v8;
    *&v2 = CGRectApplyAffineTransform(v12, &v10);
  }

  return v2;
}

uint64_t sub_2211C0634(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v10 = objc_msgSend_tableInfo(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_layoutEngine(v5, v11, v12, v13, v14);
  v16 = v15;
  v17 = &v36;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3812000000;
  v39 = sub_2211C0894;
  v40 = nullsub_21;
  v41 = &unk_22188E88F;
  v42 = 0x7FFF7FFFFFFFLL;
  if ((a2 & 0xFFFF00000000) != 0)
  {
    v18 = a2;
    v19 = WORD2(a2) | 0x100000000;
    if (a3)
    {
      v20 = 70;
    }

    else
    {
      v20 = 68;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2211C08A4;
    v32[3] = &unk_278460B58;
    v35 = &v36;
    v21 = v15;
    v33 = v21;
    v34 = v10;
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v5, v22, v18, v19, v20, 0x400000, v32);
    v25 = objc_msgSend_mergesIntersectingRange_(v21, v23, v18, v19, v24);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2211C0B28;
    v31[3] = &unk_278460B80;
    v31[4] = &v36;
    v31[5] = v18;
    v31[6] = v19;
    objc_msgSend_enumerateRangesUsingBlock_(v25, v26, v31, v27, v28);

    v17 = v37;
  }

  v29 = TSUCellCoord::convertSpanningToInvalid(v17 + 6);
  _Block_object_dispose(&v36, 8);

  return v29;
}

void sub_2211C0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C08A4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v10 = v5;
  v11 = *(*(*(a1 + 48) + 8) + 48);
  if (v11 == 0x7FFFFFFF || (v11 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = objc_msgSend_cell(v5, v6, v7, v8, v9);
    v18 = objc_msgSend_valueType(v13, v14, v15, v16, v17);

    if (v18)
    {
      v23 = objc_msgSend_cell(v10, v19, v20, v21, v22);
      if (objc_msgSend_valueType(v23, v24, v25, v26, v27) == 3)
      {
        v32 = objc_msgSend_cell(v10, v28, v29, v30, v31);
        v37 = objc_msgSend_stringValue(v32, v33, v34, v35, v36);
        v42 = objc_msgSend_length(v37, v38, v39, v40, v41);

        if (!v42)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v43, v44, v45, v46);
    }

    else
    {
      v47 = objc_msgSend_cell(v10, v19, v20, v21, v22);
      if (objc_msgSend_valueType(v47, v48, v49, v50, v51) || !objc_msgSend_isDynamicallyChangingContent(*(a1 + 32), v52, v53, v54, v55))
      {

        v69 = 0;
      }

      else
      {
        v60 = objc_msgSend_dynamicContentDelegate(*(a1 + 32), v56, v57, v58, v59);
        v91 = 0;
        v65 = objc_msgSend_cellID(v10, v61, v62, v63, v64);
        v68 = objc_msgSend_cell_forCellID_(v60, v66, &v91, v65, v67);
        v69 = v91;

        if (v68)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v70, v71, v72, v73);
        }
      }

      v74 = *(*(*(a1 + 48) + 8) + 48);
      if (v74 == 0x7FFFFFFF || (v74 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v77 = *(a1 + 32);
        v76 = *(a1 + 40);
        v78 = objc_msgSend_cellID(v10, v70, v71, v72, v73);
        v82 = objc_msgSend_modelCellIDForLayoutCellID_(v77, v79, v78, v80, v81);
        v86 = objc_msgSend_mergeRangeAtCellID_(v76, v83, v82, v84, v85);
        if (v86 != 0x7FFFFFFF && (v86 & 0xFFFF00000000) != 0x7FFF00000000 && v87 >> 32 && v87)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v87, v88, v89, v90);
        }
      }
    }
  }

  else
  {
    *a3 = 1;
  }

LABEL_28:
}

uint64_t sub_2211C0B28(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v10.origin = a3;
  v10.size = a4;
  v5 = *(*(*(a1 + 32) + 8) + 48);
  result = TSUCellRect::lastColumn(&v10);
  if (v5 == 0x7FFFFFFF || (v5 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    *(*(*(a1 + 32) + 8) + 48) = *(a1 + 40) | (result << 32);
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 52);
    if (result > v9)
    {
      LOWORD(v9) = result;
    }

    *(v8 + 52) = v9;
  }

  return result;
}

uint64_t sub_2211C0BB8(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v10 = objc_msgSend_tableInfo(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_layoutEngine(v5, v11, v12, v13, v14);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3812000000;
  v45 = sub_2211C0894;
  v46 = nullsub_21;
  v47 = &unk_22188E88F;
  v48 = 0x7FFF7FFFFFFFLL;
  if (WORD2(a2) < (objc_msgSend_numberOfColumns(v15, v16, v17, v18, v19) - 1))
  {
    v24 = (a2 + 0x100000000) & 0xFFFF00000000 | a2;
    v25 = (objc_msgSend_numberOfColumns(v15, v20, v21, v22, v23) + ~WORD2(a2)) | 0x100000000;
    if (a3)
    {
      v26 = 66;
    }

    else
    {
      v26 = 64;
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2211C0E48;
    v38[3] = &unk_278460B58;
    v41 = &v42;
    v27 = v15;
    v39 = v27;
    v40 = v10;
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v5, v28, v24, v25, v26, 0x400000, v38);
    v31 = objc_msgSend_mergesIntersectingRange_(v27, v29, v24, v25, v30);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2211C10FC;
    v37[3] = &unk_278460B80;
    v37[4] = &v42;
    v37[5] = v24;
    v37[6] = v25;
    objc_msgSend_enumerateRangesUsingBlock_(v31, v32, v37, v33, v34);
  }

  v35 = TSUCellCoord::convertSpanningToInvalid(v43 + 6);
  _Block_object_dispose(&v42, 8);

  return v35;
}

void sub_2211C0DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C0E48(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v10 = v5;
  v11 = *(*(*(a1 + 48) + 8) + 48);
  if (v11 != 0x7FFFFFFF && (v11 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *a3 = 1;
    goto LABEL_22;
  }

  v13 = objc_msgSend_cell(v5, v6, v7, v8, v9);
  if (objc_msgSend_valueType(v13, v14, v15, v16, v17))
  {
  }

  else
  {
    v26 = objc_msgSend_cell(v10, v18, v19, v20, v21);
    hasFormula = objc_msgSend_hasFormula(v26, v27, v28, v29, v30);

    if (!hasFormula)
    {
      v56 = objc_msgSend_cell(v10, v22, v23, v24, v25);
      if (objc_msgSend_valueType(v56, v57, v58, v59, v60) || !objc_msgSend_isDynamicallyChangingContent(*(a1 + 32), v61, v62, v63, v64))
      {

        v78 = 0;
      }

      else
      {
        v69 = objc_msgSend_dynamicContentDelegate(*(a1 + 32), v65, v66, v67, v68);
        v99 = 0;
        v74 = objc_msgSend_cellID(v10, v70, v71, v72, v73);
        v77 = objc_msgSend_cell_forCellID_(v69, v75, &v99, v74, v76);
        v78 = v99;

        if (v77)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v79, v80, v81, v82);
        }
      }

      v83 = *(*(*(a1 + 48) + 8) + 48);
      if (v83 == 0x7FFFFFFF || (v83 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v85 = *(a1 + 32);
        v84 = *(a1 + 40);
        v86 = objc_msgSend_cellID(v10, v79, v80, v81, v82);
        v90 = objc_msgSend_modelCellIDForLayoutCellID_(v85, v87, v86, v88, v89);
        v94 = objc_msgSend_mergeRangeAtCellID_(v84, v91, v90, v92, v93);
        if (v94 != 0x7FFFFFFF && (v94 & 0xFFFF00000000) != 0x7FFF00000000 && v95 >> 32 && v95)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v95, v96, v97, v98);
        }
      }

      goto LABEL_22;
    }
  }

  v32 = objc_msgSend_cell(v10, v22, v23, v24, v25);
  if (objc_msgSend_valueType(v32, v33, v34, v35, v36) == 3)
  {
    v41 = objc_msgSend_cell(v10, v37, v38, v39, v40);
    v46 = objc_msgSend_stringValue(v41, v42, v43, v44, v45);
    v51 = objc_msgSend_length(v46, v47, v48, v49, v50);

    if (!v51)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v10, v52, v53, v54, v55);
LABEL_22:
}

uint64_t sub_2211C10FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 48);
  if (v4 == 0x7FFFFFFF || (v4 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    *(v3 + 48) = a3 & 0xFFFF00000000 | *(result + 40);
  }

  else
  {
    v6 = HIDWORD(v4);
    if (WORD2(a3) < v6)
    {
      v6 = HIDWORD(a3);
    }

    *(v3 + 52) = v6;
  }

  return result;
}

unint64_t sub_2211C15D4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v3 = 0;
LABEL_3:
    LODWORD(a1) = a3;
    v4 = HIDWORD(a3);
    return v3 | a1 | (v4 << 32);
  }

  v3 = 0;
  if (!HIDWORD(a2) || !a2)
  {
    goto LABEL_3;
  }

  v4 = HIDWORD(a1);
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
LABEL_8:
    v3 = a1 & 0xFFFF000000000000;
    return v3 | a1 | (v4 << 32);
  }

  v6 = a1 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL || v6 == 0x7FFF00000000)
  {
    v10 = a1 == 0x7FFFFFFF && v6 != 0x7FFF00000000;
    if (a1 > a3 && !v10)
    {
      goto LABEL_30;
    }

    v11 = a1 + HIDWORD(a2) - 1;
    if (a1 == 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFF;
    }

    if (v11 < a3)
    {
      goto LABEL_30;
    }

    if (a1 != 0x7FFFFFFFLL && v6 == 0x7FFF00000000)
    {
      goto LABEL_8;
    }
  }

  if (WORD2(a1) <= WORD2(a3))
  {
    v7 = a2 + WORD2(a1) - 1;
    if (WORD2(a1) == 0x7FFF || a2 == 0)
    {
      v7 = 0x7FFF;
    }

    if (v7 >= WORD2(a3))
    {
      goto LABEL_8;
    }
  }

LABEL_30:
  v3 = 0;
  if (WORD2(a1) >= WORD2(a3))
  {
    v12 = HIDWORD(a3);
  }

  else
  {
    v12 = HIDWORD(a1);
  }

  if (a1 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a1;
  }

  LODWORD(a1) = v13;
  LOWORD(v4) = v12;
  return v3 | a1 | (v4 << 32);
}

unint64_t sub_2211C1FC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 == 0x7FFFFFFF || (a1 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(a2) || !a2)
  {
    v5 = HIDWORD(a3);
LABEL_48:
    v15 = a3 & 0xFFFF000000000000;
    LODWORD(a1) = a3;
    return v15 | a1 | (v5 << 32);
  }

  if (a3 == 0x7FFFFFFF || (a3 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(a4) || !a4)
  {
    v5 = HIDWORD(a1);
LABEL_50:
    v15 = a1 & 0xFFFF000000000000;
    return v15 | a1 | (v5 << 32);
  }

  if (a1 <= a3)
  {
    v4 = a1 + HIDWORD(a2) - 1;
    if (v4 >= a3 && WORD2(a1) <= WORD2(a3))
    {
      v5 = HIDWORD(a1);
      v6 = a2 + WORD2(a1) - 1;
      if (WORD2(a1) == 0x7FFF || a2 == 0)
      {
        v6 = 0x7FFF;
      }

      if (v6 >= WORD2(a3))
      {
        v8 = a4 + WORD2(a3) - 1;
        if (WORD2(a3) == 0x7FFF || a4 == 0)
        {
          v8 = 0x7FFF;
        }

        if (v6 >= v8 && v4 >= a3 + HIDWORD(a4) - 1)
        {
          goto LABEL_50;
        }
      }
    }
  }

  if (a1 >= a3)
  {
    v10 = a3 + HIDWORD(a4) - 1;
    if (v10 >= a1 && WORD2(a3) <= WORD2(a1))
    {
      v5 = HIDWORD(a3);
      v11 = a4 + WORD2(a3) - 1;
      if (WORD2(a3) == 0x7FFF || a4 == 0)
      {
        v11 = 0x7FFF;
      }

      if (v11 >= WORD2(a1))
      {
        v13 = a2 + WORD2(a1) - 1;
        if (WORD2(a1) == 0x7FFF || a2 == 0)
        {
          v13 = 0x7FFF;
        }

        if (v11 >= v13 && v10 >= a1 + HIDWORD(a2) - 1)
        {
          goto LABEL_48;
        }
      }
    }
  }

  v15 = 0;
  if (WORD2(a1) >= WORD2(a3))
  {
    LOWORD(v5) = WORD2(a3);
  }

  else
  {
    LOWORD(v5) = WORD2(a1);
  }

  v16 = a1;
  if (a1 >= a3)
  {
    v16 = a3;
  }

  LODWORD(a1) = v16;
  return v15 | a1 | (v5 << 32);
}

void sub_2211C2828(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_expandCellRangeToCoverMergedCells_(v8, v9, a2, a3, v10);
  v13 = v12;

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = *(v15 + 312);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2211C2954;
  v18[3] = &unk_278460BA8;
  v21 = a2;
  v22 = a3;
  v18[4] = v15;
  v19 = v14;
  v20 = *(a1 + 48);
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v16, v17, v11, v13, 64, 0x80000, v18);
}

void sub_2211C2954(uint64_t a1, void *a2)
{
  v157 = a2;
  v7 = objc_msgSend_cell(v157, v3, v4, v5, v6);
  v12 = objc_msgSend_cellID(v157, v8, v9, v10, v11);
  v17 = objc_msgSend_mergeRange(v157, v13, v14, v15, v16);
  v19 = v18;
  v23 = objc_msgSend_richTextStorageForLayout(v7, v18, v20, v21, v22);
  if (objc_msgSend_valueType(v7, v24, v25, v26, v27) != 9)
  {
    goto LABEL_82;
  }

  if (!v7)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v29, v30);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 5256, 0, "invalid nil value for '%{public}s'", "cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v29, v30);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 5257, 0, "iterator should return a valid cellID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  if (!v23)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v29, v30);
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v56, v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 5258, 0, "storage should be nil since iterator is searching with TSTCellIteratorSearchForRichText");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  v64 = *(a1 + 56);
  v65 = *(a1 + 64);
  if (!HIDWORD(v65) || !v65)
  {
    goto LABEL_33;
  }

  v66 = v64 & 0xFFFF00000000;
  if (v64 == 0x7FFFFFFFLL && v66 != 0x7FFF00000000)
  {
    goto LABEL_20;
  }

  v70 = v64 == 0x7FFFFFFF && v66 != 0x7FFF00000000;
  if (v64 > v12 && !v70)
  {
    goto LABEL_33;
  }

  v71 = v64 + HIDWORD(v65) - 1;
  if (v64 == 0x7FFFFFFF)
  {
    v71 = 0x7FFFFFFF;
  }

  if (v71 < v12)
  {
    goto LABEL_33;
  }

  if (v64 == 0x7FFFFFFFLL || v66 != 0x7FFF00000000)
  {
LABEL_20:
    if (WORD2(v64) <= WORD2(v12))
    {
      v67 = WORD2(v64) == 0x7FFF || v65 == 0;
      v68 = v67 ? 0x7FFF : v65 + WORD2(v64) - 1;
      if (v68 >= WORD2(v12))
      {
        goto LABEL_42;
      }
    }

LABEL_33:
    v72 = sub_221119E0C(v17, v19, v64, v65);
    if ((v72 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !(v28 >> 32) || !v28 || v72 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v72) & 0x101FFFF00000000) == 0 && v28 == *(MEMORY[0x277D813C8] + 8))
    {
      goto LABEL_82;
    }
  }

LABEL_42:
  if (!objc_msgSend_attachmentCount(v23, v28, v64, v65, v30))
  {
    goto LABEL_82;
  }

  v77 = objc_msgSend_layoutEngine(*(a1 + 32), v73, v74, v75, v76);
  if (objc_msgSend_isDynamicallyHidingContentOfCellID_(v77, v78, v12, v79, v80))
  {
    goto LABEL_81;
  }

  v85 = objc_msgSend_layoutEngine(*(a1 + 32), v81, v82, v83, v84);
  if (objc_msgSend_isDynamicallyHidingRowsColsCellID_(v85, v86, v12, v87, v88))
  {
LABEL_80:

LABEL_81:
    goto LABEL_82;
  }

  v93 = objc_msgSend_layoutEngine(*(a1 + 32), v89, v90, v91, v92);
  isDynamicallyHidingTextOfCellID = objc_msgSend_isDynamicallyHidingTextOfCellID_(v93, v94, v12, v95, v96);

  if (isDynamicallyHidingTextOfCellID)
  {
    goto LABEL_82;
  }

  v102 = *(*(a1 + 32) + 648);
  if (!HIDWORD(v102) || !v102)
  {
LABEL_70:
    v77 = objc_msgSend_cellStyle(v7, v98, v99, v100, v101);
    v85 = objc_msgSend_textStyle(v7, v110, v111, v112, v113);
    v117 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 720), v114, v23, v115, v116);
    v122 = v117;
    if (!v117)
    {
LABEL_78:
      objc_msgSend_initialTextSize(*(a1 + 32), v118, v119, v120, v121);
      v139 = [TSTWPLayout alloc];
      TSURectWithSize();
      v122 = objc_msgSend_initWithStorage_cellID_frame_(v139, v140, v23, v12, v141);
      objc_msgSend_addObject_(*(a1 + 48), v142, v122, v143, v144);
LABEL_79:

      goto LABEL_80;
    }

    v123 = objc_msgSend_cachedCellID(v117, v118, v119, v120, v121);
    if (v12 == v123 && ((v123 ^ v12) & 0x101FFFF00000000) == 0)
    {
      v132 = objc_msgSend_cachedCellStyle(v122, v124, v125, v126, v127);
      if (v77 == v132)
      {
        v133 = objc_msgSend_cachedTextStyle(v122, v128, v129, v130, v131);
        v138 = v133;
        if (v85 == v133)
        {
          v145 = objc_msgSend_attachmentCount(v23, v134, v135, v136, v137);

          if (v145)
          {
            objc_msgSend_invalidatePosition(v122, v146, v147, v148, v149);
            objc_msgSend_invalidateSize(v122, v150, v151, v152, v153);
            objc_msgSend_removeObject_(*(a1 + 40), v154, v23, v155, v156);
            goto LABEL_79;
          }

          goto LABEL_77;
        }
      }
    }

LABEL_77:

    goto LABEL_78;
  }

  v103 = *(*(a1 + 32) + 640);
  v104 = v103 & 0xFFFF00000000;
  if (v103 == 0x7FFFFFFFLL && v104 != 0x7FFF00000000)
  {
    goto LABEL_57;
  }

  v108 = v103 == 0x7FFFFFFF && v104 != 0x7FFF00000000;
  if (v103 > v12 && !v108)
  {
    goto LABEL_70;
  }

  v109 = v103 + HIDWORD(v102) - 1;
  if (v103 == 0x7FFFFFFF)
  {
    v109 = 0x7FFFFFFF;
  }

  if (v109 < v12)
  {
    goto LABEL_70;
  }

  if (v103 == 0x7FFFFFFFLL || v104 != 0x7FFF00000000)
  {
LABEL_57:
    if (WORD2(v103) <= WORD2(v12))
    {
      v105 = WORD2(v103) == 0x7FFF || v102 == 0;
      v106 = v105 ? 0x7FFF : v102 + WORD2(v103) - 1;
      if (v106 >= WORD2(v12))
      {
        goto LABEL_82;
      }
    }

    goto LABEL_70;
  }

LABEL_82:
}

void sub_2211C2FE4(uint64_t a1, void *a2)
{
  v14 = a2;
  v6 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 720), v3, v14, v4, v5);
  objc_msgSend_removeFromParent(v6, v7, v8, v9, v10);
  objc_msgSend_removeObjectForKey_(*(*(a1 + 32) + 720), v11, v14, v12, v13);
}

void sub_2211C3088(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_msgSend_addChild_(*(a1 + 32), v3, v14, v4, v5);
  v6 = *(*(a1 + 32) + 720);
  v11 = objc_msgSend_info(v14, v7, v8, v9, v10);
  objc_msgSend_setObject_forUncopiedKey_(v6, v12, v14, v11, v13);
}

void sub_2211C3EFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211C4E8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211C50EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211C5130(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2211C5140(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = a2;
  if ((!objc_msgSend_isFrozen(v25, v5, v6, v7, v8) || (!objc_msgSend_isCorner(v25, v9, v10, v11, v12) || (*(a1 + 56) & 1) == 0) && (!objc_msgSend_isColumns(v25, v13, v14, v15, v16) || (*(a1 + 57) & 1) == 0) && (!objc_msgSend_isRows(v25, v17, v18, v19, v20) || (*(a1 + 58) & 1) == 0)) && objc_msgSend_intersectsGridRange_(v25, v9, *(a1 + 40), *(a1 + 48), v12))
  {
    v22 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v21, *(a1 + 40), *(a1 + 48), v25);
    v23 = *(*(a1 + 32) + 8);
    *(v23 + 48) = v22;
    *(v23 + 56) = v24;
    *a3 = 1;
  }
}

void sub_2211C5340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C5384(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = a2;
  if (!objc_msgSend_isFrozen(v26, v5, v6, v7, v8) || (!objc_msgSend_isCorner(v26, v9, v10, v11, v12) || (*(a1 + 56) & 1) == 0) && (!objc_msgSend_isColumns(v26, v13, v14, v15, v16) || (*(a1 + 57) & 1) == 0) && (!objc_msgSend_isRows(v26, v17, v18, v19, v20) || (*(a1 + 58) & 1) == 0))
  {
    if (objc_msgSend_intersectsGridRange_(v26, v9, *(a1 + 40), *(a1 + 48), v12))
    {
      if (((v22 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v21, *(a1 + 40), *(a1 + 48), v26), v25 = *(a1 + 40), v24 = *(a1 + 48), v22 == -1) || v23 == -1 || v22 > v23 || HIDWORD(v22) == 0xFFFFFFFF || HIDWORD(v23) == 0xFFFFFFFF || HIDWORD(v22) > HIDWORD(v23)) && (v25 == -1 || v24 == -1 || v25 > v24 || HIDWORD(v25) == 0xFFFFFFFF || HIDWORD(v24) == 0xFFFFFFFF || HIDWORD(v25) > HIDWORD(v24)) || v22 == v25 && !((v25 ^ v22) >> 32) && v23 == v24 && !((v24 ^ v23) >> 32))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}

void sub_2211C63D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211C6428(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 0xF4240)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4, a5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return a1;
}

uint64_t sub_2211C658C(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = sub_2211B729C(v6, a1[5], a1[6]);
  if (v7)
  {
    *a3 = 1;
  }

  else if ((sub_2211B729C(v6, a1[7], a1[8]) & 1) == 0)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  return v7;
}

void sub_2211C6A30(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setViewScale_(v3, v4, v5, v6, v7, *(a1 + 32));
  v8 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v8;
  v18 = *(a1 + 72);
  objc_msgSend_setTransformToCanvas_(v3, v9, &v16, v10, v11);
  v12 = *(a1 + 104);
  v16 = *(a1 + 88);
  v17 = v12;
  v18 = *(a1 + 120);
  objc_msgSend_setUserSpaceToDeviceSpaceTransform_(v3, v13, &v16, v14, v15);
}

void sub_2211C6ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setHeaderRowsRepeat_(v3, v4, *(a1 + 136), v5, v6);
  objc_msgSend_setHeaderColumnsRepeat_(v3, v7, *(a1 + 137), v8, v9);
  objc_msgSend_setViewScale_(v3, v10, v11, v12, v13, *(a1 + 32));
  v14 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23 = v14;
  v24 = *(a1 + 72);
  objc_msgSend_setTransformToCanvas_(v3, v15, &v22, v16, v17);
  v18 = *(a1 + 104);
  v22 = *(a1 + 88);
  v23 = v18;
  v24 = *(a1 + 120);
  objc_msgSend_setUserSpaceToDeviceSpaceTransform_(v3, v19, &v22, v20, v21);
}

TSCEASTStringElement *sub_2211C6B60(TSCEASTIteratorBase *a1, TSCEASTStringElement *a2)
{
  v3 = *(a1 + 15);
  if (v3 == *(a1 + 14))
  {
    return a2;
  }

  v4 = *(v3 - 8);
  if (!v4)
  {
    return a2;
  }

  v6 = 0xFFFF;
  while (1)
  {
    v7 = (*(*v4 + 80))(v4, a1);
    v12 = objc_msgSend_functionIndex(v7, v8, v9, v10, v11);
    if (v12 > 230)
    {
      break;
    }

    if (v12 > 144)
    {
      if (v12 != 178)
      {
        if (v12 != 145)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }
    }

    else if (v12 != 25)
    {
      if (v12 != 33)
      {
        goto LABEL_31;
      }

LABEL_20:
      v17 = TSCEASTStringElement::string(a2, a1, v13, v14, v15);
      if (objc_msgSend_hasPrefix_(v17, v18, @"≥", v19, v20))
      {
        v25 = objc_msgSend_rangeOfString_(v17, v21, @"≥", v22, v23);
        if (v25 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v17, v24, v25, v24, @">=");
LABEL_29:
          v37 = v26;

          v17 = v37;
        }
      }

      else
      {
        if (!objc_msgSend_hasPrefix_(v17, v21, @"≤", v22, v23))
        {
          if (!objc_msgSend_hasPrefix_(v17, v27, @"≠", v28, v29))
          {
            goto LABEL_30;
          }

          v36 = objc_msgSend_rangeOfString_(v17, v32, @"≠", v33, v34);
          if (v36 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_30;
          }

          v26 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v17, v35, v36, v35, @"<>");
          goto LABEL_29;
        }

        v31 = objc_msgSend_rangeOfString_(v17, v27, @"≤", v28, v29);
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v17, v30, v31, v30, @"<=");
          goto LABEL_29;
        }
      }

LABEL_30:
      TSCEASTStringElement::setString(a2, v17, a1);

      goto LABEL_31;
    }

LABEL_11:
    v16 = *(a1 + 15);
    if (v16 == *(a1 + 14))
    {
      goto LABEL_31;
    }

    v4 = *(v16 + 8 * --v6);

    if (!v4)
    {
      return a2;
    }
  }

  if (v12 == 329)
  {
    goto LABEL_11;
  }

  if ((v12 - 231) < 4 || (v12 - 309) < 2)
  {
    goto LABEL_20;
  }

LABEL_31:

  return a2;
}

void sub_2211C6DBC(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2211C7B98(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2211C78C8);
}

void sub_2211C92C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211C92E8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211C930C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211C9324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v24 = v3;
  v9 = objc_msgSend_columnAggregateUid(v3, v5, v6, v7, v8);
  v11 = v10;
  v13 = v4[7];
  v12 = v4[8];
  if (v13 >= v12)
  {
    v15 = v4[6];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 4;
    v18 = v17 + 1;
    if ((v17 + 1) >> 60)
    {
      sub_22107C148();
    }

    v19 = v12 - v15;
    if (v19 >> 3 > v18)
    {
      v18 = v19 >> 3;
    }

    v20 = v19 >= 0x7FFFFFFFFFFFFFF0;
    v21 = 0xFFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v21 = v18;
    }

    if (v21)
    {
      sub_221086F74((v4 + 6), v21);
    }

    v22 = (16 * v17);
    *v22 = v9;
    v22[1] = v11;
    v14 = 16 * v17 + 16;
    memcpy(0, v15, v16);
    v23 = v4[6];
    v4[6] = 0;
    v4[7] = v14;
    v4[8] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v13 = v9;
    v13[1] = v10;
    v14 = (v13 + 2);
  }

  v4[7] = v14;
}

void sub_2211C9574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211C9594(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211C95AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v14._lower = objc_msgSend_columnAggregateUid(v3, v5, v6, v7, v8);
  v14._upper = v9;
  v10 = TSKUIDStruct::NSUUIDValue(&v14);
  objc_msgSend_addObject_(v4, v11, v10, v12, v13);
}

void sub_2211C9A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C9A88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v10 = objc_msgSend_aggregateAtIndex_(*(a1 + 32), v7, a3, v8, v9);
  if ((objc_msgSend_isEqual_(v14, v11, v10, v12, v13) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2211C9C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C9C74(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v60 = a2;
  v10 = objc_msgSend_aggregateAtIndex_(*(a1 + 32), v7, a3, v8, v9);
  v15 = objc_msgSend_columnUid(v60, v11, v12, v13, v14);
  v17 = v16;
  v25 = v15 == objc_msgSend_columnUid(v10, v16, v18, v19, v20) && v17 == v21;
  if (!v25 || (v26 = objc_msgSend_aggregateType(v60, v21, v22, v23, v24), v26 != objc_msgSend_aggregateType(v10, v27, v28, v29, v30)) || (v35 = objc_msgSend_level(v60, v31, v32, v33, v34), v35 != objc_msgSend_level(v10, v36, v37, v38, v39)) || (v44 = objc_msgSend_showAsType(v60, v40, v41, v42, v43), v44 != objc_msgSend_showAsType(v10, v45, v46, v47, v48)) || (v53 = objc_msgSend_runningTotalGroupingColumnUid(v60, v49, v50, v51, v52), v55 = v54, v53 != objc_msgSend_runningTotalGroupingColumnUid(v10, v54, v56, v57, v58)) || v55 != v59)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2211CAC20(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_22107C148();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2211CCACC(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

void sub_2211CB094(uint64_t a1, const char *a2, TSCECellCoordSet *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(*(a1 + 32), a2, a2, a4, a5);
  if (v7 != 0xFFFF)
  {
    v8 = v7;
    v9 = (*(a1 + 40) + 120);

    sub_2212DFD38(v9, v8, a3);
  }
}

void sub_2211CB258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15)
{
  sub_22107C800(&a14, a15);

  _Unwind_Resume(a1);
}

void sub_2211CB2B0(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(*(a1 + 32), a2, a2, a4, a5);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4012000000;
  v11[3] = sub_2211CB3C8;
  v11[4] = nullsub_23;
  v11[5] = &unk_22188E88F;
  v11[6] = 0;
  v12 = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211CB3E0;
  v8[3] = &unk_278460D50;
  v10 = v11;
  v9 = *(a1 + 32);
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v8);

  _Block_object_dispose(v11, 8);
}

void sub_2211CB3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211CB3C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_2211CB5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211CB94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a20, 8);
  sub_221122744(v38 + 48);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 208), 8);
  sub_221122744(v39 - 160);

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211CB9CC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2212DFCE8((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x1F4uLL)
  {
    *a3 = 1;
  }

  return result;
}

TSCECellCoordSet *sub_2211CBA30(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  started = objc_msgSend_dirtyNewCellRef_forSeconds_fromStartTime_(*(*(a1 + 32) + 80), a2, a2, *(a1 + 40), a5, *(a1 + 64));
  result = sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
  if ((started & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

void sub_2211CBCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  sub_221122744(va2);

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211CBD14(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2212DFCE8((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x64uLL)
  {
    *a3 = 1;
  }

  return result;
}

BOOL sub_2211CC1D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = 0;
  if (v6)
  {
    objc_msgSend_timeIntervalSinceNow(v6, a2, a3, a4, a5);
    if (*(a1 + 40) < -v7)
    {
      return 1;
    }
  }

  return result;
}

void sub_2211CC56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUIndexSet::~TSUIndexSet(&a9);

  _Unwind_Resume(a1);
}

void sub_2211CCACC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2211CCB20(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2211CCC7C(v6, v11);
    }

    sub_22107C148();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_2211CCC7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2211CCACC(a1, a2);
  }

  sub_22107C148();
}

id sub_2211CCD30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"aggType=%d", a4, a5, a1);

  return v5;
}

void sub_2211CD710(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2211CDA84(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2211CE458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211CE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setAllowTableName_(*(a1 + 32), a2, 0, a4, a5);
  }

  v7 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v7;
  v11 = objc_msgSend_nameForBaseRangeRef_namingContext_(*(a1 + 40), a2, v24, *(a1 + 32), a5);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v12, v8, @" | %@", v9, v10, v11);
    }

    else
    {
      objc_msgSend_appendString_(v12, v8, v11, v9, v10);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTRefNamer nameForBaseTractRef:namingContext:]_block_invoke", v9, v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefNamer.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 206, 0, "invalid nil value for '%{public}s'", "baseString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

void sub_2211CE7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211CE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v6;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v7, a2, v25, a4, a5);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    objc_msgSend_setAllowTableName_(*(a1 + 40), a2, 0, a4, a5);
  }

  v11 = objc_msgSend_nameForChromeRangeRef_namingContext_(*(a1 + 48), a2, v24, *(a1 + 40), a5);
  if (v11)
  {
    v12 = *(a1 + 56);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v12, v8, @" | %@", v9, v10, v11);
    }

    else
    {
      objc_msgSend_appendString_(v12, v8, v11, v9, v10);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTRefNamer nameForViewTractRef:namingContext:coordMapper:]_block_invoke", v9, v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefNamer.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 251, 0, "invalid nil value for '%{public}s'", "viewString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

void sub_2211D3648(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2211D3A50(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40D9336959);

  _Unwind_Resume(a1);
}

uint64_t sub_2211D3BE4(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, char a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v7 = &unk_2834A2CA8;
  *(v7 + 136) = 0;
  *(v7 + 144) = a4;
  *(a1 + 152) = TSCEFormulaRewriteContext::containingTableUID(a3);
  *(a1 + 160) = v8;
  *(a1 + 96) = 1;
  return a1;
}

uint64_t sub_2211D3C6C(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 70)
  {
    *(a1 + 136) = 1;
    *(a1 + 143) = 1;
  }

  return a2;
}

uint64_t sub_2211D3CB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = 1;
  *(a1 + 142) = 1;
  return a2;
}

TSCEASTFunctionElement *sub_2211D3CC8(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  if (v7 > 279)
  {
    if (v7 == 285 || v7 == 280)
    {
      goto LABEL_9;
    }
  }

  else if (v7 == 23 || v7 == 130)
  {
    *(a1 + 136) = (*(*this + 48))(this, a1, v7) > 1;
    return this;
  }

  v11 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v8, v7, v9, v10);
  if (!v11 || objc_msgSend_versionShippedIn(v11, v12, v13, v14, v15) >= 2)
  {
LABEL_9:
    *(a1 + 68) = 257;
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211D3DA0(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if ((TSCEASTElement::refFlags(a2, a1) & 1) != 0 && (*(a1 + 144) & 1) == 0 && (*(a1 + 136) & 1) == 0)
  {
    v8 = *(a1 + 152) != TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6) || *(a1 + 160) != v7;
    *(a1 + 136) = v8;
  }

  return a2;
}

void sub_2211D3E6C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2211D3EA4(_BYTE *a1)
{
  if (a1[137] & 1) != 0 || (a1[139] & 1) != 0 || (a1[140] & 1) != 0 || (a1[138])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[143];
  }

  return v1 & 1;
}

uint64_t sub_2211D467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a4 & 0xFFFF00000000;
  v6 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL || v6 == 0x7FFF00000000 || a4 == 0x7FFFFFFF || v5 == 0x7FFF00000000 || WORD2(a3) > WORD2(a4) || a3 > a4)
  {
    if (a3 != 0x7FFFFFFFLL && v6 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
    {
      if (a4 == 0x7FFFFFFF || a3 > a4)
      {
        return 0x7FFF7FFFFFFFLL;
      }
    }

    else if (a3 != 0x7FFFFFFFLL || v6 == 0x7FFF00000000 || v5 == 0x7FFF00000000 || a4 != 0x7FFFFFFF || WORD2(a3) > WORD2(a4))
    {
      return 0x7FFF7FFFFFFFLL;
    }
  }

  v7 = a1 & 0xFFFF00000000;
  if (a1 == 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
  {
    v8 = a2 & 0xFFFF00000000;
  }

  else
  {
    v8 = a2 & 0xFFFF00000000;
    if (a2 != 0x7FFFFFFF && v8 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
    {
      goto LABEL_39;
    }
  }

  if (a1 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000 && v8 == 0x7FFF00000000)
  {
    if (a2 == 0x7FFFFFFF || a1 > a2)
    {
      return a3;
    }
  }

  else if (a1 != 0x7FFFFFFFLL || v7 == 0x7FFF00000000 || v8 == 0x7FFF00000000 || a2 != 0x7FFFFFFF || WORD2(a1) > WORD2(a2))
  {
    return a3;
  }

LABEL_39:
  v10 = a1 > a3;
  a3 = 0x7FFF7FFFFFFFLL;
  if (v10)
  {
    return v4 | v7;
  }

  return a3;
}

uint64_t sub_2211D4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL || v4 == 0x7FFF00000000)
  {
    v5 = a4 & 0xFFFF00000000;
  }

  else
  {
    v5 = a4 & 0xFFFF00000000;
    if (a4 != 0x7FFFFFFFLL && v5 != 0x7FFF00000000 && WORD2(a3) <= WORD2(a4) && a3 <= a4)
    {
      goto LABEL_20;
    }
  }

  if (a3 != 0x7FFFFFFFLL && v4 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
  {
    v6 = 0x7FFF7FFFFFFFLL;
    if (a4 == 0x7FFFFFFFLL || a3 > a4)
    {
      return v6;
    }

LABEL_20:
    v7 = a1 & 0xFFFF00000000;
    if (a1 == 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
    {
      v8 = a2 & 0xFFFF00000000;
    }

    else
    {
      v8 = a2 & 0xFFFF00000000;
      if (a2 != 0x7FFFFFFF && v8 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
      {
        if (WORD2(a1) <= WORD2(a3))
        {
          return 0x7FFF7FFFFFFFLL;
        }

        return v4 | a1;
      }
    }

    if (a1 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000 && v8 == 0x7FFF00000000)
    {
      v6 = 0x7FFF7FFFFFFFLL;
      if (a2 == 0x7FFFFFFF || a1 > a2)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0x7FFF7FFFFFFFLL;
      if (a1 != 0x7FFFFFFFLL || v7 == 0x7FFF00000000 || v8 == 0x7FFF00000000 || a2 != 0x7FFFFFFF || WORD2(a1) > WORD2(a2))
      {
        return v6;
      }
    }

    if (WORD2(a1) <= WORD2(a3))
    {
      return v6;
    }

    return v4 | a1;
  }

  v6 = 0x7FFF7FFFFFFFLL;
  if (a3 == 0x7FFFFFFFLL && v4 != 0x7FFF00000000 && v5 != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL && WORD2(a3) <= WORD2(a4))
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t sub_2211D4E3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 48);
  if (*(a2 + 8) == *v5 && *(a2 + 16) == v5[1])
  {
    return objc_msgSend_endTrackingReference_(*(result + 32), a2, *(result + 40), a4, a5);
  }

  return result;
}

uint64_t sub_2211D5464(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 56);
  if (*(a2 + 1) == *v5 && *(a2 + 2) == v5[1])
  {
    v7 = *(result + 64);
    v6 = *(result + 72);
    v8 = *a2;
    v9 = WORD2(*a2);
    v12 = v9 < WORD2(v7) || v8 < v7 || v9 > WORD2(v6) || v8 > v6;
    if (v12 && ((v14 = *(result + 80), v13 = *(result + 88), v9 < WORD2(v14)) || v8 < v14 || v9 > WORD2(v13) || v8 > v13))
    {
      if ((v9 < WORD2(v7) || v8 < v7 || v9 > WORD2(v6) || v8 > v6) && (v9 < WORD2(v14) || v8 < v14 || v9 > WORD2(v13) || v8 > v13))
      {
        return objc_msgSend_endTrackingReference_(*(result + 32), a2, *(result + 40), a4, a5);
      }
    }

    else
    {
      return TSCECellCoordSet::removeCellCoord((*(*(result + 48) + 8) + 48), a2);
    }
  }

  return result;
}

void sub_2211D576C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D57C8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 40);
  if (*(a2 + 8) == *v3 && *(a2 + 16) == v3[1])
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_2211D5A3C(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v8 = objc_msgSend_ownerUID(*(*(a1 + 32) + 80), v4, v5, v6, v7);
  v9 = (*(a1 + 32) + 64);
  *v9 = v8;
  v9[1] = v10;
  *(*(a1 + 32) + 104) = 0;
}

void sub_2211D6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a17, 8);
  sub_2210BDEC0(v31 + 48);
  _Block_object_dispose(&a28, 8);
  sub_221122744(v30 + 48);
  sub_221122744(v32 - 112);

  _Unwind_Resume(a1);
}

void sub_2211D620C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 8);
  v8 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), a2, v7, a4, a5);
  v10 = v9;
  v27[0] = v8;
  v27[1] = v9;
  v13 = objc_msgSend_ownerKindForOwnerID_(*(a1 + 32), v9, v7, v11, v12);
  if (v13)
  {
    if (v13 == 7)
    {
      v17 = *(a1 + 40);
      if (v8 == v17[8] && v10 == v17[9])
      {
        v18 = objc_msgSend_trackedReferenceAtCoord_(v17, v14, *a2, v15, v16);
        sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
        if (v18)
        {
          objc_msgSend_refersToCellRefForCalculationEngine_referenceTrackerUID_(v18, v19, *(a1 + 32), *(a1 + 40) + 64, v20);
          if (v26 != 0)
          {
            v24 = *(*(a1 + 56) + 8);
            v25 = v26;
            sub_2211D6484((v24 + 48), &v25);
          }

          objc_msgSend_endTrackingReference_(*(a1 + 40), v21, v18, v22, v23);
        }

        else
        {
          objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v19, a2, v27, v20);
        }
      }
    }
  }

  else
  {
    objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v14, a2, v27, v16);
    sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
  }
}

void *sub_2211D6484(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_2211D6EFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v6 + 8), a2, *(v6 + 16), a1 + 48, a5);
  }

  else
  {
    objc_msgSend_clear(*(v6 + 16), a2, a3, a4, a5);
  }

  v11 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v12 = objc_msgSend_formulaObject(*(v11 + 16), v7, v8, v9, v10);

    if (!v12)
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 32);
  }

  *(v11 + 33) = 1;
LABEL_8:
  objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v7, *(a1 + 40), v9, v10);
  v14 = *(a1 + 32);
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(v15, v13, v16, a1 + 48, 0, 0, v17);
}

uint64_t sub_2211D705C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v6 + 8), a2, *(v6 + 16), a1 + 48, a5);
    objc_msgSend_clearValue(*(*(a1 + 32) + 16), v7, v8, v9, v10);
    objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v11, 0, v12, v13);
    v18 = objc_msgSend_cellFlags(*(*(a1 + 32) + 16), v14, v15, v16, v17);
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v19, v18 & 0xFFFFFFFB, v20, v21);
  }

  else
  {
    objc_msgSend_clear(*(v6 + 16), a2, a3, a4, a5);
  }

  if (*(a1 + 80) == 1)
  {
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v22, 4, v24, v25);
  }

  v26 = objc_msgSend_valueType(*(a1 + 40), v22, v23, v24, v25);
  if (v26 == 10)
  {
    goto LABEL_9;
  }

  if (v26 == 5)
  {
    v45 = *(*(a1 + 32) + 16);
    v46 = objc_msgSend_tsceValue(*(a1 + 40), v27, v28, v29, v30);
    objc_msgSend_applyFormulaResult_(v45, v47, v46, v48, v49);

    if (!objc_msgSend_currentFormatUsesAccountingStyle(*(*(a1 + 32) + 16), v50, v51, v52, v53))
    {
      goto LABEL_23;
    }

    v57 = objc_msgSend_currentFormat(*(*(a1 + 32) + 16), v44, v54, v55, v56);
    v62 = objc_msgSend_asCurrencyFormat(v57, v58, v59, v60, v61);

    if (v62)
    {
      v66 = objc_alloc(MEMORY[0x277D80640]);
      v71 = objc_msgSend_decimalPlaces(v62, v67, v68, v69, v70);
      v76 = objc_msgSend_negativeStyle(v62, v72, v73, v74, v75);
      v81 = objc_msgSend_showThousandsSeparator(v62, v77, v78, v79, v80);
      v86 = objc_msgSend_currencyCode(v62, v82, v83, v84, v85);
      v88 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v66, v87, v71, v76, v81, 0, v86);

      objc_msgSend_setCurrentFormat_isExplicit_(*(*(a1 + 32) + 16), v89, v88, 0, v90);
    }

    else
    {
      v95 = *(a1 + 32);
      v96 = *(v95 + 48);
      if (!v96)
      {
        v97 = objc_msgSend_documentRoot(*(v95 + 8), v63, v64, 0, v65);
        v102 = objc_msgSend_documentLocale(v97, v98, v99, v100, v101);
        v103 = *(a1 + 32);
        v104 = *(v103 + 48);
        *(v103 + 48) = v102;

        v95 = *(a1 + 32);
        v96 = *(v95 + 48);
      }

      v105 = *(v95 + 16);
      v88 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v63, 257, v96, v65);
      objc_msgSend_setCurrentFormat_isExplicit_(v105, v106, v88, 0, v107);
    }

    goto LABEL_22;
  }

  if (v26)
  {
    v91 = *(*(a1 + 32) + 16);
    v62 = objc_msgSend_tsceValue(*(a1 + 40), v27, v28, v29, v30);
    objc_msgSend_applyFormulaResult_(v91, v92, v62, v93, v94);
LABEL_22:

    goto LABEL_23;
  }

LABEL_9:
  v31 = *(a1 + 32);
  if (!*(v31 + 48))
  {
    v32 = objc_msgSend_documentRoot(*(v31 + 8), v27, v28, v29, v30);
    v37 = objc_msgSend_documentLocale(v32, v33, v34, v35, v36);
    v38 = *(a1 + 32);
    v39 = *(v38 + 48);
    *(v38 + 48) = v37;

    v31 = *(a1 + 32);
  }

  v40 = *(v31 + 56);
  if (!v40)
  {
    v41 = objc_msgSend_localizedStringForKey_value_table_(*(v31 + 48), v27, @"(blank)", &stru_2834BADA0, @"TSTables");
    v42 = *(a1 + 32);
    v43 = *(v42 + 56);
    *(v42 + 56) = v41;

    v31 = *(a1 + 32);
    v40 = *(v31 + 56);
  }

  objc_msgSend_setStringValue_(*(v31 + 16), v27, v40, v29, v30);
LABEL_23:
  v108 = *(a1 + 32);
  v109 = *(v108 + 8);
  v110 = *(v108 + 16);

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v109, v44, v110, a1 + 48, 0, 0);
}

uint64_t sub_2211D7450(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v6 + 8), a2, *(v6 + 16), a1 + 48, a5);
    objc_msgSend_clearValue(*(*(a1 + 32) + 16), v7, v8, v9, v10);
    objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v11, 0, v12, v13);
    v18 = objc_msgSend_cellFlags(*(*(a1 + 32) + 16), v14, v15, v16, v17);
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v19, v18 & 0xFFFFFFFB, v20, v21);
  }

  else if (*(a1 + 40))
  {
    objc_msgSend_clear(*(v6 + 16), a2, a3, a4, a5);
  }

  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  v24 = *(v23 + 16);
  if (v22 || *(v23 + 32) == 1)
  {
    objc_msgSend_setStringValue_(*(v23 + 16), a2, v22, a4, a5);
    v23 = *(a1 + 32);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v23 + 8);

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v25, a2, v24, a1 + 48, 0, 0);
}

id sub_2211D76DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSTCellDiffArray;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_2211D7810(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSTCellDiffArray;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_2211D7C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13, TSUIndexSet *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);
  TSUIndexSet::~TSUIndexSet(&a17);

  _Unwind_Resume(a1);
}

void sub_2211D8A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D8A48(uint64_t result, __int16 a2, __int16 a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  v6 = a2 - v5;
  v7 = *(*(result + 40) + 8);
  v8 = *(v7 + 24);
  if (v8 >= (a2 - v5))
  {
    *(v7 + 24) = v8 - v6;
    *(*(*(result + 32) + 8) + 24) += v6 + a3;
  }

  else
  {
    *(v4 + 24) = v8 + v5;
    *(*(*(result + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_2211D8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D8BC8(uint64_t result, int a2, int a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  v6 = *(*(result + 40) + 8);
  v7 = *(v6 + 24);
  if (v7 >= a2 - v5)
  {
    *(v6 + 24) = v7 - (a2 - v5);
    *(*(*(result + 32) + 8) + 24) += a2 - v5 + a3;
  }

  else
  {
    *(v4 + 24) = v7 + v5;
    *(*(*(result + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_2211D8ED0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result = objc_msgSend_containsIndex_(*(*(a1 + 32) + 120), a2, a2, a4, a5);
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);
    v13 = v5;
    v9 = sub_2210C3024((v8 + 184), &v13);
    if (v9)
    {
      v5 = *(v9 + 9);
    }

    return objc_msgSend_addIndex_(*(a1 + 40), v10, v5, v11, v12);
  }

  return result;
}

uint64_t sub_2211D9044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result = objc_msgSend_containsIndex_(*(*(a1 + 32) + 136), a2, a2, a4, a5);
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);
    v12 = v5;
    result = sub_2211DC534((v8 + 72), &v12);
    if (result)
    {
      return objc_msgSend_addIndex_(*(a1 + 40), v9, *(result + 20), v10, v11);
    }
  }

  return result;
}

uint64_t sub_2211D92B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v10 = a2;
  v5 = sub_2210C3024((v4 + 144), &v10);
  if (v5)
  {
    v2 = *(v5 + 9);
  }

  return objc_msgSend_addIndex_(*(a1 + 40), v6, v2, v7, v8);
}

uint64_t *sub_2211D9414(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  result = sub_2211DC534((v3 + 32), &v8);
  if (result)
  {
    return objc_msgSend_addIndex_(*(a1 + 40), v5, *(result + 5), v6, v7);
  }

  return result;
}

uint64_t sub_2211D9610(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(*(a1 + 32), a2, a2, a4, a5);
  v10 = *(a1 + 40);

  return objc_msgSend_addIndex_(v10, v6, v7, v8, v9);
}

uint64_t sub_2211D976C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_chromeRowIndexForViewRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v10 = *(a1 + 40);

  return objc_msgSend_addIndex_(v10, v6, v7, v8, v9);
}

uint64_t sub_2211D98EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(*(a1 + 32), a2, a2, a4, a5);
  v10 = *(a1 + 40);

  return objc_msgSend_addIndex_(v10, v6, v7, v8, v9);
}

uint64_t sub_2211D9A48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_viewRowIndexForChromeRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v10 = *(a1 + 40);

  return objc_msgSend_addIndex_(v10, v6, v7, v8, v9);
}

void sub_2211DB648(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_2211DB844(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v11 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), v8, a3, v9, v10);
  v13 = *(a1 + 40);

  return MEMORY[0x2821F9670](v13, sel_swapIndex_withIndex_, v7, v11, v12);
}

uint64_t *sub_2211DB9B8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_2211DBBEC(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2211DBE28(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BDA6C(a1, v9, v8 + 4);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2211DBF3C();
  }
}

void sub_2211DBF08(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_2211DBFC8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 8);
        *(v8 + 8) = v9;
        *(v8 + 9) = *(a2 + 9);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2211DC0DC(a1, v9, v8 + 8);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2211DC4A8();
  }
}

void sub_2211DC0A8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_2211DC0DC(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2211DC23C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_2211DC23C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2211DC32C(a1, prime);
    }
  }
}

void sub_2211DC32C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2211DC534(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2211DC8AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211DCA74(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    do
    {
      if (v5)
      {
        v6 = 0;
        do
        {
          v7[2](v7, (*a1 + v4) | ((*(a1 + 4) + v6++) << 32));
          v5 = *(a1 + 8);
        }

        while (v5 > v6);
        v3 = *(a1 + 12);
      }

      ++v4;
    }

    while (v4 < v3);
  }
}

void sub_2211DCB38(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_clear(a1[4], a2, a3, a4, a5);
  if (objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(a1[5], v7, a1[4], a2, 1))
  {
    return;
  }

  v12 = objc_msgSend_cellFlags(a1[4], v8, v9, v10, v11);
  v17 = v12 & 0x8F0;
  if ((v12 & 0x8F0) != 0)
  {
    if ((v12 & 0x800) != 0)
    {
      v18 = (v12 >> 6) & 2;
      v19 = (v12 >> 3) & 2;
      v163 = vand_s8(vshl_u32(vdup_n_s32(v12), 0xFFFFFFFCFFFFFFFBLL), 0x200000002);
    }

    else
    {
      v163 = 0x200000002;
      v18 = 2;
      v19 = 2;
    }

    objc_msgSend_setCellFlags_(a1[4], v13, v12 & 0xF70F, v15, v16);
  }

  else
  {
    v163 = 0x200000002;
    v18 = 2;
    v19 = 2;
  }

  v20 = objc_msgSend_cellStyle(a1[4], v13, v14, v15, v16);
  v166 = v20;
  if (v20)
  {
    v25 = objc_msgSend_valueForProperty_(v20, v21, 901, v23, v24);
    v164 = objc_msgSend_valueForProperty_(v166, v26, 902, v27, v28);
    v32 = objc_msgSend_valueForProperty_(v166, v29, 899, v30, v31);
    v36 = objc_msgSend_valueForProperty_(v166, v33, 900, v34, v35);
    v37 = v36;
    if (v25 || v164 || v32 || v36)
    {
      if (v25)
      {
        if (objc_msgSend_empty(v25, v21, v22, v23, v24))
        {
          v42 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v38, v39, v40, v41);

          v25 = v42;
        }

        objc_msgSend_p_setLeftStroke_order_atCellID_(a1[6], v38, v25, v163.i8[0], a2);
      }

      if (v164)
      {
        if (objc_msgSend_empty(v164, v21, v22, v23, v24))
        {
          v47 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v43, v44, v45, v46);

          v48 = v47;
        }

        else
        {
          v48 = v164;
        }

        v165 = v48;
        objc_msgSend_p_setRightStroke_order_atCellID_(a1[6], v43, v48, v18, a2);
      }

      else
      {
        v165 = 0;
      }

      if (v32)
      {
        if (objc_msgSend_empty(v32, v21, v22, v23, v24))
        {
          v53 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v49, v50, v51, v52);

          v32 = v53;
        }

        objc_msgSend_p_setTopStroke_order_atCellID_(a1[6], v49, v32, v19, a2);
      }

      if (v37)
      {
        if (objc_msgSend_empty(v37, v21, v22, v23, v24))
        {
          v58 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v54, v55, v56, v57);

          v37 = v58;
        }

        objc_msgSend_p_setBottomStroke_order_atCellID_(a1[6], v54, v37, v163.i8[4], a2);
      }

      v162 = v25;
      v59 = objc_msgSend_overridePropertyMap(v166, v21, v22, v23, v24);
      objc_msgSend_removeValueForProperty_(v59, v60, 901, v61, v62);
      objc_msgSend_removeValueForProperty_(v59, v63, 902, v64, v65);
      objc_msgSend_removeValueForProperty_(v59, v66, 899, v67, v68);
      objc_msgSend_removeValueForProperty_(v59, v69, 900, v70, v71);
      if (!objc_msgSend_count(v59, v72, v73, v74, v75))
      {
        v148 = 0;
LABEL_51:
        objc_msgSend_setCellStyle_(a1[4], v76, v148, v78, v79);

LABEL_52:
        v160 = a1[5];
        if (objc_msgSend_isEmpty(a1[4], v21, v22, v23, v24))
        {
          objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v160, v161, 0, a2, 0, 0);
        }

        else
        {
          objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v160, v161, a1[4], a2, 0, 0);
        }

        goto LABEL_55;
      }

      v80 = objc_msgSend_baseStyleForVariation(v166, v76, v77, v78, v79);
      v81 = a1[7];
      v90 = objc_msgSend_stylesheet(v80, v82, v83, v84, v85);
      if (v81 == v90)
      {
        v110 = v59;
      }

      else
      {
        v91 = objc_msgSend_parent(a1[7], v86, v87, v88, v89);
        v96 = objc_msgSend_stylesheet(v80, v92, v93, v94, v95);

        if (v91 == v96)
        {
          goto LABEL_45;
        }

        v100 = objc_msgSend_defaultCellStyleForBaseCellCoord_(a1[5], v97, a2, v98, v99);
        v105 = objc_msgSend_baseStyleForVariation(v100, v101, v102, v103, v104);

        v110 = objc_msgSend_propertyMap(v166, v106, v107, v108, v109);

        objc_msgSend_removeValueForProperty_(v110, v111, 901, v112, v113);
        objc_msgSend_removeValueForProperty_(v110, v114, 902, v115, v116);
        objc_msgSend_removeValueForProperty_(v110, v117, 899, v118, v119);
        objc_msgSend_removeValueForProperty_(v110, v120, 900, v121, v122);
        v123 = a1[7];
        v90 = objc_msgSend_stylesheet(v105, v124, v125, v126, v127);
        if (v123 == v90)
        {
          v80 = v105;
        }

        else
        {
          v132 = objc_msgSend_parent(a1[7], v128, v129, v130, v131);
          v137 = objc_msgSend_stylesheet(v105, v133, v134, v135, v136);

          if (v132 == v137)
          {
            v59 = v110;
            v80 = v105;
            if (v105)
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }

          v139 = objc_msgSend_styleIdentifier(v105, v97, v138, v98, v99);

          if (!v139)
          {

            v59 = v110;
            goto LABEL_50;
          }

          v144 = a1[7];
          v90 = objc_msgSend_styleIdentifier(v105, v140, v141, v142, v143);
          v80 = objc_msgSend_cascadedStyleWithIdentifier_(v144, v145, v90, v146, v147);
        }
      }

      v59 = v110;
LABEL_45:
      if (v80)
      {
LABEL_46:
        v148 = objc_msgSend_variationOfStyle_propertyMap_(a1[7], v97, v80, v59, v99);

        goto LABEL_51;
      }

LABEL_50:
      v149 = MEMORY[0x277D81150];
      v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSTStrokeSidecar initForUpgradeWithTableModel:]_block_invoke", v98, v99);
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v152, v153);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v155, v150, v154, 202, 0, "No usable root style in the document stylesheet or the deprecated theme stylesheet. Dropping the cell style on the floor.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157, v158, v159);
      v148 = 0;
      goto LABEL_51;
    }
  }

  if (v17 || objc_msgSend_isEmpty(a1[4], v21, v22, v23, v24))
  {
    goto LABEL_52;
  }

LABEL_55:
}

void sub_2211DDF30(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_cellBorder(a3, a2, a3, a4, a5);
  if (v9)
  {
    objc_msgSend_setCellBorder_atCellID_(*(a1 + 32), v7, v9, a2, v8);
  }
}

void sub_2211DE734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, int a7)
{
  v19 = a4;
  v14 = a6;
  if (v19)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v17 = a5 < a7;
  if (a5 < a7)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v19)
  {
    if (v17)
    {
      objc_msgSend_setStroke_inRange_order_(*(a1 + 32), v13, v19, a2, a3, v16);
    }

    else
    {
      objc_msgSend_setStroke_inRange_order_(*(a1 + 32), v13, v19, a2, a3, 1);
    }
  }

  if (v14)
  {
    objc_msgSend_setStroke_inRange_order_(*(a1 + 40), v13, v14, a2, a3, v18);
  }
}

void sub_2211DF084(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0x7FFF;
  v8 = 0x7FFFFFFF;
  if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = 0;
    if (HIDWORD(a3))
    {
      if (a3)
      {
        v6 = 0;
        v9 = *(a1 + 72);
        if (v9 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v6 = 0;
          v10 = *(a1 + 80);
          if (HIDWORD(v10))
          {
            if (v10)
            {
              v8 = *MEMORY[0x277D813C8];
              v7 = *(MEMORY[0x277D813C8] + 4);
              v6 = *(MEMORY[0x277D813C8] + 8);
              v11 = HIDWORD(v9);
              v12 = WORD2(a2);
              if (WORD2(a2) <= WORD2(v9))
              {
                v13 = WORD2(v9);
              }

              else
              {
                v13 = WORD2(a2);
              }

              v14 = a2 + HIDWORD(a3) - 1;
              v15 = v9 + HIDWORD(v10) - 1;
              a4 = 0x7FFFFFFFLL;
              a5 = v9;
              v16 = a2;
              if (a2 <= a5)
              {
                v16 = a5;
              }

              v17 = a3 + WORD2(a2) - 1;
              a2 = 0x7FFFLL;
              if (v12 == 0x7FFF || a3 == 0)
              {
                v17 = 0x7FFF;
              }

              v19 = v10 + v11 - 1;
              if (WORD2(v9) == 0x7FFF || v10 == 0)
              {
                LOWORD(v21) = 0x7FFF;
              }

              else
              {
                LOWORD(v21) = v19;
              }

              if (v17 >= v21)
              {
                v21 = v21;
              }

              else
              {
                v21 = v17;
              }

              if (v14 < v15)
              {
                v15 = v14;
              }

              v22 = v15 >= v16;
              v23 = v15 - v16;
              if (v22 && v13 <= v21)
              {
                v6 = (v21 - v13 + 1) | ((v23 + 1) << 32);
                v8 = v16;
                v7 = v13;
              }
            }
          }
        }
      }
    }
  }

  v41 = v8;
  v42 = v7;
  if (v7 != 0x7FFF && v8 == 0x7FFFFFFF)
  {
    v25 = 0;
  }

  else
  {
    v25 = v8;
  }

  v43 = v6;
  v26 = HIDWORD(v6);
  if (v8 == 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v8 + HIDWORD(v6);
  }

  v28 = v27 - v25;
  if (v27 > v25)
  {
    do
    {
      if (*(a1 + 40))
      {
        v29 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 88), a2, v25, a4, a5);
        if (v29)
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = sub_2211DF56C;
          v53[3] = &unk_278461048;
          v54 = *(a1 + 40);
          v55 = v25;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v29, v30, v42, v43, v53);
        }
      }

      if (*(a1 + 48))
      {
        v31 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 96), a2, v25, a4, a5);
        if (v31)
        {
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = sub_2211DF598;
          v50[3] = &unk_278461048;
          v51 = *(a1 + 48);
          v52 = v25;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v31, v32, v42, v43, v50);
        }
      }

      ++v25;
      --v28;
    }

    while (v28);
  }

  v33 = v42 + v43;
  if (v42 == 0x7FFF)
  {
    v33 = 0x7FFF;
    v34 = v41 == 0x7FFFFFFF;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = v42;
  }

  else
  {
    v35 = 0;
  }

  if (v35 < v33)
  {
    v36 = v33;
    do
    {
      if (*(a1 + 56))
      {
        v37 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 72), a2, v35, a4, a5);
        if (v37)
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = sub_2211DF5C4;
          v47[3] = &unk_278461070;
          v48 = *(a1 + 56);
          v49 = v35;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v37, v38, v41, v26, v47);
        }
      }

      if (*(a1 + 64))
      {
        v39 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 80), a2, v35, a4, a5);
        if (v39)
        {
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = sub_2211DF5F0;
          v44[3] = &unk_278461070;
          v45 = *(a1 + 64);
          v46 = v35;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v39, v40, v41, v26, v44);
        }
      }

      ++v35;
    }

    while (v36 != v35);
  }
}

uint64_t sub_2211E0F48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (a2 == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211E12B0;
    v9[3] = &unk_2784610C0;
    v9[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v6, 1, v9, a4, a5);
  }

  else if (a2 == 2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E11D0;
    v10[3] = &unk_2784610C0;
    v10[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v6, 2, v10, a4, a5);
  }

  else if (a2 == 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211E10F0;
    v11[3] = &unk_2784610C0;
    v11[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v6, 3, v11, a4, a5);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211E1390;
    v8[3] = &unk_2784610C0;
    v8[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v6, a2, v8, a4, a5);
  }
}

void sub_2211E10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v30 = v7;
  v13 = objc_msgSend_cellBorder(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_topStroke(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_cellBorder(v30, v19, v20, v21, v22);
  v28 = objc_msgSend_topStrokeOrder(v23, v24, v25, v26, v27);
  objc_msgSend_p_setTopStroke_order_atCellID_(v8, v29, v18, v28, a4);
}

void sub_2211E11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v30 = v7;
  v13 = objc_msgSend_cellBorder(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_bottomStroke(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_cellBorder(v30, v19, v20, v21, v22);
  v28 = objc_msgSend_bottomStrokeOrder(v23, v24, v25, v26, v27);
  objc_msgSend_p_setBottomStroke_order_atCellID_(v8, v29, v18, v28, a4);
}

void sub_2211E12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v30 = v7;
  v13 = objc_msgSend_cellBorder(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_leftStroke(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_cellBorder(v30, v19, v20, v21, v22);
  v28 = objc_msgSend_leftStrokeOrder(v23, v24, v25, v26, v27);
  objc_msgSend_p_setLeftStroke_order_atCellID_(v8, v29, v18, v28, a4);
}

void sub_2211E1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v30 = v7;
  v13 = objc_msgSend_cellBorder(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_rightStroke(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_cellBorder(v30, v19, v20, v21, v22);
  v28 = objc_msgSend_rightStrokeOrder(v23, v24, v25, v26, v27);
  objc_msgSend_p_setRightStroke_order_atCellID_(v8, v29, v18, v28, a4);
}

void sub_2211E1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = a11;
  sub_22107C2C0(&a14);
  _Unwind_Resume(a1);
}

void sub_2211E18CC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2211E34D0(a1, v5);
  }
}

void sub_2211E205C(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v37, 16);
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = objc_msgSend_mutableCopy(v15, v8, v9, v10, v11, v33);
        v21 = objc_msgSend_columnOrRowIndex(v15, v17, v18, v19, v20);
        if (objc_msgSend_count(v5, v22, v23, v24, v25) > v21)
        {
          v30 = objc_msgSend_columnOrRowIndex(v15, v26, v27, v28, v29);
          objc_msgSend_replacePointerAtIndex_withPointer_(v5, v31, v30, v16, v32);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v33, v37, 16);
    }

    while (v12);
  }
}

void sub_2211E21E8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 40);
  v8 = objc_msgSend_leftColumnStrokes(*(a1 + 32), v4, v5, v6, v7);
  (*(v3 + 16))(v3, v9, v8);
}

void sub_2211E2278(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 40);
  v8 = objc_msgSend_rightColumnStrokes(*(a1 + 32), v4, v5, v6, v7);
  (*(v3 + 16))(v3, v9, v8);
}

void sub_2211E2308(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 40);
  v8 = objc_msgSend_topRowStrokes(*(a1 + 32), v4, v5, v6, v7);
  (*(v3 + 16))(v3, v9, v8);
}

void sub_2211E2398(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 40);
  v8 = objc_msgSend_bottomRowStrokes(*(a1 + 32), v4, v5, v6, v7);
  (*(v3 + 16))(v3, v9, v8);
}

void sub_2211E290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v20, v5, a3, v6, v7);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v11 + 88);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *(v11 + 80);
  v14 = *v12;
  if (v13 < *v12)
  {
    *(v11 + 80) = v13 + 1;
    objc_msgSend_setStrongReference_message_(v10, v8, v20, *&v12[2 * v13 + 2], v9);
    goto LABEL_8;
  }

  if (v14 == *(v11 + 84))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 72));
    v12 = *(v11 + 88);
    v14 = *v12;
  }

  *v12 = v14 + 1;
  v15 = MEMORY[0x223DA0390](*(v11 + 72));
  v16 = *(v11 + 80);
  v17 = *(v11 + 88) + 8 * v16;
  *(v11 + 80) = v16 + 1;
  *(v17 + 8) = v15;
  objc_msgSend_setStrongReference_message_(v10, v18, v20, v15, v19);
LABEL_8:
}

void sub_2211E2A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v20, v5, a3, v6, v7);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v11 + 40);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *(v11 + 32);
  v14 = *v12;
  if (v13 < *v12)
  {
    *(v11 + 32) = v13 + 1;
    objc_msgSend_setStrongReference_message_(v10, v8, v20, *&v12[2 * v13 + 2], v9);
    goto LABEL_8;
  }

  if (v14 == *(v11 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 24));
    v12 = *(v11 + 40);
    v14 = *v12;
  }

  *v12 = v14 + 1;
  v15 = MEMORY[0x223DA0390](*(v11 + 24));
  v16 = *(v11 + 32);
  v17 = *(v11 + 40) + 8 * v16;
  *(v11 + 32) = v16 + 1;
  *(v17 + 8) = v15;
  objc_msgSend_setStrongReference_message_(v10, v18, v20, v15, v19);
LABEL_8:
}

void sub_2211E2B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v20, v5, a3, v6, v7);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v11 + 112);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *(v11 + 104);
  v14 = *v12;
  if (v13 < *v12)
  {
    *(v11 + 104) = v13 + 1;
    objc_msgSend_setStrongReference_message_(v10, v8, v20, *&v12[2 * v13 + 2], v9);
    goto LABEL_8;
  }

  if (v14 == *(v11 + 108))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 96));
    v12 = *(v11 + 112);
    v14 = *v12;
  }

  *v12 = v14 + 1;
  v15 = MEMORY[0x223DA0390](*(v11 + 96));
  v16 = *(v11 + 104);
  v17 = *(v11 + 112) + 8 * v16;
  *(v11 + 104) = v16 + 1;
  *(v17 + 8) = v15;
  objc_msgSend_setStrongReference_message_(v10, v18, v20, v15, v19);
LABEL_8:
}

void sub_2211E2C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v20, v5, a3, v6, v7);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v11 + 64);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *(v11 + 56);
  v14 = *v12;
  if (v13 < *v12)
  {
    *(v11 + 56) = v13 + 1;
    objc_msgSend_setStrongReference_message_(v10, v8, v20, *&v12[2 * v13 + 2], v9);
    goto LABEL_8;
  }

  if (v14 == *(v11 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 48));
    v12 = *(v11 + 64);
    v14 = *v12;
  }

  *v12 = v14 + 1;
  v15 = MEMORY[0x223DA0390](*(v11 + 48));
  v16 = *(v11 + 56);
  v17 = *(v11 + 64) + 8 * v16;
  *(v11 + 56) = v16 + 1;
  *(v17 + 8) = v15;
  objc_msgSend_setStrongReference_message_(v10, v18, v20, v15, v19);
LABEL_8:
}

void sub_2211E31D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = objc_msgSend_strokeSidecar(*(a1 + 32), a2, a3, a4, a5);
  v41 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v7, v8, v5, v9, v10);

  v14 = objc_msgSend_findStrokeAndRangeAtIndex_(v41, v11, *(a1 + 48), v12, v13);
  v19 = v14;
  if (v14 && ((v20 = objc_msgSend_range(v14, v15, v16, v17, v18), v21 = *(a1 + 48), v15) ? (v22 = v20 <= v21) : (v22 = 0), v22 && &v15[v20 - 1] >= v21))
  {
    objc_msgSend_removeIndex_(*(a1 + 40), v15, v5, v17, v18);
    v31 = v19;
  }

  else
  {
    v23 = objc_msgSend_strokeSidecar(*(a1 + 32), v15, v16, v17, v18);
    v27 = objc_msgSend_strokeLayerForRightSideOfColumn_(v23, v24, v5, v25, v26);

    v31 = objc_msgSend_findStrokeAndRangeAtIndex_(v27, v28, *(a1 + 48), v29, v30);

    if (v31)
    {
      v36 = objc_msgSend_range(v31, v32, v33, v34, v35);
      if (v37)
      {
        v40 = *(a1 + 48);
        if (v36 <= v40 && &v37[v36 - 1] >= v40)
        {
          objc_msgSend_removeIndex_(*(a1 + 40), v37, v5, v38, v39);
        }
      }
    }
  }
}

void sub_2211E34D0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2211E35BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E3C34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_indexFromCoord_(TSTFormulaStore, a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_addIndex_(v10, v6, v7, v8, v9);
}

void sub_2211E3E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211E3E88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211E3EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_indexesForRange_(*(a1 + 32), a2, a2, a3, a5);
  v9 = *(*(a1 + 40) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  v13 = v6;
  if (v12)
  {
    objc_msgSend_addIndexes_(v11, v6, v6, v7, v8);
  }

  else
  {
    objc_storeStrong(v10, v6);
  }
}

uint64_t sub_2211E40A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8.origin = objc_msgSend_cellRangeAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  v8.size = v6;
  result = TSUCellRect::isValid(&v8);
  if (result)
  {
    if (*(a1 + 48))
    {
      return (*(*(a1 + 40) + 16))();
    }

    result = TSUCellRect::isSingleCell(&v8);
    if ((result & 1) == 0)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

uint64_t sub_2211E4244(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8.origin = objc_msgSend_cellRangeAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  v8.size = v6;
  result = TSUCellRect::isValid(&v8);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v8);
    if ((result & 1) == 0)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

uint64_t sub_2211E44A4(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v9.origin = a3;
  v9.size = a4;
  v5 = TSUCellRect::firstColumn(&v9);
  return objc_msgSend_addIndexesInRange_(*(a1 + 32), v6, v5 + 1, LOWORD(v9.size.numberOfColumns) - 1, v7);
}

uint64_t sub_2211E44F0(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v9.origin = a3;
  v9.size = a4;
  v5 = TSUCellRect::firstRow(&v9);
  return objc_msgSend_addIndexesInRange_(*(a1 + 32), v6, (v5 + 1), v9.size.numberOfRows - 1, v7);
}

void sub_2211E4638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211E4660(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211E4684(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211E469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E480C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211E4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E49A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211E49CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211E4B48(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211E4B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(*(result + 32) + 8);
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *a5 = 1;
  return result;
}

void sub_2211E4C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E4C70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a3;
  v12 = a4;
  v10.origin = sub_2210AFE68(&v11, (a1 + 40));
  v10.size = v7;
  result = TSUCellRect::isEmpty(&v10);
  if ((result & 1) == 0)
  {
    if (v10.origin.row != v11 || (((v11 ^ *&v10.origin) & 0x101FFFF00000000) == 0 ? (v9 = *&v10.size == v12) : (v9 = 0), !v9))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

void sub_2211E4E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E4E44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_partiallyIntersectsModelCellRect_(*(a1 + 32), a2, a3, a4, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E4F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E4F70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E50F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_2211E5110(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  result = sub_2211E55F8((*(*(a1 + 32) + 8) + 48), v8);
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 48) = result;
  *(v6 + 56) = v7;
  return result;
}

void sub_2211E5280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211E52A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_intersectsCellRange_(*(*(*(a1 + 32) + 8) + 40), a2, a3, a4, a5) && (objc_msgSend_containsCellRange_(*(*(*(a1 + 32) + 8) + 40), v8, a3, a4, v9) & 1) == 0)
  {
    v12 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 32) + 8) + 40), v10, a3, a4, v11);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_2211E5424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E543C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E5528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211E5544(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

unint64_t sub_2211E55F8(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (*a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v3) == 0 || v3 == 0)
  {
    v10 = HIDWORD(v6);
    v11 = v6 & 0xFFFF000000000000;
    LODWORD(v4) = v6;
  }

  else if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v5) == 0 || v5 == 0)
  {
    v10 = HIDWORD(v4);
    v11 = v4 & 0xFFFF000000000000;
  }

  else
  {
    if (v4 != 0x7FFFFFFF && v4 > v6)
    {
      goto LABEL_49;
    }

    v16 = v4 == 0x7FFFFFFF ? 0x7FFFFFFF : v4 + HIDWORD(v3) - 1;
    if (v16 < v6 || WORD2(v4) > WORD2(v6))
    {
      goto LABEL_49;
    }

    v17 = v3 + WORD2(v4) - 1;
    if (WORD2(v4) == 0x7FFF || v3 == 0)
    {
      v17 = 0x7FFF;
    }

    if (v17 < WORD2(v6))
    {
      goto LABEL_49;
    }

    v19 = WORD2(v6) == 0x7FFF || v5 == 0;
    v20 = v19 ? 0x7FFF : v5 + WORD2(v6) - 1;
    if (v17 < v20)
    {
      goto LABEL_49;
    }

    v21 = v6 + HIDWORD(v5) - 1;
    if (v6 == 0x7FFFFFFF)
    {
      v21 = 0x7FFFFFFF;
    }

    if (v16 >= v21)
    {
      v11 = v4 & 0xFFFF000000000000;
      v10 = HIDWORD(v4);
    }

    else
    {
LABEL_49:
      v22 = v6 + HIDWORD(v5) - 1;
      if (v4 < v6 && v6 != 0x7FFFFFFF)
      {
        goto LABEL_71;
      }

      if (v6 == 0x7FFFFFFF)
      {
        v22 = 0x7FFFFFFF;
      }

      if (v22 < v4 || WORD2(v6) > WORD2(v4))
      {
        goto LABEL_71;
      }

      v23 = v5 + WORD2(v6) - 1;
      if (WORD2(v6) == 0x7FFF || v5 == 0)
      {
        v23 = 0x7FFF;
      }

      if (v23 < WORD2(v4))
      {
        goto LABEL_71;
      }

      v25 = WORD2(v4) == 0x7FFF || v3 == 0;
      v26 = v25 ? 0x7FFF : v3 + WORD2(v4) - 1;
      if (v23 < v26)
      {
        goto LABEL_71;
      }

      v27 = v4 + HIDWORD(v3) - 1;
      if (v4 == 0x7FFFFFFF)
      {
        v27 = 0x7FFFFFFF;
      }

      if (v22 >= v27)
      {
        v11 = v6 & 0xFFFF000000000000;
        LODWORD(v4) = v6;
        v10 = HIDWORD(v6);
      }

      else
      {
LABEL_71:
        v11 = 0;
        if (WORD2(v4) >= WORD2(v6))
        {
          LOWORD(v10) = WORD2(v6);
        }

        else
        {
          LOWORD(v10) = WORD2(v4);
        }

        if (v6 == 0x7FFFFFFF)
        {
          LODWORD(v6) = 0;
        }

        if (v4 == 0x7FFFFFFF)
        {
          LODWORD(v4) = 0;
        }

        if (v4 < v6)
        {
          LODWORD(v6) = v4;
        }

        LODWORD(v4) = v6;
      }
    }
  }

  return v11 | v4 | (v10 << 32);
}

void *sub_2211E5868(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_2211E5A9C(void *a1, unint64_t *a2)
{
  result = sub_2210BE30C(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2211E5AD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2211E5B34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2211E5F18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) >> 3)
  {
    sub_2211E631C();
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_2211E62A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_2211E6300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211E6334(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2211E6390(exception, a1);
  __cxa_throw(exception, off_27845D7C0, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2211E6390(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_2211E6764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTLayoutSpace;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2211EA7E0(uint64_t a1, void *a2, int a3, int a4)
{
  v22 = a2;
  objc_msgSend_width(v22, v7, v8, v9, v10);
  v12 = v11;
  if (*(a1 + 64) >= (a3 + a4))
  {
    v13 = a3 + a4;
  }

  else
  {
    v13 = *(a1 + 64);
  }

  v14 = *(*(a1 + 32) + 8);
  if (*(v14 + 24) != -1)
  {
    if (v11 == *(*(*(a1 + 40) + 8) + 24))
    {
      *(v14 + 24) = v13;
      goto LABEL_15;
    }

    v15 = *(a1 + 48);
    LODWORD(v16) = *(*(v15 + 8) + 24);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(*(*(a1 + 56) + 8) + 24);
        v20 = *(*(*(a1 + 32) + 8) + 24);
        if (*&v19[v17 + 4] < v20 && v20 < *&v19[v17 + 12])
        {
          *(*(*(a1 + 56) + 8) + 24) = malloc_type_realloc(v19, 16 * v16 + 16, 0x1000040451B5BE8uLL);
          v21 = *(*(*(a1 + 56) + 8) + 24);
          *(v21 + 16 * *(*(*(a1 + 48) + 8) + 24)) = *(v21 + v17);
          *(*(*(*(a1 + 56) + 8) + 24) + v17 + 12) = *(*(*(a1 + 32) + 8) + 24);
          *(*(*(*(a1 + 56) + 8) + 24) + 16 * (*(*(*(a1 + 48) + 8) + 24))++ + 4) = *(*(*(a1 + 32) + 8) + 24);
          v15 = *(a1 + 48);
        }

        ++v18;
        v16 = *(*(v15 + 8) + 24);
        v17 += 16;
      }

      while (v18 < v16);
      v14 = *(*(a1 + 32) + 8);
    }
  }

  *(v14 + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v12;
LABEL_15:
}

void sub_2211EA9CC(uint64_t a1, void *a2, int a3, int a4)
{
  v22 = a2;
  objc_msgSend_width(v22, v7, v8, v9, v10);
  v12 = v11;
  if (*(a1 + 64) >= (a3 + a4))
  {
    v13 = a3 + a4;
  }

  else
  {
    v13 = *(a1 + 64);
  }

  v14 = *(*(a1 + 32) + 8);
  if (*(v14 + 24) != -1)
  {
    if (v11 == *(*(*(a1 + 40) + 8) + 24))
    {
      *(v14 + 24) = v13;
      goto LABEL_15;
    }

    v15 = *(a1 + 48);
    LODWORD(v16) = *(*(v15 + 8) + 24);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(*(*(a1 + 56) + 8) + 24);
        v20 = *(*(*(a1 + 32) + 8) + 24);
        if (*&v19[v17] < v20 && v20 < *&v19[v17 + 8])
        {
          *(*(*(a1 + 56) + 8) + 24) = malloc_type_realloc(v19, 16 * v16 + 16, 0x1000040451B5BE8uLL);
          v21 = *(*(*(a1 + 56) + 8) + 24);
          *(v21 + 16 * *(*(*(a1 + 48) + 8) + 24)) = *(v21 + v17);
          *(*(*(*(a1 + 56) + 8) + 24) + v17 + 8) = *(*(*(a1 + 32) + 8) + 24);
          *(*(*(*(a1 + 56) + 8) + 24) + 16 * (*(*(*(a1 + 48) + 8) + 24))++) = *(*(*(a1 + 32) + 8) + 24);
          v15 = *(a1 + 48);
        }

        ++v18;
        v16 = *(*(v15 + 8) + 24);
        v17 += 16;
      }

      while (v18 < v16);
      v14 = *(*(a1 + 32) + 8);
    }
  }

  *(v14 + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v12;
LABEL_15:
}

void sub_2211EB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211EB32C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211EB33C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_2211EB354(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2211EB364(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  objc_msgSend_width(v7, v8, v9, v10, v11);
  v17 = v16;
  if (v16 != 0.0)
  {
    v19 = 0;
    v20 = a1 + 40;
LABEL_9:
    if (*(a1 + 104) <= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = *(a1 + 104);
    }

    if (*(a1 + 108) >= a3 + a4)
    {
      v23 = a3 + a4;
    }

    else
    {
      v23 = *(a1 + 108);
    }

    while (1)
    {
      v24 = *(*v20 + 8);
      v25 = *(v24 + 24);
      if (v25 < 0.0)
      {
        break;
      }

      if (v25 == v17 && !v19)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (*(*(*v20 + 8) + 24) != v17 || v23 >= *(a1 + 108) || v19)
      {
        objc_msgSend_alignedStrokeLineForRowGridRange_(*(a1 + 32), v12, *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56), v15);
        v33 = v32;
        v35 = v34;
        if (*(a1 + 112) == 1)
        {
          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v36 = *(*(a1 + 64) + 8);
            *(v36 + 48) = v30;
            *(v36 + 56) = v31;
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          TSUSubtractPoints();
        }

        v37 = *(a1 + 80);
        if (v37 != 0.0)
        {
          v38 = v33;
          v39 = v35;
          *&v30 = CGRectInset(*&v30, v37, *(a1 + 80));
          v33 = v40;
          v35 = v41;
        }

        v42 = *(a1 + 88);
        if (v42)
        {
          v43 = *v42;
          v44 = v42[2];
          *&v60.c = v42[1];
          *&v60.tx = v44;
          *&v60.a = v43;
          *&v43 = v33;
          v45 = v35;
          *&v30 = CGRectApplyAffineTransform(*&v30, &v60);
          v33 = v46;
          v35 = v47;
        }

        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v51 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v26, v27, v28, v29, v30, v31, v33, v35);
          v52 = *(*(*(a1 + 72) + 8) + 40);
          if (*(a1 + 96) == 0.0)
          {
            objc_msgSend_uniteWithPolygonalBezierPath_(v52, v48, v51, v49, v50);
          }

          else
          {
            objc_msgSend_uniteWithBezierPath_(v52, v48, v51, v49, v50);
          }
          v53 = ;
          v56 = *(*(a1 + 72) + 8);
          v57 = *(v56 + 40);
          *(v56 + 40) = v53;
        }

        else
        {
          v54 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v26, v27, v28, v29, v30, v31, v33, v35);
          v55 = *(*(a1 + 72) + 8);
          v51 = *(v55 + 40);
          *(v55 + 40) = v54;
        }

        v58 = *(*v20 + 8);
        v59 = *(v58 + 24) == v17;
        *(v58 + 24) = 0xBFF0000000000000;
        if (!v59 && !v19)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    *(v24 + 24) = v17;
    *(*(*(a1 + 48) + 8) + 48) = v22;
LABEL_18:
    *(*(*(a1 + 48) + 8) + 56) = v23 - 1;
    goto LABEL_19;
  }

  v18 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v12, v13, v14, v15);
  v19 = v18 == v7;

  v20 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) != -1.0 || v18 != v7)
  {
    goto LABEL_9;
  }

LABEL_36:
}

void sub_2211EB948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_2211EB9C0(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  objc_msgSend_width(v7, v8, v9, v10, v11);
  v17 = v16;
  if (v16 != 0.0)
  {
    v19 = 0;
    v20 = a1 + 40;
LABEL_9:
    if (*(a1 + 104) <= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = *(a1 + 104);
    }

    if (*(a1 + 108) >= a3 + a4)
    {
      v23 = a3 + a4;
    }

    else
    {
      v23 = *(a1 + 108);
    }

    while (1)
    {
      v24 = *(*v20 + 8);
      v25 = *(v24 + 24);
      if (v25 < 0.0)
      {
        break;
      }

      if (v25 == v17 && !v19)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (*(*(*v20 + 8) + 24) != v17 || v23 >= *(a1 + 108) || v19)
      {
        objc_msgSend_alignedStrokeLineForColumnGridRange_(*(a1 + 32), v12, *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56), v15);
        v33 = v32;
        v35 = v34;
        if (*(a1 + 112) == 1)
        {
          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v36 = *(*(a1 + 64) + 8);
            *(v36 + 48) = v30;
            *(v36 + 56) = v31;
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          TSUSubtractPoints();
        }

        v37 = *(a1 + 80);
        if (v37 != 0.0)
        {
          v38 = v33;
          v39 = v35;
          *&v30 = CGRectInset(*&v30, v37, *(a1 + 80));
          v33 = v40;
          v35 = v41;
        }

        v42 = *(a1 + 88);
        if (v42)
        {
          v43 = *v42;
          v44 = v42[2];
          *&v60.c = v42[1];
          *&v60.tx = v44;
          *&v60.a = v43;
          *&v43 = v33;
          v45 = v35;
          *&v30 = CGRectApplyAffineTransform(*&v30, &v60);
          v33 = v46;
          v35 = v47;
        }

        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v51 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v26, v27, v28, v29, v30, v31, v33, v35);
          v52 = *(*(*(a1 + 72) + 8) + 40);
          if (*(a1 + 96) == 0.0)
          {
            objc_msgSend_uniteWithPolygonalBezierPath_(v52, v48, v51, v49, v50);
          }

          else
          {
            objc_msgSend_uniteWithBezierPath_(v52, v48, v51, v49, v50);
          }
          v53 = ;
          v56 = *(*(a1 + 72) + 8);
          v57 = *(v56 + 40);
          *(v56 + 40) = v53;
        }

        else
        {
          v54 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v26, v27, v28, v29, v30, v31, v33, v35);
          v55 = *(*(a1 + 72) + 8);
          v51 = *(v55 + 40);
          *(v55 + 40) = v54;
        }

        v58 = *(*v20 + 8);
        v59 = *(v58 + 24) == v17;
        *(v58 + 24) = 0xBFF0000000000000;
        if (!v59 && !v19)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    *(v24 + 24) = v17;
    *(*(*(a1 + 48) + 8) + 52) = v22;
LABEL_18:
    *(*(*(a1 + 48) + 8) + 60) = v23 - 1;
    goto LABEL_19;
  }

  v18 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v12, v13, v14, v15);
  v19 = v18 == v7;

  v20 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) != -1.0 || v18 != v7)
  {
    goto LABEL_9;
  }

LABEL_36:
}

void sub_2211EC290(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, int a6)
{
  v11 = a2;
  objc_msgSend_width(v11, v12, v13, v14, v15);
  v134 = v19;
  width = v19;
  v20 = *(a1 + 100);
  if (v20 <= a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(a1 + 108);
  if (v22 >= a3 + a4)
  {
    v23 = a3 + a4;
  }

  else
  {
    v23 = v22;
  }

  v140.x = 0.0;
  v140.y = 0.0;
  v24 = *(a1 + 48);
  objc_msgSend_p_layoutCoordinateForGridRow_(*(a1 + 32), v16, v21, v17, v18);
  v140.x = v24;
  v140.y = v25;
  v139.x = 0.0;
  v139.y = 0.0;
  v26 = *(a1 + 48);
  objc_msgSend_p_layoutCoordinateForGridRow_(*(a1 + 32), v27, v23, v28, v29);
  v139.x = v26;
  v139.y = v30;
  if ((!objc_msgSend_empty(v11, v31, v32, v33, v34) || *(a1 + 112)) && v140.y != v139.y)
  {
    if (objc_msgSend_drawBlackAndWhite(*(a1 + 32), v35, v36, v37, v38, v140.y))
    {
      v43 = objc_msgSend_mutableCopy(v11, v39, v40, v41, v42);
      v48 = objc_msgSend_blackColor(MEMORY[0x277D81180], v44, v45, v46, v47);
      objc_msgSend_setColor_(v43, v49, v48, v50, v51);

      v11 = v43;
    }

    v137 = 0.0;
    v138 = 0;
    objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v39, &v138, &v137, v42, width);
    TSURectWithOriginAndSize();
    v143 = CGRectInset(v142, -v137, -v137);
    x = v143.origin.x;
    y = v143.origin.y;
    v54 = v143.size.width;
    height = v143.size.height;
    TSURectWithOriginAndSize();
    v145 = CGRectInset(v144, -v137, -v137);
    v59 = v145.origin.x;
    v60 = v145.origin.y;
    v61 = v145.size.width;
    v62 = v145.size.height;
    v63 = *(a1 + 116);
    if (v63)
    {
      v64 = v63 - 1;
    }

    else
    {
      v64 = 0;
    }

    LODWORD(v65) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(*(a1 + 40), v56, v64, v57, v58);
    v69 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(*(a1 + 40), v66, *(a1 + 116), v67, v68);
    v70 = v69;
    v132 = height;
    v133 = v54;
    if (v65 == 0x7FFF)
    {
      v65 = 0;
    }

    else
    {
      v65 = v65;
    }

    v130 = v62;
    v131 = v61;
    v71 = x;
    v72 = y;
    if (v69 == 0x7FFF)
    {
      v70 = *(a1 + 116);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 56));
    v73 = ClipBoundingBox.origin.x;
    v74 = ClipBoundingBox.origin.y;
    v75 = ClipBoundingBox.size.width;
    v76 = ClipBoundingBox.size.height;
    if (CGRectContainsPoint(ClipBoundingBox, v140) || (v147.origin.x = v73, v147.origin.y = v74, v147.size.width = v75, v147.size.height = v76, v150.origin.x = v71, v150.origin.y = v72, v150.size.height = v132, v150.size.width = v133, v78 = 0.0, CGRectIntersectsRect(v147, v150)))
    {
      objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(*(a1 + 40), v77, v21, v65, (v70 + 1));
      v78 = v79;
    }

    v148.origin.x = v73;
    v148.origin.y = v74;
    v148.size.width = v75;
    v148.size.height = v76;
    if (CGRectContainsPoint(v148, v139) || (v149.origin.x = v73, v149.origin.y = v74, v149.size.width = v75, v149.size.height = v76, v151.origin.x = v59, v151.origin.y = v60, v151.size.height = v130, v151.size.width = v131, v87 = 0.0, CGRectIntersectsRect(v149, v151)))
    {
      objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(*(a1 + 40), v80, v23, v65, (v70 + 1));
      v87 = v88;
    }

    if ((a5 - 1) <= 1 && v78 > 0.0)
    {
      v135 = 0;
      v136 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v80, &v136, &v135, v83, v78);
      v84 = 0.5;
      v85 = v136 * 0.5;
      v86 = v140.y;
      v89 = -(v136 * 0.5);
      if (a5 != 1)
      {
        v89 = v136 * 0.5;
      }

      v140.y = v140.y + v89;
    }

    if ((a6 - 1) <= 1 && v87 > 0.0)
    {
      v135 = 0;
      v136 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v80, &v136, &v135, v83, v87, v84, v85, v86);
      v90 = -(v136 * 0.5);
      if (a6 == 1)
      {
        v90 = v136 * 0.5;
      }

      v139.y = v139.y + v90;
    }

    if (objc_msgSend_drawPreventAntialias(*(a1 + 32), v80, v81, v82, v83))
    {
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(*(a1 + 32), v91, &v140, &v139, &width);
      objc_msgSend_viewScale(*(a1 + 32), v95, v96, v97, v98);
      if (v99 < 0.330000013)
      {
        width = v134;
      }
    }

    if (*(a1 + 120) == 1)
    {
      v100 = objc_msgSend_color(v11, v91, v92, v93, v94);
      objc_msgSend_alphaComponent(v100, v101, v102, v103, v104);
      v106 = v105;

      if (v106 > 0.0)
      {
        CGContextSaveGState(*(a1 + 56));
        CGContextBeginPath(*(a1 + 56));
        CGContextMoveToPoint(*(a1 + 56), v140.x, v140.y);
        CGContextAddLineToPoint(*(a1 + 56), v139.x, v139.y);
        CGContextSetLineWidth(*(a1 + 56), width);
        CGContextSetBlendMode(*(a1 + 56), kCGBlendModeClear);
        CGContextStrokePath(*(a1 + 56));
        CGContextRestoreGState(*(a1 + 56));
      }
    }

    else if ((objc_msgSend_empty(v11, v91, v92, v93, v94) & 1) == 0)
    {
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(*(a1 + 32), v107, v108, v109, v110, width, v134);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(*(a1 + 32), v111, v11, *(a1 + 56), v112, v140.x, v140.y, v139.x, v139.y, width, v113, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    }

    if ((*(a1 + 112) - 1) <= 1)
    {
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v107, v108, v109, v110);
      v119 = -(width * 0.5);
      if (IsLeftToRight)
      {
        v119 = width * 0.5;
      }

      v120 = v140.x + v119;
      v121 = v139.x + v119;
      v140.x = v140.x + v119;
      v139.x = v139.x + v119;
      v122 = *(a1 + 32);
      if (*(a1 + 112) == 2 && v23 == *(a1 + 108))
      {
        v123 = 2;
      }

      else
      {
        v123 = 1;
      }

      v124 = v122[74];
      v125 = v122[76];
      v126 = *(a1 + 56);
      v127 = v140.y;
      v128 = v139.y;
      v129 = objc_msgSend_layoutDirectionIsLeftToRight(v122, v115, v116, v117, v118);
      sub_221446224(v126, v123, v129, v120, v127, v121, v128, v124 + v125);
    }
  }
}

void sub_2211EC9B4(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, int a6)
{
  v11 = a2;
  objc_msgSend_width(v11, v12, v13, v14, v15);
  v20 = v19;
  width = v19;
  v21 = *(a1 + 96);
  if (v21 <= a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 104);
  if (v23 >= a3 + a4)
  {
    v24 = a3 + a4;
  }

  else
  {
    v24 = v23;
  }

  v146.x = 0.0;
  v146.y = 0.0;
  objc_msgSend_p_layoutCoordinateForGridColumn_(*(a1 + 32), v16, v22, v17, v18);
  v25 = *(a1 + 48);
  v146.x = v26;
  v146.y = v25;
  v145.x = 0.0;
  v145.y = 0.0;
  objc_msgSend_p_layoutCoordinateForGridColumn_(*(a1 + 32), v27, v24, v28, v29);
  v30 = *(a1 + 48);
  v145.x = v31;
  v145.y = v30;
  if ((objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v32, v33, v34, v35) & 1) == 0)
  {
    x = v146.x;
    v146.x = v145.x;
    v145.x = x;
  }

  if ((!objc_msgSend_empty(v11, v36, v37, v38, v39) || *(a1 + 112)) && v146.x != v145.x)
  {
    if (objc_msgSend_drawBlackAndWhite(*(a1 + 32), v41, v42, v43, v44, v146.x))
    {
      v49 = objc_msgSend_mutableCopy(v11, v45, v46, v47, v48);
      v54 = objc_msgSend_blackColor(MEMORY[0x277D81180], v50, v51, v52, v53);
      objc_msgSend_setColor_(v49, v55, v54, v56, v57);

      v11 = v49;
    }

    v143 = 0.0;
    v144 = 0;
    objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v45, &v144, &v143, v48, width);
    TSURectWithOriginAndSize();
    v149 = CGRectInset(v148, -v143, -v143);
    rect2 = v149.size.height;
    v58 = v149.origin.x;
    y = v149.origin.y;
    v60 = v149.size.width;
    TSURectWithOriginAndSize();
    v151 = CGRectInset(v150, -v143, -v143);
    v64 = v151.origin.x;
    v65 = v151.origin.y;
    v66 = v151.size.width;
    height = v151.size.height;
    v68 = *(a1 + 40);
    v69 = *(a1 + 116);
    v70 = v69 != 0;
    v71 = v69 - 1;
    if (v70)
    {
      v72 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v68, v61, v71, v62, v63);
    }

    else
    {
      v72 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v68, v61, 0, v62, v63);
    }

    LODWORD(v76) = v72;
    v77 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(*(a1 + 40), v73, *(a1 + 116), v74, v75);
    v78 = v77;
    v136 = height;
    v137 = v66;
    v138 = v65;
    v139 = v64;
    if (v76 == 0x7FFFFFFF)
    {
      v76 = 0;
    }

    else
    {
      v76 = v76;
    }

    if (v77 == 0x7FFFFFFF)
    {
      v78 = *(a1 + 116);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 56));
    v79 = ClipBoundingBox.origin.x;
    v80 = ClipBoundingBox.origin.y;
    v81 = ClipBoundingBox.size.width;
    v82 = ClipBoundingBox.size.height;
    if (CGRectContainsPoint(ClipBoundingBox, v146) || (v153.origin.x = v79, v153.origin.y = v80, v153.size.width = v81, v153.size.height = v82, v156.origin.x = v58, v156.origin.y = y, v156.size.width = v60, v156.size.height = rect2, v84 = 0.0, CGRectIntersectsRect(v153, v156)))
    {
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(*(a1 + 40), v83, v22, v76, (v78 + 1));
      v84 = v85;
    }

    v154.origin.x = v79;
    v154.origin.y = v80;
    v154.size.width = v81;
    v154.size.height = v82;
    if (CGRectContainsPoint(v154, v145) || (v155.origin.x = v79, v155.origin.y = v80, v155.size.width = v81, v155.size.height = v82, v157.origin.y = v138, v157.origin.x = v139, v157.size.height = v136, v157.size.width = v137, v91 = 0.0, CGRectIntersectsRect(v155, v157)))
    {
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(*(a1 + 40), v86, v24, v76, (v78 + 1));
      v91 = v92;
    }

    if (v84 > 0.0 && (a5 - 1) <= 1)
    {
      v141 = 0;
      v142 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v86, &v142, &v141, v89, v84);
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v93, v94, v95, v96);
      v98 = v142 * 0.5;
      if (IsLeftToRight)
      {
        v90 = v146.x;
        if (a5 == 1)
        {
          v99 = v146.x - v98;
        }

        else
        {
          v99 = v146.x + v98;
        }

        v146.x = v99;
      }

      else
      {
        v90 = v145.x;
        if (a5 == 1)
        {
          v100 = v145.x + v98;
        }

        else
        {
          v100 = v145.x - v98;
        }

        v145.x = v100;
      }
    }

    if (v91 > 0.0 && (a6 - 1) <= 1)
    {
      v141 = 0;
      v142 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v86, &v142, &v141, v89, v91, v90);
      v105 = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v101, v102, v103, v104);
      v106 = v142 * 0.5;
      if (v105)
      {
        if (a6 == 1)
        {
          v107 = v145.x + v106;
        }

        else
        {
          v107 = v145.x - v106;
        }

        v145.x = v107;
      }

      else
      {
        if (a6 == 1)
        {
          v108 = v146.x - v106;
        }

        else
        {
          v108 = v146.x + v106;
        }

        v146.x = v108;
      }
    }

    if (objc_msgSend_drawPreventAntialias(*(a1 + 32), v86, v87, v88, v89))
    {
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(*(a1 + 32), v109, &v146, &v145, &width);
      objc_msgSend_viewScale(*(a1 + 32), v113, v114, v115, v116);
      if (v117 < 0.330000013)
      {
        width = v20;
      }
    }

    if (*(a1 + 120) == 1)
    {
      v118 = objc_msgSend_color(v11, v109, v110, v111, v112);
      objc_msgSend_alphaComponent(v118, v119, v120, v121, v122);
      v124 = v123;

      if (v124 > 0.0)
      {
        CGContextSaveGState(*(a1 + 56));
        CGContextBeginPath(*(a1 + 56));
        CGContextMoveToPoint(*(a1 + 56), v146.x, v146.y);
        CGContextAddLineToPoint(*(a1 + 56), v145.x, v145.y);
        CGContextSetLineWidth(*(a1 + 56), width);
        CGContextSetBlendMode(*(a1 + 56), kCGBlendModeClear);
        CGContextStrokePath(*(a1 + 56));
        CGContextRestoreGState(*(a1 + 56));
      }
    }

    else if ((objc_msgSend_empty(v11, v109, v110, v111, v112) & 1) == 0)
    {
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(*(a1 + 32), v125, v126, v127, v128, width, v20);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(*(a1 + 32), v129, v11, *(a1 + 56), v130, v146.x, v146.y, v145.x, v145.y, width, v131, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    }

    v132 = *(a1 + 112);
    if ((v132 - 1) <= 1)
    {
      v133 = v146.y + width * 0.5;
      v146.y = v133;
      v134 = width * 0.5 + v145.y;
      v145.y = v134;
      if (v132 == 2 && v24 == *(a1 + 104))
      {
        v135 = 2;
      }

      else
      {
        v135 = 1;
      }

      sub_2214460DC(*(a1 + 56), v135, v146.x, v133, v145.x, v134, *(*(a1 + 32) + 592) + *(*(a1 + 32) + 608));
    }
  }
}

BOOL sub_2211EFC24(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  return v3 && v4 < *(a1 + 12);
}

void sub_2211EFC48(void *a1, unsigned int a2, double a3)
{
  v5 = a1;
  v6 = *(v5 + 2);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v7)
  {
    v9 = *(v5 + 3);
    if (v8 < v9)
    {
      v10 = *(v5 + 2);
      v10[v8] = a3;
      if (v8 == v9 - 1)
      {
        v10[v8 + 1] = a3;
        *(v5 + 3) = (a3 - *v10) / v8;
      }
    }
  }
}

double sub_2211EFCD0(void *a1, unsigned int a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = v3[2];
    v9 = 0.0;
    v10 = a2 >= v8;
    v11 = a2 - v8;
    if (v10 && v11 < v3[3])
    {
      if (*(v3 + 40) == 1)
      {
        v9 = *(*(v3 + 2) + 8 * v11);
      }

      else
      {
        v9 = *(v3 + 6) - *(*(v3 + 2) + 8 * v11);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "CGFloat TSTCoordinateArrayGetCoordinate(TSTCoordinateArray *__strong, TSTGridIndex)", v5, v6);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCoordinateArray.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 120, 0, "invalid nil value for '%{public}s'", "coordinateArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v9 = 0.0;
  }

  return v9;
}

double sub_2211EFE04(void *a1, unsigned int a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = v3[2];
    v9 = 0.0;
    v10 = a2 >= v8;
    v11 = a2 - v8;
    if (v10 && v11 < v3[3])
    {
      v9 = *(*(v3 + 2) + 8 * v11);
    }
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "CGFloat TSTCoordinateArrayGetRawCoordinate(TSTCoordinateArray *__strong, TSTGridIndex)", v5, v6);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCoordinateArray.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 142, 0, "invalid nil value for '%{public}s'", "coordinateArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v9 = 0.0;
  }

  return v9;
}

uint64_t sub_2211EFF18(void *a1, double a2)
{
  v3 = a1;
  v7 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v8 = v3[3];
  if (!v8)
  {
    goto LABEL_7;
  }

  if ((v3[10] & 1) == 0)
  {
    a2 = *(v3 + 6) - a2 + -0.00999999978;
  }

  v9 = *(v3 + 2);
  v10 = *v9;
  if (a2 <= *v9)
  {
    v12 = v3[2];
    goto LABEL_9;
  }

  v11 = v8 - 1;
  if (a2 <= v9[v11] + 0.00999999978)
  {
    v14 = *(v3 + 3);
    if (v14 <= 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = ((a2 - v10) / v14);
      v10 = v9[v15];
    }

    if (a2 >= v10)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (a2 >= v10)
    {
      v17 = v11;
    }

    else
    {
      v17 = v15;
    }

    if (a2 < v10 || a2 > v9[v15 + 1] + 0.00999999978)
    {
      goto LABEL_24;
    }

    v18 = objc_msgSend_containsIndex_(*(v3 + 4), v4, v3[2] + v15, v5, v6);
    v12 = *(v7 + 2) + v15;
    if ((v18 & 1) == 0)
    {
      v12 = sub_2211F00E8(v7, v12);
    }

    if (v12 == -1)
    {
LABEL_24:
      v12 = 0xFFFFFFFFLL;
      while (v16 <= v17)
      {
        v19 = (v17 + v16) >> 1;
        if (a2 >= v9[v19])
        {
          v16 = v19 + 1;
          if (a2 <= v9[v19 + 1] + 0.00999999978)
          {
            v12 = *(v7 + 2) + v19;
          }
        }

        else
        {
          v17 = v19 - 1;
        }
      }

      if ((objc_msgSend_containsIndex_(*(v7 + 4), v4, v12, v5, v6) & 1) == 0)
      {
        v12 = sub_2211F00E8(v7, v12);
      }
    }

    if (*(v7 + 40) == 1 && v12 == *(v7 + 3) + *(v7 + 2) - 1)
    {
      v12 = objc_msgSend_indexLessThanIndex_(*(v7 + 4), v4, v12, v5, v6);
    }
  }

  else
  {
LABEL_7:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_9:

  return v12;
}

uint64_t sub_2211F00E8(void *a1, unsigned int a2)
{
  v3 = a1;
  v7 = sub_2211EFCD0(v3, a2);
  v8 = v3[4];
  if (v7 <= 0.0)
  {
    v9 = objc_msgSend_indexGreaterThanIndex_(v8, v4, a2, v5, v6);
  }

  else
  {
    v9 = objc_msgSend_indexLessThanIndex_(v8, v4, a2, v5, v6);
  }

  v10 = v9;

  return v10;
}

uint64_t sub_2211F0154(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 12) - 1;
  if (v4 >= *(a1 + 12) - 1)
  {
    v4 = *(a1 + 12) - 1;
  }

  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    return 0;
  }

  memcpy(*(a1 + 16), *(a2 + 16), 8 * v5);
  result = v5 - 1;
  *a4 = *(*(a1 + 16) + 8 * result);
  return result;
}

uint64_t **sub_2211F0730(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v3 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  v9 = *a2;
  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  v11 = v8[2];
  v13 = v9 == v11;
  v12 = (v11 ^ v9) & 0x101FFFF00000000;
  v13 = v13 && v12 == 0;
  if (!v13 || v2 != *(v8 + 12))
  {
    goto LABEL_23;
  }

  return v8;
}

void sub_2211F09BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void sub_2211F120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211F1234(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211F1258(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211F1270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v7 = v5[7];
  v6 = v5[8];
  if (v7 >= v6)
  {
    v9 = v5[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_22107C148();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF0;
    v15 = 0xFFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_221086F74((v5 + 6), v15);
    }

    v16 = (16 * v11);
    *v16 = a2;
    v16[1] = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v17 = v5[6];
    v5[6] = 0;
    v5[7] = v8;
    v5[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 1) = a3;
    v8 = (v7 + 16);
  }

  v5[7] = v8;
}

void sub_2211F147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211F14A4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211F14C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}