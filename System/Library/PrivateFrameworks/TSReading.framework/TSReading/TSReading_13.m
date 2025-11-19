void TSWPLayoutChore::addChangeBarAdornmentsToColumn(void *a1, void *a2)
{
  v4 = [a1 lineFragmentArray];
  v5 = **v4;
  v6 = (*v4)[1];
  if (v5 == v6)
  {
    return;
  }

  LOBYTE(v7) = 0;
  v8 = 0;
  v9 = MEMORY[0x277CBF398];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  do
  {
    v14 = *v5;
    v15 = *(*v5 + 6);
    if ((v15 & 0x80000) != 0)
    {
      v16 = [TSDColorFill colorWithColor:TSWPLineFragment::changeAdornmentMarkupColor(*v5)];
      v17 = pChangeBarRectForLineFragment(v14, a1, a2);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v28.origin.x = v17;
      v28.origin.y = v18;
      v28.size.width = v20;
      v28.size.height = v22;
      *(v14 + 80) = CGRectUnion(*(v14 + 80), v28);
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      if ([v16 isEqual:v8])
      {
        v24 = v17 == x;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        pAddChangeBarAdornmentRect(a1, a2, v8, x, y, width, height);
LABEL_10:
        x = v17;
        y = v19;
        width = v21;
        height = v23;
        v8 = v16;
        goto LABEL_14;
      }

      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v29.origin.x = v17;
      v29.origin.y = v19;
      v29.size.width = v21;
      v29.size.height = v23;
      v27 = CGRectUnion(v26, v29);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
    }

    else if (v7)
    {
      pAddChangeBarAdornmentRect(a1, a2, v8, x, y, width, height);
      v8 = 0;
      x = *v9;
      y = v9[1];
      width = v9[2];
      height = v9[3];
    }

LABEL_14:
    v7 = (v15 >> 19) & 1;
    v5 += 2;
  }

  while (v5 != v6);
  if ((v15 & 0x80000) != 0)
  {

    pAddChangeBarAdornmentRect(a1, a2, v8, x, y, width, height);
  }
}

uint64_t TSWPLayoutChore::pCompareLineFragments(NSUInteger isDifferentFromLineFragment, TSWPLineFragmentArray **a2, TSWPLineFragmentArray **a3, TSWPColumn *a4, char a5, double a6)
{
  v72 = isDifferentFromLineFragment;
  v10 = *MEMORY[0x277CBF398];
  v11 = *(MEMORY[0x277CBF398] + 8);
  v12 = *(MEMORY[0x277CBF398] + 16);
  v13 = *(MEMORY[0x277CBF398] + 24);
  v14 = **a3;
  v15 = *(*a3 + 1);
  v17 = **a2;
  v16 = *(*a2 + 1);
  while (1)
  {
    while (v14 != v15)
    {
      v18 = *v14;
      if (v17 == v16)
      {
        if (v18)
        {
          v33 = (*(v18 + 24) >> 3) & 1;
          goto LABEL_19;
        }
      }

      else
      {
        v19 = *v17;
        if (v18)
        {
          v34 = *(v18 + 6);
          v33 = (v34 >> 3) & 1;
          if (!v19)
          {
            goto LABEL_19;
          }

          v35 = *(v19 + 7);
          v36 = *(v18 + 7);
          if (v35 < v36)
          {
            goto LABEL_20;
          }

          if (v35 > v36)
          {
            goto LABEL_19;
          }

          v37 = *(v19 + 6);
          v38 = *(v18 + 6);
          if (v37 < v38)
          {
LABEL_20:
            v20 = *(v19 + 10);
            v21 = *(v19 + 11);
            v22 = *(v19 + 12);
            v23 = *(v19 + 13);
            v24 = v10;
            v25 = v11;
            v26 = v12;
            v27 = v13;
            v28 = a4;
            v29 = (v34 >> 3) & 1;
            goto LABEL_10;
          }

          if (v37 <= v38)
          {
            if ((a5 & 0x40) == 0)
            {
              v42 = *v18;
              v43 = *(v18 + 1);
              v44 = v72;
              location = v72[127].location;
              if (location == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_26;
              }

              v46 = v43 + v42;
              if (v43 + v42 >= location || v46 > v72[4].location)
              {
                v44 = v72;
                if (v46 <= v72[127].length + location)
                {
                  goto LABEL_30;
                }

LABEL_26:
                v69 = *(v18 + 1);
                v70 = *v18;
                if (TSWPLineFragment::isDifferentFromLineFragment(v18, v19, v44[128].location))
                {
                  goto LABEL_30;
                }

                v74.length = v69;
                v74.location = v70;
                v47 = NSIntersectionRange(v74, v72[127]);
                isDifferentFromLineFragment = v47.location;
                if (v47.length)
                {
                  x = *(v18 + 10);
                  y = *(v18 + 11);
                  width = *(v18 + 12);
                  height = *(v18 + 13);
LABEL_31:
                  v77.origin.x = v10;
                  v77.origin.y = v11;
                  v77.size.width = v12;
                  v77.size.height = v13;
                  v10 = TSWPLayoutChore::pInvalidateRect(isDifferentFromLineFragment, v77, *&x, a4, 1, v33);
                  v11 = v52;
                  v12 = v53;
                  v13 = v54;
                  goto LABEL_32;
                }

                goto LABEL_32;
              }
            }

            isDifferentFromLineFragment = TSWPLineFragment::isDifferentFromLineFragment(*v14, *v17, 0);
            if (isDifferentFromLineFragment)
            {
LABEL_30:
              v76 = CGRectUnion(*(v19 + 80), *(v18 + 80));
              x = v76.origin.x;
              y = v76.origin.y;
              width = v76.size.width;
              height = v76.size.height;
              goto LABEL_31;
            }

LABEL_32:
            v14 += 2;
LABEL_11:
            v17 += 2;
          }

          else
          {
LABEL_19:
            v75.origin.x = v10;
            v75.origin.y = v11;
            v75.size.width = v12;
            v75.size.height = v13;
            v10 = TSWPLayoutChore::pInvalidateRect(isDifferentFromLineFragment, v75, *(v18 + 80), a4, 1, v33);
            v11 = v39;
            v12 = v40;
            v13 = v41;
            v14 += 2;
          }
        }

        else if (v19)
        {
          goto LABEL_9;
        }
      }
    }

    if (v17 == v16)
    {
      break;
    }

    v19 = *v17;
    if (*v17)
    {
LABEL_9:
      v20 = *(v19 + 10);
      v21 = *(v19 + 11);
      v22 = *(v19 + 12);
      v23 = *(v19 + 13);
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v28 = a4;
      v29 = 0;
LABEL_10:
      v10 = TSWPLayoutChore::pInvalidateRect(isDifferentFromLineFragment, *&v24, *&v20, v28, 1, v29);
      v11 = v30;
      v12 = v31;
      v13 = v32;
      goto LABEL_11;
    }
  }

  if (TSWPLineFragmentArray::count(*a2) && TSWPLineFragmentArray::count(*a3))
  {
    v55 = v72;
  }

  else
  {
    [(TSWPColumn *)a4 wpBounds:v69];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = [(TSWPColumn *)a4 contentBottom];
    v55 = v72;
    if (v63 >= a6)
    {
      v62 = [(TSWPColumn *)a4 contentBottom];
      a6 = v64;
    }

    if (a6 - v59 != 0.0)
    {
      v78.origin.x = v10;
      v78.origin.y = v11;
      v78.size.width = v12;
      v78.size.height = v13;
      v81.origin.x = v57;
      v81.origin.y = v59;
      v81.size.width = v61;
      v81.size.height = a6 - v59;
      v10 = TSWPLayoutChore::pInvalidateRect(v62, v78, v81, a4, 1, 0);
      v11 = v65;
      v12 = v66;
      v13 = v67;
    }
  }

  if (a4)
  {
    [(TSWPColumn *)a4 transformFromWP];
  }

  else
  {
    memset(&v73, 0, sizeof(v73));
  }

  v79.origin.x = v10;
  v79.origin.y = v11;
  v79.size.width = v12;
  v79.size.height = v13;
  v80 = CGRectApplyAffineTransform(v79, &v73);
  return [v55[128].length setNeedsDisplayInTargetRect:{v80.origin.x, v80.origin.y, v80.size.width, v80.size.height}];
}

id pChangeBarColorFillForLineFragment(TSWPLineFragment *a1)
{
  v1 = TSWPLineFragment::changeAdornmentMarkupColor(a1);

  return [TSDColorFill colorWithColor:v1];
}

double pChangeBarRectForLineFragment(uint64_t a1, void *a2, void *a3)
{
  [a2 wpBounds];
  v6 = v5;
  v8 = v7;
  if (a3)
  {
    [a3 adjustedInsets];
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v6 + v9;
  v12 = v8 - TSDMultiplySizeScalar(v9, v10, 2.0);
  v13 = *(a1 + 56);
  v14 = *(a1 + 160) + *(a1 + 136) + *(a1 + 32) + *(a1 + 40) - v13;
  if ((*(a1 + 25) & 0x10) != 0)
  {
    v18.origin.x = v11;
    v18.origin.y = *(a1 + 56);
    v18.size.width = v12;
    v18.size.height = *(a1 + 160) + *(a1 + 136) + *(a1 + 32) + *(a1 + 40) - v13;
    CGRectGetMaxX(v18);
  }

  TSURound();
  v16 = v15;
  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v12;
  v19.size.height = v14;
  CGRectGetMinY(v19);
  TSURound();
  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v12;
  v20.size.height = v14;
  CGRectGetMaxY(v20);
  TSURound();
  return v16;
}

void pAddChangeBarAdornmentRect(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  [a1 wpBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (a2)
  {
    [a2 adjustedInsets];
    v22 = v21;
  }

  else
  {
    v22 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v23 = v22 + CGRectGetMaxY(v33) - v16;
  v34.origin.x = a4;
  v34.origin.y = a5;
  v34.size.width = a6;
  v34.size.height = a7;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v23;
  if (MaxY > floor(CGRectGetMaxY(v35)))
  {
    v36.origin.x = v14;
    v36.origin.y = v16;
    v36.size.width = v18;
    v36.size.height = v23;
    a7 = floor(CGRectGetMaxY(v36)) - a5;
  }

  v26 = 3;
  v27 = 0;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  [a1 addAdornmentRect:&v26];
}

TSWPLineFragment *TSWPLayoutChore::pFillAnchoredDrawableLineFragment@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, TSWPLineFragment **a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  *a4 = 0;
  a4[1] = 0;
  v15 = *a2;
  if (v15 == *a3)
  {
    goto LABEL_19;
  }

  v16 = *(a1 + 80);
  while (1)
  {
    v17 = *v15;
    v18 = **v15;
    if (v18 >= v16)
    {
      break;
    }

    v15 += 2;
    *a2 = v15;
    if (v15 == *a3)
    {
      goto LABEL_19;
    }
  }

  v19 = *(v17 + 25) == *(v17 + 24) && v16 == v18;
  if (!v19 || ((*(v17 + 25) >> 5) & 1) != (*(a1 + 32) & 0x10) >> 4 || (v17[6] == *(a1 + 600) ? (v20 = v17[7] == *(a1 + 608)) : (v20 = 0), !v20 || v17[8] != *(a1 + 616) || (std::shared_ptr<TSWPLineFragment>::operator=[abi:ne200100](a4, v15), TSWPLineFragment::setWasReused(*a4), (v21 = *a4) == 0)))
  {
LABEL_19:
    operator new();
  }

  *v21 = *(a1 + 80);
  *(v21 + 1) = 1;
  *(v21 + 6) = 72;
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  MaxY = CGRectGetMaxY(v28);
  v23 = *a4;
  *(v23 + 4) = MaxY;
  *(v23 + 6) = a5;
  *(v23 + 7) = a6;
  *(v23 + 8) = a7;
  *(v23 + 9) = a8;
  *(v23 + 10) = a5;
  *(v23 + 11) = a6;
  *(v23 + 12) = a7;
  *(v23 + 13) = a8;
  *(v23 + 14) = 0;
  *(v23 + 15) = 0;
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  Height = CGRectGetHeight(v29);
  v25 = *a4;
  *(v25 + 16) = Height;
  *(v25 + 22) = 0;
  *(v25 + 52) = 0;
  *(v25 + 136) = 0u;
  *(v25 + 152) = 0u;
  TSWPCoreTextTypesetter::createLineRefForEmptyLineFragment(*(a1 + 2024), (a1 + 80), v25, 0, 0.0, 0.0);
  v26 = *a4;
  *(v26 + 27) = 0;
  result = TSWPLineFragment::clearTypesetterState(v26);
  ++*(a1 + 80);
  return result;
}

void sub_26C94B618(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<TSWPLineFragment>::operator=[abi:ne200100](void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1;
}

double TSWPLayoutChore::pDropCapElevationHeight(id *this)
{
  v2 = [objc_msgSend(this[1] textSourceForLayoutInRange:{this[20], this[21]), "characterStyleAtCharIndex:effectiveRange:", this[113], 0}];
  v3 = this[22];
  FontForStyle = TSWPFastCreateFontForStyle(v2, v3, [this[23] scaleTextPercent]);
  v5 = [v3 valueForProperty:85];
  memset(v11, 0, sizeof(v11));
  v6 = [v5 mode];
  [v5 amount];
  Line = TSWPLineFragmentCalculateOffsetForNextLine(v11, 0, v6, v7);
  v9 = this[116];
  if (FontForStyle)
  {
    CFRelease(FontForStyle);
  }

  return Line * v9;
}

void TSWPLayoutChore::pLayoutDropCap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = a6[11];
  v42 = a6[10];
  v43 = v7;
  v8 = a6[13];
  v44 = a6[12];
  v45 = v8;
  v9 = a6[7];
  v38 = a6[6];
  v39 = v9;
  v10 = a6[9];
  v40 = a6[8];
  v41 = v10;
  v11 = a6[3];
  v34 = a6[2];
  v35 = v11;
  v12 = a6[5];
  v36 = a6[4];
  v37 = v12;
  v13 = a6[1];
  v32 = *a6;
  v33 = v13;
  v14 = *(a1 + 904);
  v15 = [*(a1 + 8) textSourceForLayoutInRange:{*(a1 + 160), *(a1 + 168)}];
  v16 = [v15 characterStyleAtCharIndex:v14 effectiveRange:0];
  v17 = *(a1 + 176);
  FontForStyle = TSWPFastCreateFontForStyle(v16, v17, [*(a1 + 184) scaleTextPercent]);
  v31[0] = v14;
  v31[1] = 1;
  [v15 filteredCoreTextAttributesFontScaleEffectiveRange:v31 filterDelegate:TSWPParagraphEnumerator::coreTextPropertiesFilterDelegate((a1 + 104))];
  if (v19 != 1.0 && v19 > 0.0 && FontForStyle)
  {
    v20 = v19 * CTFontGetSize(FontForStyle);
    v21 = CTFontCopyPostScriptName(FontForStyle);
    CFRelease(FontForStyle);
    FontForStyle = TSWPCreateFontWithName(v21, v20);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = [v17 valueForProperty:{85, TSWPFontHeightInfoForFont(FontForStyle, &v27)}];
  v23 = [v22 mode];
  [v22 amount];
  Line = TSWPLineFragmentCalculateOffsetForNextLine(&v27, 0, v23, v24);
  if (*(a1 + 336) == 2)
  {
    v26 = *&v27 + *(a1 + 376) * *(a1 + 344);
  }

  else
  {
    v26 = *&v27 + *&v29 + fmax(*&v28, *(&v27 + 1));
  }

  TSWPDropCapLayoutState::dropCapHeightWithGuess(a1 + 864, v26 + (*(a1 + 920) - 1) * Line);
  TSWPDropCapLayoutState::lineCapHeightWithGuess(a1 + 864, *(&v30 + 1));
  operator new();
}

void sub_26C94BF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(exception_object);
}

double TSWPLayoutChore::calculateBaselineOffsetWithHeightInfo(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 256) == 2)
  {
    return v2 + *(a2 + 296) * *(a2 + 264);
  }

  else
  {
    return v2 + a1[4] + fmax(a1[2], a1[1]);
  }
}

uint64_t TSWPLayoutChore::pSetupTypesetterIfNeeded(TSWPLayoutChore *this, CGSize a2, CGSize a3)
{
  height = a3.height;
  width = a3.width;
  v5 = a2.height;
  v6 = a2.width;
  if (!TSWPCoreTextTypesetter::isParagraphSetUp(*(this + 253)) || ((v8 = *(this + 20), v9 = *(this + 21), v8 == TSWPCoreTextTypesetter::paragraphRange(*(this + 253))) ? (v11 = v9 == v10) : (v11 = 0), !v11 || !TSWPDropCapCTState::isAffectingCTAttributesEquallyTo((this + 872), (*(this + 253) + 288)) || (result = TSWPLineStylingCTState::isAffectingCTAttributesEquallyTo((this + 1936), (*(this + 253) + 328)), (result & 1) == 0)))
  {
    v16[0] = this + 872;
    v16[1] = this + 1936;
    v13 = *(this + 253);
    v14 = TSWPParagraphEnumerator::relevantParagraphIndex((this + 104));
    v15 = TSWPCoreTextTypesetter::beginParagraphLayout(v13, this + 80, this + 768, v16, v14, v6 - width, v5 - height);
    *(this + 117) = v15;
    *(this + 413) = BYTE4(v15) & 1;
    *(this + 568) = BYTE5(v15) & 1;
    *(this + 569) = BYTE6(v15) & 1;
    result = *(this + 1);
    *(this + 35) = result;
  }

  return result;
}

uint64_t TSWPLayoutChore::pFillSingleLineFragment@<X0>(uint64_t a1@<X0>, char a2@<W4>, uint64_t a3@<X5>, uint64_t **a4@<X6>, uint64_t **a5@<X7>, TSWPLineFragment **a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, _WORD *a11, _BYTE *a12)
{
  *a6 = 0;
  a6[1] = 0;
  *(a1 + 600) = a7;
  *(a1 + 608) = a8;
  *(a1 + 616) = a9;
  *(a1 + 624) = a10;
  if (a9 < 0.0)
  {
    *(a1 + 616) = 0;
    a9 = 0.0;
  }

  v15 = *(a1 + 80);
  *(a3 + 145) = a2;
  *(a3 + 146) = a2 ^ 1;
  for (i = *a4; ; *a4 = i)
  {
    if (i == *a5)
    {
      v17 = 0;
LABEL_8:
      *(a3 + 152) = v17;
      goto LABEL_9;
    }

    v17 = *i;
    v18 = **i;
    if (v18 >= v15)
    {
      break;
    }

    i += 2;
  }

  if (v17[25] == v17[24] && (*(a3 + 58) & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = *(v17 + 6);
  if ((v37 & 4) != 0 || v15 != v18 || ((v37 >> 13) & 1) != (*(a1 + 32) & 0x10) >> 4)
  {
    goto LABEL_8;
  }

  v38 = *(v17 + 6) == a7 && *(v17 + 7) == a8;
  if (!v38 || *(v17 + 8) != a9)
  {
    goto LABEL_8;
  }

  std::shared_ptr<TSWPLineFragment>::operator=[abi:ne200100](a6, i);
  TSWPLineFragment::setWasReused(*a6);
  v39 = *a6;
  *(a3 + 152) = v17;
  if (!v39)
  {
LABEL_9:
    operator new();
  }

  *(a3 + 200) = v39;
  v40 = TSWPCoreTextTypesetter::skipLine(*(a1 + 2024), (a1 + 80), a3);
  *(a1 + 80) = v40;
  v19 = *(a1 + 168) + *(a1 + 160);
  if (v40 > v19)
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSRange, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::line_iterator &, const TSWPLineFragmentArray::line_iterator &, unichar &, BOOL &, BOOL)"}];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1778, @"Bad _state.charIndex"}];
    v19 = *(a1 + 168) + *(a1 + 160);
  }

  v22 = *a6;
  if (*(*a6 + 1) + **a6 > v19)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSRange, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::line_iterator &, const TSWPLineFragmentArray::line_iterator &, unichar &, BOOL &, BOOL)"}];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1779, @"Bad line end"}];
    v22 = *a6;
  }

  if (*(v22 + 25) == *(v22 + 24) && (*(a3 + 58) & 1) == 0)
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSRange, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::line_iterator &, const TSWPLineFragmentArray::line_iterator &, unichar &, BOOL &, BOOL)"}];
    [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1780, @"Bad glyphCount"}];
    v22 = *a6;
    if (!*a6)
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"line_fragment_ptr TSWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSRange, const NSUInteger, const BOOL, TSWPTypesetterParamBlock &, TSWPLineFragmentArray::line_iterator &, const TSWPLineFragmentArray::line_iterator &, unichar &, BOOL &, BOOL)"}];
      [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 1782, @"failed to create a line fragment"}];
      v22 = *a6;
    }
  }

  if ((*(a3 + 32) & 4) != 0)
  {
    v29 = (v22 + 216);
    v30 = *(v22 + 27);
    if (*(a1 + 632) >= v30)
    {
      v30 = *(a1 + 632);
    }

    *(a1 + 632) = v30;
    if (*(v22 + 22))
    {
      if (v30 >= *v29)
      {
        v29 = (a1 + 632);
      }

      *(a1 + 632) = *v29;
    }
  }

  v31 = TSWPLayoutChore::pApplySpaceAfterToLineFragment(a1, v22, 0, *(a3 + 208), *(a3 + 216));
  if (v31)
  {
    Paragraph = TSWPLayoutChore::pSetupNextParagraph(a1);
    *a12 = 0;
    if (Paragraph && *(a1 + 80) > v15)
    {
      LOBYTE(v31) = [*(a1 + 8) hasColumnStyleForParagraphBreakAtCharIndex:*(a3 + 216)];
      goto LABEL_29;
    }
  }

  else
  {
LABEL_29:
    *a12 = v31;
  }

  v33 = *(a3 + 208);
  result = IsParagraphBreakingCharacter(*(a3 + 208));
  if (v33 == 8232)
  {
    v35 = 1;
  }

  else
  {
    v35 = result;
  }

  if (v35)
  {
    v36 = *(a3 + 208);
  }

  else
  {
    v36 = 0;
  }

  *a11 = v36;
  return result;
}

void sub_26C94C5EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLayoutChore::pApplySpaceAfterToLineFragment(TSWPLayoutChore *this, const TSWPLineFragment *a2, TSWPLineFragment *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a3 + 20) == 0.0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 57);
  v12 = [*(this + 1) wpKind];
  v13 = 6.0;
  if (v12 == 5)
  {
    v13 = 0.0;
  }

  v14 = fmax(*(this + 55) + v11 + v13, 0.0);
  if (*(this + 107) == 4 && v10)
  {
    *(a3 + 80) = CGRectInset(*(a2 + 80), -v14, 0.0);
  }

  if (*(this + 10) < *(this + 21) + *(this + 20))
  {
    goto LABEL_12;
  }

  if (*(this + 57) != 0.0)
  {
    if (TSWPParagraphEnumerator::isLastParagraph((this + 104)) || (v17 = [*(this + 1) characterAtIndex:*(this + 20) + *(this + 21) - 1] - 4, v17 < 0xC) && ((0x907u >> v17) & 1) != 0 || (TSWPParagraphEnumerator::next((this + 104), &v27), v18 = TSWPParagraphEnumerator::paragraphStyle(&v27, 0), TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v27), objc_msgSend(v18, "intValueForProperty:", 102) != 4))
    {
      v19 = 0;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = [v18 valueForProperty:103];
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    v20 = *(this + 107);
    if ((v20 - 2) < 2 || v20 == 4 && ([*(this + 54) isEqual:v19] & 1) == 0)
    {
      *(a3 + 20) = v14 + *(a3 + 20);
      *(a3 + 9) = v14 + *(a3 + 9);
      *(a3 + 13) = v14 + *(a3 + 13);
    }
  }

LABEL_25:
  *(this + 88) = 0;
  v21 = IsParagraphBreakingCharacter(a4);
  if (v21)
  {
    v22 = *(this + 49);
    if (v22 <= 0.0 || *(this + 26) + *(this + 25) == a5)
    {
      result = 1;
      goto LABEL_38;
    }
  }

  else
  {
    result = 0;
    if (a4 == 8232 || *(this + 10) != *(this + 8))
    {
      goto LABEL_38;
    }

    v22 = *(this + 49);
    if (v22 <= 0.0)
    {
LABEL_12:
      result = 0;
      goto LABEL_38;
    }
  }

  if (v10)
  {
    *(a3 + 20) = v22 + *(a3 + 20);
    *(a3 + 9) = v22 + *(a3 + 9);
    *(a3 + 13) = v22 + *(a3 + 13);
  }

  Line = TSWPLineFragment::calculateOffsetForNextLine(a2, *(this + 84), *(this + 47));
  v24 = *(a2 + 20);
  v25 = *(a2 + 14) + *(a2 + 18) + *(a2 + 16) + *(a2 + 17) + *(a2 + 19) + v24 - Line;
  if (v25 > 0.0)
  {
    v26 = fmin(v25, v24);
    *(this + 88) = -v26;
    if (a3)
    {
      *(a3 + 9) = *(a3 + 9) - v26;
    }
  }

  result = v21;
LABEL_38:
  *(this + 592) = 0;
  return result;
}

BOOL TSWPLayoutChore::pSetupNextParagraph(TSWPLayoutChore *this)
{
  isLastParagraph = TSWPParagraphEnumerator::isLastParagraph((this + 104));
  if (!isLastParagraph)
  {
    TSWPParagraphEnumerator::operator++(this + 13);
    *(this + 10) = TSWPParagraphEnumerator::paragraphTextRange((this + 104));
    *(this + 411) = *(this + 410);
    TSWPLayoutChore::pSetupStateForParagraphIndex(this, 0);
  }

  return !isLastParagraph;
}

id TSWPLayoutChore::pSetupTextSource(id *this)
{
  result = this[1];
  this[35] = result;
  return result;
}

uint64_t TSWPLayoutChore::pGetCharacterStyleAtCharIndex(id *this, uint64_t a2)
{
  v4 = [this[1] characterStyleAtCharIndex:a2 effectiveRange:0];
  if (!v4)
  {
    return v4;
  }

  v5 = [this[3] styleProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v4;
  }

  return [v5 modifiedCharacterStyle:v4 atCharIndex:a2];
}

void TSWPLayoutChore::pSetupStateForDropCap(id *this, id *a2)
{
  objc_opt_class();
  [this[22] objectForProperty:109];
  v4 = TSUDynamicCast();
  TSWPDropCapLayoutState::TSWPDropCapLayoutState(v6, v4, [this[1] textSourceForLayoutInRange:{this[20], this[21]}]);
  TSWPDropCapLayoutState::operator=(a2, v6);
  TSWPDropCapLayoutState::~TSWPDropCapLayoutState(v6);
  if (this[20] < this[10] || (v5 = this[21], v5 <= [*a2 charCount]) || objc_msgSend(this[33], "effectiveTypeForLevel:", this[34]))
  {
    TSWPDropCapLayoutState::clear(a2);
  }
}

void sub_26C94CAE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSWPDropCapLayoutState::~TSWPDropCapLayoutState(va);
  _Unwind_Resume(a1);
}

id *TSWPLayoutChore::pSetupStateForLineBalancing(id *this, id *a2, double a3, int a4, int a5, double a6)
{
  v12 = ([this[257] autosizeFlags] & 0xC) != 0;

  return TSWPLineBalancingLayoutState::prepareForRestore(a2, this + 10, v12, a3, a4, a5, a6);
}

void TSWPLayoutChore::pSetupStateForLineStyling(id *this, id *a2)
{
  objc_opt_class();
  [this[22] objectForProperty:111];
  v4 = TSUDynamicCast();
  TSWPLineStylingLayoutState::TSWPLineStylingLayoutState(v5, v4, [this[1] textSourceForLayoutInRange:{this[20], this[21]}]);
  TSWPLineStylingLayoutState::operator=(a2, v5);
  TSWPLineStylingLayoutState::~TSWPLineStylingLayoutState(v5);
  if (this[20] < this[10] || [this[33] effectiveTypeForLevel:this[34]])
  {
    TSWPLineStylingLayoutState::clear(a2);
  }
}

void sub_26C94CC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSWPLineStylingLayoutState::~TSWPLineStylingLayoutState(va);
  _Unwind_Resume(a1);
}

double TSWPLayoutChore::pCalculateSpaceBefore(TSWPLayoutChore *this, int a2)
{
  v4 = *(this + 48);
  v5 = 0.0;
  v6 = 0;
  if (v4 != 0.0 && a2 && (*(this + 592) & 1) != 0)
  {
    if (TSWPParagraphEnumerator::isFirstParagraph((this + 104)))
    {
      v6 = 0;
      v5 = v4;
    }

    else
    {
      TSWPParagraphEnumerator::previous((this + 104), &v16);
      v6 = TSWPParagraphEnumerator::paragraphStyle(&v16, 0);
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v16);
      [v6 floatValueForProperty:88];
      v8 = ((v7 * [*(this + 23) scaleTextPercent]) / 100.0);
      if (v4 <= v8)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v4 - v8;
      }
    }
  }

  if (*(this + 57) != 0.0 && (!a2 || (*(this + 592) & 1) != 0))
  {
    v9 = *(this + 107);
    if ((v9 | 2) != 2)
    {
      if (a2)
      {
        if (TSWPParagraphEnumerator::isFirstParagraph((this + 104)))
        {
          goto LABEL_19;
        }

        if (!v6)
        {
          TSWPParagraphEnumerator::previous((this + 104), &v16);
          v6 = TSWPParagraphEnumerator::paragraphStyle(&v16, 0);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v16);
        }

        if ([v6 intValueForProperty:102] != 4)
        {
LABEL_19:
          v10 = 0;
        }

        else
        {
          v10 = [v6 valueForProperty:103];
        }

        v9 = *(this + 107);
      }

      else
      {
        v10 = 0;
      }

      if ((v9 | 2) == 3 || ([*(this + 54) isEqual:v10] & 1) == 0)
      {
        v11 = *(this + 57);
        v12 = [*(this + 1) wpKind];
        v13 = 6.0;
        if (v12 == 5)
        {
          v13 = 0.0;
        }

        v14 = *(this + 55) + v11 + v13;
        if (v14 > 0.0)
        {
          return v5 + v14;
        }
      }
    }
  }

  return v5;
}

uint64_t TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(TSWPLayoutChore *this, double a2, CGSize a3, int a4, BOOL *a5)
{
  height = a3.height;
  width = a3.width;
  if (!*(this + 67))
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 4334, @"Bad _state.attachmentBeingPaginated"}];
  }

  v13 = TSWPLayoutChore::pCalculateSpaceBefore(this, a4);
  if (a4)
  {
    v14 = v13 + 1.0;
  }

  else
  {
    v14 = v13;
  }

  [*(this + 23) wpBounds];
  v15 = v14 + a2;
  v16 = *(this + 36);
  if (width - (v16 + *(this + 37)) >= 18.0)
  {
    v17 = width - (v16 + *(this + 37));
  }

  else
  {
    v17 = 18.0;
  }

  if (height - v15 >= 0.0)
  {
    v18 = height - v15;
  }

  else
  {
    v18 = 0.0;
  }

  v42 = 0;
  if (objc_opt_respondsToSelector())
  {
    v19 = [*(this + 257) parentLayoutForInlineAttachments];
  }

  else
  {
    v19 = 0;
  }

  v20 = [*(this + 68) nextLayoutForSize:v19 parentLayout:*(this + 95) previousHint:0 horizontally:&v42 outFinished:{v17, v18}];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(this + 2) shouldAllowFinishingPartionedAttachmentLayout])
  {
    v21 = v42;
  }

  else
  {
    v21 = 1;
  }

  v42 = v21 & 1;
  if (v20)
  {
    v22 = [v20 parent];
    if (v22)
    {
      v23 = v22 == v19;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      [*(this + 257) addAttachmentLayout:v20];
      [v20 validate];
      *a5 = v42 ^ 1;
      [v20 frame];
      v25 = v24;
      [v20 alignmentFrame];
      v41 = v26;
      if (v26 > v17 + 1.0)
      {
        v27 = [MEMORY[0x277D6C290] currentHandler];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)"}];
        [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 4381, @"%@ returned too wide a layout for a partitioned attachment (%g > %g).", objc_opt_class(), *&v41, v17 + 1.0}];
      }

      if (v25 <= 0.0)
      {
        v29 = [MEMORY[0x277D6C290] currentHandler];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)"}];
        [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 4385, @"Illegal partition layout height"}];
      }

      operator new();
    }

    v33 = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)"}];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"];
    v36 = @"Partitioned layout already has a different parent.";
    v37 = v33;
    v38 = v34;
    v39 = 4368;
  }

  else
  {
    v31 = [MEMORY[0x277D6C290] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPLineFragment *TSWPLayoutChore::pCreateAttachmentPartitionLineFragment(CGFloat, CGSize, uint, BOOL &)"}];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"];
    v36 = @"partitioner failed to create layout";
    v37 = v31;
    v38 = v32;
    v39 = 4361;
  }

  [v37 handleFailureInFunction:v38 file:v35 lineNumber:v39 description:v36];
  return 0;
}

uint64_t TSWPLayoutChore::pGetAlignmentForParagraphStyle(TSWPLayoutChore *this, TSWPParagraphStyle *a2)
{
  result = [(TSSStyle *)a2 intValueForProperty:86];
  if (*(this + 257))
  {
    v4 = result == 4;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(this + 257);

    return [v5 naturalAlignment];
  }

  return result;
}

uint64_t TSWPLayoutChore::pCreateFullContainerAnchoredDrawableLineFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat *a9, _BYTE *a10)
{
  v10 = MEMORY[0x28223BE20]();
  v46 = *MEMORY[0x277D85DE8];
  if (*(v10 + 80) != *(v10 + 88))
  {
    return 0;
  }

  v18 = v11;
  if (*(v11 + 88) != *(v11 + 80))
  {
    return 0;
  }

  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v10;
  objc_opt_class();
  [*(v25 + 8) attachmentAtCharIndex:*(v25 + 80)];
  v26 = TSUDynamicCast();
  if (![(TSWPDrawableAttachment *)v26 isAnchored])
  {
    return 0;
  }

  v27 = [(TSWPDrawableAttachment *)v26 drawable];
  if ([*(v18 + 128) containsObject:v27] & 1) != 0 || !-[TSDExteriorTextWrap type](-[TSDDrawableInfo exteriorTextWrap](v27, "exteriorTextWrap"), "type") || -[TSDExteriorTextWrap type](-[TSDDrawableInfo exteriorTextWrap](v27, "exteriorTextWrap"), "type") == 5 || -[TSDExteriorTextWrap isHTMLWrap](-[TSDDrawableInfo exteriorTextWrap](v27, "exteriorTextWrap"), "isHTMLWrap") || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(*(v25 + 2056), "siblingTargetIsManipulatingDrawable:", v27))
  {
    return 0;
  }

  if (![*(v18 + 112) splitLine:v45 lineSegmentRects:0 wrappableAttachments:(*(v25 + 56) & 0xFFFFFFFB) == 1 ignoreFloatingGraphics:0 floatingCausedWrap:0 skipHint:*(v18 + 120) userInfo:{*(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72)}])
  {
    return 0;
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0;
  v42 = *MEMORY[0x277CBF348];
  v41 = *MEMORY[0x277CBF3A8];
  if (!TSWPLayoutChore::pPositionAnchoredAttachment(v25, *v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 88), *(v18 + 96), *(v18 + 104), v29, v30, v26, *(v25 + 80), v24, 1, &v44, v28, &v43, &v42, &v41, 0))
  {
    goto LABEL_13;
  }

  v40 = 0.0;
  if ([*(v18 + 112) splitLine:v45 lineSegmentRects:v28 wrappableAttachments:(*(v25 + 56) & 0xFFFFFFFB) == 1 ignoreFloatingGraphics:0 floatingCausedWrap:&v40 skipHint:*(v18 + 120) userInfo:{*(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72)}])
  {
    goto LABEL_13;
  }

  MaxY = CGRectGetMaxY(*v18);
  v34 = *(v18 + 88);
  v35 = v40;
  if (v40 < 1.0)
  {
    v35 = 1.0;
  }

  v36 = floor(v34 + v35);
  if (MaxY <= v36)
  {
    v37 = *(v18 + 40);
LABEL_23:
    TSWPLayoutChore::pFillAnchoredDrawableLineFragment(v25, v23, v22, &v39, *(v18 + 48), v34, *(v18 + 64), *(v18 + 32) + v37);
    TSWPLineFragmentArray::appendObject(*v21, &v39);
    ++*v20;
    v38 = *(v25 + 80);
    *(v25 + 88) = v38;
    *v24 = v38;
    *(v24 + 1) = v38;
    *v19 = 0;
    *a9 = CGRectGetMaxY(*v18);
    *a10 = 1;
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v39 + 1));
    }

    v31 = 1;
    goto LABEL_14;
  }

  v37 = *(v18 + 40);
  if (MaxY - v36 < v37)
  {
    goto LABEL_23;
  }

LABEL_13:
  v31 = 0;
LABEL_14:

  return v31;
}

void sub_26C94D8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLayoutChore::pAddFootnotesForLineRange(id *this, _NSRange a2, double a3, int a4)
{
  location = a2.location;
  v8 = [this[1] footnoteRangeForTextRange:{a2.location, a2.length}];
  if (v8 >= v8 + v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v8;
  v11 = v9;
  while (1)
  {
    v17 = 0;
    [this[85] addFootnoteReferenceStorage:{objc_msgSend(objc_msgSend(this[1], "footnoteAtFootnoteIndex:outCharIndex:", v10, &v17), "containedStorage")}];
    if (a4)
    {
      [this[85] footnoteHeight];
      if (v12 > a3 && v17 != location)
      {
        break;
      }
    }

    ++v10;
    if (!--v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (location <= v17 + 1)
  {
    v15 = v17 + 1;
  }

  else
  {
    v15 = location;
  }

  if (location >= v17 + 1)
  {
    v16.location = v17 + 1;
  }

  else
  {
    v16.location = location;
  }

  v16.length = v15 - v16.location;
  TSWPLayoutChore::removeFootnotesInRange(this, v16);
  return v17;
}

uint64_t TSWPLayoutChore::pIsLastColumn(id *this)
{
  if (![this[1] wpKind])
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPLayoutChore::pIsLastColumn()"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 5792, @"pIsLastColumn doesn't work on the body"}];
  }

  result = [this[257] isLastTarget];
  if (result)
  {
    return [objc_msgSend(this[257] "columns")] == this[23];
  }

  return result;
}

uint64_t TSWPLayoutChore::pFindCharIndexOfRunThatMadeUsGrowToLineHeightGuess(TSWPLayoutChore *this, double a2, double a3, uint64_t a4)
{
  v7 = *(this + 21) + *(this + 20);
  v8 = [*(this + 1) attachmentIndexRangeForTextRange:{a4, v7 - a4}];
  if (v8 < v8 + v9)
  {
    v10 = v8;
    v11 = v9;
    while (1)
    {
      v17 = 0;
      objc_opt_class();
      [*(this + 1) attachmentAtAttachmentIndex:v10 outCharIndex:&v17];
      v12 = TSUDynamicCast();
      if (v12)
      {
        v13 = v12;
        if (([v12 isAnchored] & 1) == 0)
        {
          v14 = [*(this + 257) layoutForInlineDrawable:{objc_msgSend(v13, "drawable")}];
          [objc_msgSend(v14 "layoutController")];
          [v14 alignmentFrame];
          if (vabdd_f64(v15 + a3, a2) <= 1.0)
          {
            break;
          }
        }
      }

      ++v10;
      if (!--v11)
      {
        return v7;
      }
    }

    return v17;
  }

  return v7;
}

uint64_t TSWPLayoutChore::pSetupAnchoredGraphics(TSWPLayoutChore *this, NSMutableArray *a2, _NSRange a3, double a4, TSWPLayoutState *a5, CGSize a6, char a7, double *a8, double *a9, double *a10)
{
  v67[0] = 0;
  if (*(this + 14))
  {
    result = 0;
    *(this + 11) = *(this + 10);
    return result;
  }

  height = a6.height;
  width = a6.width;
  length = a3.length;
  location = a3.location;
  v56 = this + 80;
  v22 = [*(this + 1) attachmentIndexForInsertionAtCharIndex:*(this + 11)];
  v66 = *(this + 11);
  [*(this + 23) wpBounds];
  x = v68.origin.x;
  y = v68.origin.y;
  v25 = v68.size.width;
  v26 = v68.size.height;
  v62 = CGRectGetMinX(v68) + *(a5 + 31);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = v25;
  v69.size.height = v26;
  v63 = CGRectGetMaxX(v69) - *(a5 + 27);
  v64 = (v63 - v62) * 0.5;
  v65 = 0;
  if (v22 >= *(this + 9))
  {
    v53 = a4;
    v28 = a4;
    v54 = v56;
    goto LABEL_37;
  }

  v55 = a9;
  v57 = 0;
  v27 = location + length;
  v28 = a4;
  v58 = a4;
  do
  {
    v61 = 0;
    v29 = [*(this + 1) attachmentAtAttachmentIndex:v22 outCharIndex:&v61];
    objc_opt_class();
    v30 = TSUDynamicCast();
    v31 = v30;
    if (v30)
    {
      LODWORD(v30) = [v30 isAnchored];
      if (v30)
      {
        v32 = [*(this + 257) validatedLayoutForAnchoredDrawable:{-[TSWPDrawableAttachment drawable](v31, "drawable")}];
        v33 = [v32 iterativePositioningState];
        if (v33 && [v33 passCount])
        {
          goto LABEL_12;
        }

        LOBYTE(v30) = [v32 hasFinishedIterativePositioning];
      }
    }

    if (v61 >= v27 && (v30 & 1) == 0)
    {
      break;
    }

LABEL_12:
    if ([v29 isDrawable])
    {
      if ([v29 isAnchored])
      {
        if (v61 >= *(this + 11))
        {
          v34 = [(TSWPDrawableAttachment *)v31 drawable];
          if ((-[NSMutableArray containsObject:](a2, "containsObject:", v34) & 1) == 0 && ((objc_opt_respondsToSelector() & 1) == 0 || ([*(this + 257) siblingTargetIsManipulatingDrawable:v34] & 1) == 0))
          {
            v60 = *MEMORY[0x277CBF348];
            v59 = *MEMORY[0x277CBF3A8];
            v57 |= TSWPLayoutChore::pPositionAnchoredAttachment(this, x, y, v25, v26, a4, width, height, v35, v36, v31, v61, a5, a7, &v66, a2, v67, &v60, &v59, &v62) ^ 1;
            v37 = [(TSWPDrawableAttachment *)v31 isHTMLWrap];
            v38 = v58;
            v39 = fmax(v58, *(&v60 + 1) + *(&v59 + 1));
            v40 = fmax(v28, *(&v60 + 1) + *(&v59 + 1));
            if (v37)
            {
              v38 = v39;
            }

            v58 = v38;
            if (!v37)
            {
              v28 = v40;
            }
          }
        }
      }
    }

    ++v22;
  }

  while (v22 < *(this + 9));
  if (v65)
  {
    v41 = [v65 count];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = 0.0;
      v45 = 1;
      do
      {
        v44 = v44 + adjustedLayoutSize([*(this + 257) validatedLayoutForAnchoredDrawable:{objc_msgSend(objc_msgSend(v65, "objectAtIndexedSubscript:", v43), "drawable")}]);
        v43 = v45;
        v46 = v42 > v45++;
      }

      while (v46);
      v47 = 0;
      v48 = v62 + fmax(v64 + v44 * -0.5, 0.0);
      v49 = 1;
      do
      {
        v50 = [*(this + 257) validatedLayoutForAnchoredDrawable:{objc_msgSend(objc_msgSend(v65, "objectAtIndexedSubscript:", v47), "drawable")}];
        v51 = objc_opt_respondsToSelector();
        v52 = v48;
        if (v51)
        {
          [*(this + 257) layoutPositionFromAnchoredAttachmentPosition:{v48, a4}];
        }

        [(TSDLayout *)v50 setAdjustedInterimPositionX:v52];
        [(TSDAbstractLayout *)v50 fixTransformFromInterimPosition];
        v48 = v48 + adjustedLayoutSize(v50);
        v47 = v49;
        v46 = v42 > v49++;
      }

      while (v46);
    }

    [v65 removeAllObjects];
  }

  if (v57)
  {
    v54 = &v66;
    a9 = v55;
  }

  else
  {
    a9 = v55;
    v54 = v56;
  }

  v53 = v58;
LABEL_37:
  *(this + 11) = *v54;
  *a8 = v28;
  *a9 = v53;
  *a10 = 0.0;
  return v67[0];
}

BOOL TSWPLayoutChore::pAnchoredGraphicInLineRange(uint64_t a1, unint64_t a2, uint64_t a3, TSWPLineFragmentArray **a4)
{
  v4 = a2 + a3;
  if (a2 >= a2 + a3)
  {
    return 0;
  }

  if ((*(TSWPLineFragmentArray::objectAtIndex(*a4, a2) + 24) & 8) != 0)
  {
    return 1;
  }

  v8 = a2 + 1;
  v9 = a3 - 1;
  do
  {
    v10 = v8;
    if (!v9)
    {
      break;
    }

    v11 = TSWPLineFragmentArray::objectAtIndex(*a4, v8);
    v8 = v10 + 1;
    --v9;
  }

  while ((*(v11 + 24) & 8) == 0);
  return v10 < v4;
}

unint64_t TSWPLayoutChore::removeFootnotesInRange(id *this, _NSRange a2)
{
  result = [this[1] footnoteRangeForTextRange:{a2.location, a2.length}];
  if (result < result + v4)
  {
    v5 = result;
    v6 = v4;
    do
    {
      result = [this[85] removeFootnoteReferenceStorage:{objc_msgSend(objc_msgSend(this[1], "footnoteAtFootnoteIndex:outCharIndex:", v5++, 0), "containedStorage")}];
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t TSWPLayoutChore::pPullDownWidowsFromPreviousColumn(TSWPLayoutChore *this, TSWPLayoutState *a2)
{
  v4 = *(this + 30);
  v5 = *(this + 257);
  if (v4)
  {
    v6 = [objc_msgSend(v5 "columns")];
    v7 = 0;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = [v5 previousTargetLastColumn];
    v7 = [*(this + 257) previousTargetTopicNumbers];
    if (!v6)
    {
      return 0;
    }
  }

  location = [v6 nextWidowPullsDownFromCharIndex];
  v9 = [v6 startCharIndex];
  if (location == *a2)
  {
    return 0;
  }

  v11 = v9;
  TSWPLayoutState::TSWPLayoutState(v44, a2);
  v12 = *(this + 1);
  v13 = [*(this + 3) styleProvider];
  if (v12)
  {
    [v12 paragraphEnumeratorAtCharIndex:location styleProvider:v13];
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  if (TSWPParagraphEnumerator::paragraphTextRange(&v43) == location)
  {
    for (i = 0; !TSWPParagraphEnumerator::isFirstParagraph(&v43); i = 1)
    {
      TSWPParagraphEnumerator::operator--(&v43);
      v15 = TSWPParagraphEnumerator::paragraphStyle(&v43, &v42);
      if (v42.location <= v11 || ![v15 intValueForProperty:90])
      {
        break;
      }

      location = v42.location;
      TSWPParagraphEnumerator::operator--(v45);
      *v47 = v42;
      if (!v7)
      {
        v7 = (this + 816);
      }

      TSWPTopicNumberHints::backUpByOneParagraph(this + 16, v7, *(this + 1));
      v16 = *(this + 105);
      if (*(this + 99) < v16 && v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        TSWPTopicNumberHints::operator=(this + 17, this + 16);
      }
    }
  }

  else
  {
    i = 0;
  }

  v17 = [v6 range];
  if (location <= v17 + v18)
  {
    v19 = (v17 + v18);
  }

  else
  {
    v19 = location;
  }

  if (location >= v17 + v18)
  {
    v20 = (v17 + v18);
  }

  else
  {
    v20 = location;
  }

  [v6 trimToCharIndex:location inTarget:*(this + 257) removeAutoNumberFootnoteCount:{objc_msgSend(*(this + 1), "autoNumberFootnoteCountForRange:", v20, v19 - v20)}];
  if (i)
  {
    *(this + 104) = v45[0];
    *(this + 120) = v45[1];
    *(this + 136) = v45[2];
    *(this + 152) = v46;
    *(this + 10) = *v47;
    *(this + 10) = location;
    TSWPLayoutChore::pSetupStateForParagraphIndex(this, 0);
    if (v7)
    {
      v21 = v7;
    }

    else
    {
      v21 = (this + 816);
    }

    TSWPTopicNumberHints::operator=(this + 16, v21);
    TSWPTopicNumberHints::advanceToCharIndex(this + 16, *(this + 10), *(this + 1));
  }

  else
  {
    v22 = (location - v47[0]);
    if (location >= v47[0])
    {
      v44[0] = location;
      v48 = (location - v47[0]);
      if (location > *(this + 8))
      {
        v23 = [MEMORY[0x277D6C290] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPLayoutChore::pPullDownWidowsFromPreviousColumn(TSWPLayoutState *)"];
        [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 4591, @"Bad backUpLayoutState.charIndex"}];
        v22 = v48;
      }

      if (v22 >= v47[1])
      {
        v25 = [MEMORY[0x277D6C290] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPLayoutChore::pPullDownWidowsFromPreviousColumn(TSWPLayoutState *)"];
        [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 4592, @"Bad typesetterCharIndex"}];
      }

      v49 = v44[0] == v47[0];
      objc_opt_class();
      v27 = TSUDynamicCast();
      v28 = v27;
      if (v27)
      {
        [v27 wpBounds];
        fixSpaceAfterForParagraphBorder(this + 80, [v28 lineFragmentArray], v29, v30, v31, v32);
        [v28 clearAdornments];
        TSWPLayoutChore::addParagraphAdornmentsToColumn(v28, *(this + 24), [*(this + 3) styleProvider]);
        v33 = *(this + 24);
        [*(this + 3) styleProvider];
        TSWPLayoutChore::addChangeBarAdornmentsToColumn(v28, v33);
      }

      TSWPLayoutChore::pRestoreStateFromOldState(this, v44);
      (*(**(this + 253) + 32))(*(this + 253), *(this + 72));
      if (location == TSWPParagraphEnumerator::paragraphTextRange((this + 104)))
      {
        if (v7)
        {
          v34 = v7;
        }

        else
        {
          v34 = (this + 816);
        }

        TSWPTopicNumberHints::backUpByOneParagraph(this + 16, v34, *(this + 1));
      }

      TSWPTopicNumberHints::advanceToCharIndex(this + 16, *(this + 10), *(this + 1));
    }
  }

  v35 = *(this + 99);
  v36 = *(this + 105);
  v37 = v35 < v36 || v35 == 0x7FFFFFFFFFFFFFFFLL;
  if (v37 && v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    TSWPTopicNumberHints::operator=(this + 17, this + 16);
  }

  [*(this + 23) setStartCharIndex:*(this + 10)];
  v38 = *(this + 251) - *(this + 250);
  if (v38)
  {
    v39 = 0x82FA0BE82FA0BE83 * (v38 >> 4);
    v40 = v38 - 688;
    do
    {
      v41 = *(this + 250);
      if (*(v41 + v40) > *(this + 10))
      {
        TSWPLayoutState::operator=((v41 + v40), this + 10);
      }

      v40 -= 688;
      --v39;
    }

    while (v39);
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v43);
  TSWPLayoutState::~TSWPLayoutState(v44);
  return 1;
}

void sub_26C94E5E8(_Unwind_Exception *a1, uint64_t a2, TSWPParagraphEnumerator *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(va);
  TSWPLayoutState::~TSWPLayoutState(va1);
  _Unwind_Resume(a1);
}

uint64_t TSWPLayoutChore::pContainsOnlyOneAnchoredDrawable(uint64_t a1, TSWPLineFragmentArray **a2)
{
  if (TSWPLineFragmentArray::count(*a2) != 1)
  {
    return 0;
  }

  result = TSWPLineFragmentArray::objectAtIndex(*a2, 0);
  if (result)
  {
    return (*(result + 24) >> 6) & 1;
  }

  return result;
}

uint64_t TSWPLayoutChore::pHandleOrphanAndKeepTogether(uint64_t a1, TSWPLineFragmentArray **a2, _WORD *a3, _BYTE *a4, NSUInteger a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  Object = TSWPLineFragmentArray::lastObject(*a2);
  v19 = Object;
  v21 = Object && (v20 = *(a1 + 160), *Object >= v20) && *(Object + 8) + *Object < *(a1 + 168) + v20;
  if (*(a1 + 409) & 1) == 0 && (*(a1 + 408) & 1) == 0 && (*(a1 + 410) & 1) == 0 && (v21 || (*(a1 + 411) & 1) == 0) || Object && (*(Object + 24))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v49 = a3;
  v22 = TSWPLineFragmentArray::count(*a2);
  v23 = *(a1 + 80);
  if (!v21)
  {
    goto LABEL_15;
  }

  LineIndexForCharIndex = TSWPLineFragmentArray::findLineIndexForCharIndex(*a2, *(a1 + 160));
  v25 = *TSWPLineFragmentArray::objectAtIndex(*a2, LineIndexForCharIndex);
  if (v25 > a5 && ((*(a1 + 410) & 1) != 0 || *(a1 + 409) == 1))
  {
    v26 = v22 - LineIndexForCharIndex;
    v23 = *(a1 + 160);
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  if (*(a1 + 408) != 1)
  {
    goto LABEL_15;
  }

  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  if (TSWPLineFragment::preventWidowCorrection(v19, v55))
  {
    goto LABEL_15;
  }

  v48 = v22 - LineIndexForCharIndex;
  if (v22 - LineIndexForCharIndex != 1 || v25 <= a5)
  {
    if (v48 == 2 && v25 > a5)
    {
      v19 = TSWPLineFragmentArray::objectAtIndex(*a2, LineIndexForCharIndex);
      v56.origin.x = a6;
      v56.origin.y = a7;
      v56.size.width = a8;
      v56.size.height = a9;
      if (!TSWPLineFragment::preventWidowCorrection(v19, v56))
      {
        goto LABEL_63;
      }
    }

    else if (v48 >= 3)
    {
LABEL_63:
      v26 = 0;
      v27 = *v19;
      goto LABEL_16;
    }

LABEL_15:
    v26 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
    LineIndexForCharIndex = v22 - 1;
    goto LABEL_17;
  }

  v23 = *(a1 + 160);
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = 1;
LABEL_17:
  TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v53, (a1 + 104));
  if ((v26 != 0 || !v21) && v23 && v23 < *(a1 + 64))
  {
    v52 = *(a1 + 160);
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v51, &v53);
    v28 = 0;
    while (1)
    {
      v29 = v28;
      if (TSWPParagraphEnumerator::isFirstParagraph(&v51))
      {
        break;
      }

      TSWPParagraphEnumerator::operator--(&v51);
      v30 = TSWPParagraphEnumerator::paragraphStyle(&v51, &v52);
      if (v52.length + v52.location <= a5)
      {
        break;
      }

      v31 = [v30 intValueForProperty:90];
      v28 = 1;
      if (!v31)
      {
        if (v29)
        {
          v23 = v52.length + v52.location;
          LineIndexForCharIndex = TSWPLineFragmentArray::findLineIndexForCharIndex(*a2, v52.length + v52.location);
          TSWPParagraphEnumerator::next(&v51, &v50);
          v26 = v22 - LineIndexForCharIndex;
          v53 = v50;
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v50);
        }

        break;
      }
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v51);
  }

  if (v26)
  {
    if (!LineIndexForCharIndex)
    {
      v32 = [MEMORY[0x277D6C290] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLayoutChore::pHandleOrphanAndKeepTogether(const line_fragment_array_ptr &, unichar *, BOOL *, CGRect, TSWPCharIndex)"}];
      [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 5557, @"Trying to push down the first line of a column"}];
    }

    for (i = 0; i != v26; ++i)
    {
      if (*(TSWPLineFragmentArray::objectAtIndex(*a2, LineIndexForCharIndex + i) + 176))
      {
        TSWPTopicNumberHints::backUpByOneParagraph((a1 + 768), (a1 + 816), *(a1 + 8));
      }
    }

    (*(**(a1 + 2024) + 24))(*(a1 + 2024));
    *(a1 + 80) = v23;
    v35 = *&v53.var2;
    *(a1 + 104) = *&v53.var0;
    *(a1 + 120) = v35;
    *(a1 + 136) = *&v53.var4;
    *(a1 + 152) = v53.var6;
    TSWPLayoutChore::pSetupStateForParagraphIndex(a1, 0);
    v36 = *(a1 + 160);
    if (v36)
    {
      v37 = v36 - 1;
      v38 = [*(a1 + 8) characterAtIndex:v36 - 1];
      v39 = v38;
      v40 = IsParagraphBreakingCharacter(v38);
      if (v40)
      {
        if ([*(a1 + 8) hasColumnStyleForParagraphBreakAtCharIndex:v37])
        {
          v40 = 1;
        }

        else
        {
          v40 = [*(a1 + 8) hasSectionForParagraphBreakAtCharIndex:v37];
        }
      }
    }

    else
    {
      v40 = 0;
      v39 = 0;
    }

    *v49 = v39;
    *a4 = v40;
    if (TSWPLayoutChore::pAnchoredGraphicInLineRange(v40, LineIndexForCharIndex, v26, a2))
    {
      *(a1 + 640) = 1;
    }

    v41 = *TSWPLineFragmentArray::objectAtIndex(*a2, LineIndexForCharIndex);
    v42 = TSWPLineFragmentArray::objectAtIndex(*a2, v26 + LineIndexForCharIndex - 1);
    v43 = v42[1];
    v44 = v43 + *v42;
    if (v41 <= v44)
    {
      v45 = v43 + *v42;
    }

    else
    {
      v45 = v41;
    }

    if (v41 >= v44)
    {
      v46.location = v44;
    }

    else
    {
      v46.location = v41;
    }

    v46.length = v45 - v46.location;
    TSWPLayoutChore::removeFootnotesInRange(a1, v46);
    v54.location = LineIndexForCharIndex;
    v54.length = v26;
    TSWPLineFragmentArray::removeObjectsInRange(*a2, v54);
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v53);
  return v27;
}

void sub_26C94EB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, TSWPParagraphEnumerator *a10, uint64_t a11, uint64_t a12, TSWPParagraphEnumerator *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a18);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&a27);
  _Unwind_Resume(a1);
}

uint64_t TSWPLayoutChore::pAdjustTrailingSpaceAfter(uint64_t a1, TSWPLineFragmentArray **a2)
{
  result = TSWPLineFragmentArray::lastObject(*a2);
  if (result)
  {
    v5 = result;
    v6 = *(result + 160);
    if (v6 != 0.0)
    {
      v7 = *(a1 + 160);
      v9 = *result >= v7;
      v8 = *result - v7;
      v9 = !v9 || v8 >= *(a1 + 168);
      if (v9)
      {
        [TSWPLayoutChore::pGetParagraphStyleAtCharIndex(a1 *result)];
        v11 = ((v10 * [*(a1 + 184) scaleTextPercent]) / 100.0);
        v6 = v5[20];
      }

      else
      {
        v11 = *(a1 + 392);
      }

      if (v6 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v6;
      }

      v13 = TSWPLineFragmentArray::count(*a2);
      if (v13)
      {
        v14 = v6 - v12;
        v15 = v5[4] + v5[5];
        v16 = v13 - 1;
        do
        {
          v17 = TSWPLineFragmentArray::objectAtIndex(*a2, v16);
          if (*(v17 + 32) + *(v17 + 40) != v15)
          {
            break;
          }

          v18 = v17;
          v19 = v12 + *(a1 + 704);
          *(v17 + 72) = *(v17 + 72) - v19;
          v20 = *(v17 + 104) - v19;
          *(v17 + 104) = v20;
          if (*(v17 + 176))
          {
            v21 = *(v17 + 80);
            v22 = *(v17 + 88);
            v23 = *(v17 + 96);
            TSWPLineFragment::labelRect(v17);
            v29.origin.x = v24;
            v29.origin.y = v25;
            v29.size.width = v26;
            v29.size.height = v27;
            v28.origin.x = v21;
            v28.origin.y = v22;
            v28.size.width = v23;
            v28.size.height = v20;
            *(v18 + 80) = CGRectUnion(v28, v29);
          }

          *(v18 + 160) = v14;
          --v16;
        }

        while (v16 != -1);
      }

      return TSWPLineFragmentArray::lastObject(*a2);
    }
  }

  return result;
}

void TSWPLayoutChore::pPostProcessAttachments(uint64_t a1, TSWPLineFragment *****a2)
{
  v4 = [*(a1 + 184) anchoredRange];
  v26 = v5;
  v6 = malloc_type_malloc(0x190uLL, 0x1000040BDFB0063uLL);
  v8 = **a2;
  v7 = (*a2)[1];
  if (v8 == v7)
  {
    goto LABEL_26;
  }

  v25 = v7;
  v28 = 200;
  do
  {
    if (*(a1 + 700))
    {
      break;
    }

    v9 = *v8;
    if (((*v8)[3] & 0xC) == 0)
    {
      goto LABEL_25;
    }

    v10 = *v9;
    v11 = v9[1];
    if (v28 >= v11)
    {
      [*(a1 + 8) getCharacters:v6 range:{*v9, v9[1]}];
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v6 = malloc_type_realloc(v6, 2 * v11, 0x1000040BDFB0063uLL);
      [*(a1 + 8) getCharacters:v6 range:{v10, v11}];
      v28 = v11;
    }

    v27 = v9;
    v29 = v6;
    v12 = v10 - v4;
    do
    {
      v13 = *v6++;
      if (v13 == -4)
      {
        v14 = [*(a1 + 8) attachmentAtCharIndex:v10];
        if ([v14 isDrawable])
        {
          if (([v14 isPartitioned] & 1) == 0 && (!objc_msgSend(v14, "isAnchored") || v4 <= v10 && v12 < v26) && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(*(a1 + 2056), "siblingTargetIsManipulatingDrawable:", objc_msgSend(v14, "drawable")) & 1) == 0))
          {
            v15 = [v14 isAnchored];
            v16 = *(a1 + 2056);
            v17 = [v14 drawable];
            if (v15)
            {
              v18 = [v16 validatedLayoutForAnchoredDrawable:v17];
              if (!v18)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v18 = [v16 layoutForInlineDrawable:v17];
              [objc_msgSend(v18 "layoutController")];
              if (!v18)
              {
                goto LABEL_12;
              }
            }

            if (([v14 isAnchored] & 1) == 0)
            {
              v19 = TSWPLineFragment::baselineAtCharIndex(v27, v10, *(a1 + 184), 0);
              [v18 inlineVerticalOffset];
              v21 = v19 + v20;
              [v18 alignmentFrame];
              v23 = v21 - v22;
              [v14 descent];
              [v18 setAdjustedInterimPositionY:v24 + v23];
              [v18 fixTransformFromInterimPosition];
            }
          }
        }
      }

LABEL_12:
      ++v12;
      v10 = (v10 + 1);
      --v11;
    }

    while (v11);
    v6 = v29;
    v7 = v25;
LABEL_25:
    v8 += 2;
  }

  while (v8 != v7);
LABEL_26:

  free(v6);
}

void fixSpaceAfterForParagraphBorder(uint64_t a1, TSWPLineFragmentArray **a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (TSWPLineFragmentArray::count(*a2) && (*(a1 + 352) || *(a1 + 368) == 1))
  {
    Object = TSWPLineFragmentArray::lastObject(*a2);
    v13 = Object[10];
    v14 = Object[11];
    v15 = Object[12];
    v16 = Object[13];
    v26.origin.x = v13;
    v26.origin.y = v14;
    v26.size.width = v15;
    v26.size.height = v16;
    MaxY = CGRectGetMaxY(v26);
    v27.size.height = a6;
    v18 = MaxY;
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v19 = CGRectGetMaxY(v27);
    [*(a1 + 352) width];
    v21 = v19 + v20 + *(a1 + 376);
    v22 = [objc_msgSend(*(a1 + 104) "storage")];
    v23 = 6.0;
    if (v22 == 5)
    {
      v23 = 0.0;
    }

    v24 = v21 + v23;
    if (v18 < v24)
    {
      v18 = v24;
    }

    v28.origin.x = v13;
    v28.origin.y = v14;
    v28.size.width = v15;
    v28.size.height = v16;
    MinY = CGRectGetMinY(v28);
    Object[10] = v13;
    Object[11] = v14;
    Object[12] = v15;
    Object[13] = v18 - MinY;
  }
}

uint64_t TSWPLayoutChore::pGetParagraphStyleAtCharIndex(TSWPLayoutChore *this, NSUInteger a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange((this + 104));
  if (a2 < v4 || a2 - v4 >= v5)
  {
    v7 = *(this + 1);
    v8 = [*(this + 3) styleProvider];
    if (v7)
    {
      [v7 paragraphEnumeratorAtCharIndex:a2 styleProvider:v8];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    v10 = TSWPParagraphEnumerator::paragraphStyle(&v11, 0);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v11);
    return v10;
  }

  else
  {

    return TSWPParagraphEnumerator::paragraphStyle((this + 104), 0);
  }
}

uint64_t TSWPLayoutChore::pParagraphRunsRightToLeftAtCharIndex(TSWPLayoutChore *this, NSUInteger a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange((this + 104));
  if (a2 < v4 || a2 - v4 >= v5)
  {
    v7 = *(this + 1);
    v8 = [*(this + 3) styleProvider];
    if (v7)
    {
      [v7 paragraphEnumeratorAtCharIndex:a2 styleProvider:v8];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    v10 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(&v11);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v11);
    return v10;
  }

  else
  {

    return TSWPParagraphEnumerator::paragraphRunsRightToLeft((this + 104));
  }
}

void TSWPLayoutChore::pCacheErasableInfos(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v38 = [a2 columns];
  v7 = [v38 count];
  if (*(a1 + 232))
  {
    v8 = v7;
    v9 = 0;
    v10 = 0.0;
    v11 = 1;
    do
    {
      v40 = v10;
      v12 = a3;
      if (v8 > a3)
      {
        v13 = [v38 objectAtIndexedSubscript:a3];
        v14 = [v13 lineFragmentArray];
        v15 = *v14;
        v16 = v14[1];
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        [v13 wpBounds];
        v39 = v17;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v13 erasableBounds:1];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [v13 contentBottom];
        v33 = v32;
        v34 = (a4 + 88 * v9);
        v35 = v34[1];
        *v34 = v15;
        v34[1] = v16;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v35);
        }

        v34[2] = v39;
        v34[3] = v19;
        v34[4] = v21;
        v34[5] = v23;
        v34[6] = v25;
        v34[7] = v27;
        v34[8] = v29;
        v34[9] = v31;
        v34[10] = v33;
      }

      v10 = *(a4 + 88 * v9 + 40);
      if (v40 != 0.0)
      {
        v36 = v40 == v10;
        v10 = v40;
        if (!v36)
        {
          v10 = 0.0;
        }
      }

      v9 = v11;
      a3 = v12 + 1;
    }

    while (*(a1 + 232) > v11++);
  }
}

void sub_26C94F3BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TSWPLayoutChore::pMinimumLayoutHeightForColumnRange(id *this, _NSRange a2, BOOL *a3)
{
  v20 = a3;
  v3 = a2.location + a2.length;
  if (a2.location >= a2.location + a2.length)
  {
    v6 = 0;
    v7 = 0.0;
    goto LABEL_17;
  }

  location = a2.location;
  v6 = 0;
  v7 = 0.0;
  v21 = a2.location + a2.length;
  do
  {
    v8 = [objc_msgSend(this[257] columns];
    [v8 minimumHeightForLayoutOnPage];
    Height = v9;
    if (v9 > 0.0)
    {
      goto LABEL_14;
    }

    v11 = [v8 range];
    v13 = v11 + v12;
    if (v11 >= v11 + v12)
    {
      goto LABEL_14;
    }

    v14 = v11;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v22.location = [this[1] attachmentRangeForCharIndex:v16 forwards:1];
      v23.location = v14;
      v23.length = v15;
      v17 = NSIntersectionRange(v22, v23);
      if (v17.length != 1)
      {
        if (!v17.length)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      objc_opt_class();
      [this[1] attachmentAtCharIndex:v17.location];
      v18 = TSUDynamicCast();
      if ([v18 isHTMLWrap])
      {
        break;
      }

LABEL_10:
      v16 = v17.location + v17.length;
      if (v17.location + v17.length >= v13)
      {
        goto LABEL_13;
      }
    }

    [objc_msgSend(objc_msgSend(this[257] validatedLayoutForAnchoredDrawable:{objc_msgSend(v18, "drawable")), "geometry"), "frame"}];
    Height = CGRectGetHeight(v24);
LABEL_13:
    v3 = v21;
LABEL_14:
    v7 = fmax(v7, Height);
    v6 |= [v8 countLines] != 0;
    ++location;
  }

  while (location != v3);
LABEL_17:
  if (v20)
  {
    *v20 = v6 & 1;
  }

  return v7;
}

uint64_t TSWPLayoutChore::pHandleLayoutBreaksAndColumnBalancing(uint64_t a1, int a2, NSUInteger a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, NSUInteger a8, int a9, double *a10, double *a11, double *a12, double *a13, _BYTE *a14, _DWORD *a15)
{
  if (!a2 || ([objc_msgSend(*(a1 + 2056) columnMetricsForCharIndex:*(a1 + 80) outRange:{0), "alwaysStartsNewTarget"}] & 1) != 0)
  {
    if (*a14 != 1)
    {
      return 0;
    }

    if (*a15 != 1 || a9 == 0)
    {
      v22 = *a12 + 1.0;
      *a10 = v22;
      v23 = fmax(*a11, v22);
      *a11 = v23;
      v40 = rint((v23 + *a10) * 0.5);
    }

    else
    {
      *a14 = 0;
      *a15 = 0;
      *a10 = *a12;
      v40 = *a11;
    }

    *a12 = v40;
    return 1;
  }

  v25 = [*(a1 + 2056) columns];
  if (*(a1 + 232) == 1)
  {
    v26 = v25;
    v27 = [v25 objectAtIndexedSubscript:a3];
    [v27 contentBottom];
    v29 = v28;
    Object = TSWPLineFragmentArray::lastObject(*[v27 lineFragmentArray]);
    if (Object)
    {
      MaxY = CGRectGetMaxY(*(Object + 48));
      if (v29 < MaxY)
      {
        v29 = MaxY;
      }
    }

    [v27 wpBounds];
    *a12 = fmin(ceil(v29 - v32), a6);
    v33 = *(a1 + 2056);
    v34 = *(a1 + 8);
    v35 = [v27 startCharIndex];
    v36 = *a13;
    v37 = *a12;
    v38 = [*(a1 + 24) styleProvider];
    LOBYTE(v57) = (*(a1 + 32) & 0x10) != 0;
    [TSWPLayoutManager fixColumnBoundsForTarget:v33 storage:v34 charIndex:v35 firstColumnIndex:a3 precedingHeight:0 height:v38 alreadyHasMargins:v36 styleProvider:v37 vertical:v57];
    v39 = v26;
    goto LABEL_35;
  }

  v58 = v25;
  v59 = a5;
  if (a3 <= a8)
  {
    v41 = a8;
  }

  else
  {
    v41 = a3;
  }

  if (a3 >= a8)
  {
    v42.location = a8;
  }

  else
  {
    v42.location = a3;
  }

  v42.length = v41 - v42.location;
  v43 = ceil(fmax(*a10, fmin(TSWPLayoutChore::pMinimumLayoutHeightForColumnRange(a1, v42, 0), *a11)));
  *a10 = v43;
  v44 = *a12;
  if (*a12 < v43)
  {
    *a12 = v43;
    v45 = *(a1 + 2056);
    v46 = *(a1 + 8);
    v47 = *(a1 + 80);
    v48 = *a13;
    v49 = [*(a1 + 24) styleProvider];
    LOBYTE(v57) = (*(a1 + 32) & 0x10) != 0;
    [TSWPLayoutManager fixColumnBoundsForTarget:v45 storage:v46 charIndex:v47 firstColumnIndex:a3 precedingHeight:0 height:v49 alreadyHasMargins:v48 styleProvider:v43 vertical:v57];
    v39 = v58;
LABEL_35:
    [objc_msgSend(v39 objectAtIndexedSubscript:{a3), "wpBounds"}];
    v54 = CGRectGetMaxY(v61);
    result = 0;
    *a13 = v54 + *(a1 + 216);
    return result;
  }

  v39 = v58;
  if (*a12 <= v43)
  {
    goto LABEL_35;
  }

  if (*a15 == 1 && a9 != 0)
  {
    if (!*(a1 + 232))
    {
      goto LABEL_35;
    }

    v51 = 0;
    v52 = 1;
    while (1)
    {
      [objc_msgSend(v58 objectAtIndexedSubscript:{*(a4 + 160) + v51, v44), "contentBottom"}];
      if (v44 != *(v59 + 88 * v51 + 80))
      {
        break;
      }

      v51 = v52;
      if (*(a1 + 232) <= v52++)
      {
        goto LABEL_35;
      }
    }

    v44 = *a12;
  }

  result = 1;
  *a14 = 1;
  *a11 = v44;
  *a12 = floor((v44 + *a10) * 0.5);
  if (*a10 >= *a11)
  {
    v55 = [MEMORY[0x277D6C290] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::pHandleLayoutBreaksAndColumnBalancing(const BOOL, const NSUInteger, const TSWPLayoutState &, const tswpColumnErasableInfo *, uint, const NSUInteger, const BOOL, const CGFloat, CGFloat &, CGFloat &, CGFloat &, CGFloat &, BOOL &, uint &)"}];
    [v55 handleFailureInFunction:v56 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 3883, @"Bad minHeight/maxHeight"}];
    return 1;
  }

  return result;
}

void TSWPLayoutChore::pCreateLineRefsAfterColumnBalancing(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [*(a1 + 2056) autosizeFlags];
  v6 = *(a2 + 144);
  if (v6 < *(a2 + 152) + v6)
  {
    v7 = 0;
    v8 = v5 & 0xC;
    while (1)
    {
      v9 = [objc_msgSend(*(a1 + 2056) "columns")];
      *(a2 + 104) = v9;
      *(a2 + 160) = v6;
      v10 = [v9 countLines];
      if (v10)
      {
        break;
      }

LABEL_15:
      TSWPLayoutChore::pPostProcessAttachments(a1, [v9 lineFragmentArray]);
      if (++v6 >= *(a2 + 152) + *(a2 + 144))
      {
        return;
      }
    }

    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v9 lineFragmentAtIndex:v12];
      if (*(v13 + 25) == *(v13 + 24))
      {
        break;
      }

LABEL_14:
      if (v11 == ++v12)
      {
        goto LABEL_15;
      }
    }

    v14 = v13;
    v15 = *v13;
    *a2 = *v13;
    if (v7)
    {
      v16 = TSWPParagraphEnumerator::paragraphTextRange((a2 + 24));
      if (v15 < v16 + v17)
      {
LABEL_13:
        TSWPCoreTextTypesetter::createLineRefsForLineFragment(*(a1 + 2024), v14, a2, v8 != 0, a3);
        v7 = 1;
        goto LABEL_14;
      }

      v15 = *a2;
    }

    v27[0] = a1 + 872;
    v27[1] = a1 + 1936;
    v18 = *(a1 + 8);
    v19 = [*(a1 + 24) styleProvider];
    if (v18)
    {
      [v18 paragraphEnumeratorAtCharIndex:v15 styleProvider:v19];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v20 = *&v26.var2;
    *(a2 + 24) = *&v26.var0;
    *(a2 + 40) = v20;
    *(a2 + 56) = *&v26.var4;
    *(a2 + 72) = v26.var6;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v26);
    TSWPLayoutChore::pSetupStateForParagraphIndex(a1, a2);
    v21 = *(a1 + 2024);
    v22 = *MEMORY[0x277CBF3A8];
    v23 = *(MEMORY[0x277CBF3A8] + 8);
    v24 = TSWPParagraphEnumerator::relevantParagraphIndex((a2 + 24));
    TSWPCoreTextTypesetter::beginParagraphLayout(v21, a2, a1 + 768, v27, v24, v22, v23);
    goto LABEL_13;
  }
}

double TSWPLayoutChore::pInvalidateRect(TSWPLayoutChore *this, CGRect a2, CGRect a3, TSWPColumn *a4, int a5, int a6)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a2.size.height;
  v12 = a2.size.width;
  v13 = a2.origin.y;
  v14 = a2.origin.x;
  if (a5)
  {
    [(TSWPColumn *)a4 wpBounds];
    v25.origin.y = y;
    v25.size.height = height;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v26 = CGRectUnion(v25, v27);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  if (a6)
  {
    v15 = y + -6.0;
  }

  else
  {
    v15 = y;
  }

  if (a6)
  {
    v16 = height + 12.0;
  }

  else
  {
    v16 = height;
  }

  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = x;
  v22 = width;

  *&result = CGRectUnion(*&v17, *(&v15 - 1));
  return result;
}

void TSWPLayoutChore::p_postProcessDrawableAttachments_removeLeftovers(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6)
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v39 = a6;
  if (a5)
  {
    v13 = [a6 currentAnchoredDrawableLayouts];
  }

  else
  {
    v13 = [a6 currentInlineDrawableLayouts];
  }

  v14 = [v12 initWithArray:v13];
  if (a2 != *MEMORY[0x277D6C268] || a3 != *(MEMORY[0x277D6C268] + 8))
  {
    v16 = [a4 attachmentIndexRangeForTextRange:{a2, a3}];
    v18 = v16 + v17;
    if (v16 < v16 + v17)
    {
      v19 = v16;
      do
      {
        objc_opt_class();
        [a4 attachmentAtAttachmentIndex:v19 outCharIndex:0];
        v20 = TSUDynamicCast();
        if (v20)
        {
          v21 = v20;
          if ([v20 isAnchored] == a5)
          {
            v22 = [v21 drawable];
            v23 = [v14 count];
            if (v23)
            {
              v24 = v23;
              v25 = 0;
              while ([objc_msgSend(v14 objectAtIndexedSubscript:{v25), "info"}] != v22 || (objc_msgSend(v21, "isPartitioned") & 1) != 0)
              {
                if (v24 == ++v25)
                {
                  goto LABEL_19;
                }
              }

              [v14 removeObjectAtIndex:v25];
            }
          }
        }

LABEL_19:
        ++v19;
      }

      while (v19 != v18);
    }
  }

  if ((a5 & 1) == 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [v39 columns];
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v27)
    {
      v28 = *v45;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [*(*(&v44 + 1) + 8 * i) lineFragmentArray];
          v31 = *v30;
          v32 = *(v30 + 8);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = *v31;
          v33 = v31[1];
          while (v34 != v33)
          {
            if (*(*v34 + 24))
            {
              [v14 removeObjectIdenticalTo:*(*v34 + 432)];
            }

            v34 += 16;
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v32);
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v27);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v35)
  {
    v36 = *v41;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v14);
        }

        v38 = *(*(&v40 + 1) + 8 * j);
        if (!a5 || (pLayoutGeometryIsBeingManipulated(*(*(&v40 + 1) + 8 * j)) & 1) == 0)
        {
          [*(a1 + 24) willRemoveAttachmentLayout:v38];
          [v38 removeFromParent];
        }
      }

      v35 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v35);
  }
}

uint64_t pLayoutGeometryIsBeingManipulated(TSDLayout *a1)
{
  result = [(TSDLayout *)a1 isBeingManipulated];
  if (result)
  {
    if ([objc_msgSend(objc_msgSend(-[TSDLayout layoutController](a1 "layoutController")])
    {
      return 0;
    }

    else
    {
      v3 = objc_opt_class();
      if (!-[NSString isEqualToString:](NSStringFromClass(v3), "isEqualToString:", @"TSTLayout") || (result = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](a1 "layoutController")], result))
      {
        objc_opt_class();
        v4 = TSUDynamicCast();
        if (v4)
        {
          return [v4 isStrokeBeingManipulated] ^ 1;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double TSWPLayoutChore::pCalculateAttachmentPosition(id *a1, TSWPDrawableAttachment *a2, unint64_t a3, const TSWPLayoutState *a4, char a5, double *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, CGFloat a12, CGFloat a13, double a14, double a15)
{
  v28 = [(TSDDrawableInfo *)[(TSWPDrawableAttachment *)a2 drawable] exteriorTextWrap];
  if ([(TSDExteriorTextWrap *)v28 isHTMLWrap])
  {
    v29 = [(TSDExteriorTextWrap *)v28 direction];
    if (v29)
    {
      if (v29 == 2)
      {
        v44.origin.x = a7;
        v44.origin.y = a8;
        v44.size.width = a9;
        v44.size.height = a10;
        MinX = CGRectGetMidX(v44) + a15 * -0.5;
      }

      else if (v29 == 1)
      {
        MinX = *a6;
        *a6 = a15 + *a6;
      }

      else
      {
        v46.origin.x = a7;
        v46.origin.y = a8;
        v46.size.width = a9;
        v46.size.height = a10;
        MinX = CGRectGetMinX(v46);
      }
    }

    else
    {
      MinX = a6[1] - a15;
      a6[1] = MinX;
    }
  }

  else
  {
    [(TSWPDrawableAttachment *)a2 hOffset];
    [(TSWPDrawableAttachment *)a2 vOffset];
    v31 = [(TSWPDrawableAttachment *)a2 hOffsetType];
    if (v31 == 2)
    {
      v32 = a10;
      objc_opt_class();
      v36 = TSUDynamicCast();
      [(TSWPDrawableAttachment *)a2 hOffset];
      v38 = v37;
      if (v36)
      {
        [v36 frame];
      }

      else
      {
        v39 = 0.0;
      }

      MinX = v38 - v39;
    }

    else if (v31 == 1)
    {
      v45.origin.x = a7;
      v45.origin.y = a8;
      v45.size.width = a9;
      v32 = a10;
      v45.size.height = a10;
      v34 = CGRectGetMinX(v45);
      [(TSWPDrawableAttachment *)a2 hOffset];
      MinX = v34 + v35;
    }

    else
    {
      if (v31)
      {
        v47.origin.x = a7;
        v47.origin.y = a8;
        v47.size.width = a9;
        v32 = a10;
        v47.size.height = a10;
        v33 = CGRectGetMinX(v47);
      }

      else
      {
        v32 = a10;
        [(TSWPDrawableAttachment *)a2 hOffset];
      }

      MinX = v33;
    }

    v40 = [(TSWPDrawableAttachment *)a2 vOffsetType];
    if (v40 == 1)
    {
      objc_opt_class();
      v41 = TSUDynamicCast();
      [(TSWPDrawableAttachment *)a2 vOffset];
      if (v41)
      {
        [v41 frame];
      }
    }

    else if (v40)
    {
      v48.origin.x = a7;
      v48.origin.y = a8;
      v48.size.width = a9;
      v48.size.height = v32;
      CGRectGetMinY(v48);
    }

    else if ([a1[23] startCharIndex] <= a3)
    {
      [(TSWPDrawableAttachment *)a2 vOffset];
    }
  }

  v43.width = a12;
  v43.height = a13;
  TSWPLayoutChore::pAnchoredDrawableVerticalAdjustment(a1, a2, a4, v43, a5);
  return MinX;
}

double TSWPLayoutChore::pAnchoredDrawableVerticalAdjustment(id *this, TSWPDrawableAttachment *a2, const TSWPLayoutState *a3, CGSize a4, char a5)
{
  height = a4.height;
  v10 = 0.0;
  if ([(TSWPDrawableAttachment *)a2 vOffsetType]!= 1)
  {
    v11 = [(TSDDrawableInfo *)[(TSWPDrawableAttachment *)a2 drawable] exteriorTextWrap];
    [(TSDExteriorTextWrap *)v11 margin];
    v13 = fmin(v12, height * 0.5);
    if (![(TSDExteriorTextWrap *)v11 isHTMLWrap])
    {
      v14 = 0.0;
LABEL_9:
      v10 = v13 + v14;
      goto LABEL_10;
    }

    if ((a5 & 1) == 0)
    {
      v14 = 0.0;
      if (*a3 == *(a3 + 10))
      {
        v15 = *(a3 + 38);
        isFirstParagraph = TSWPParagraphEnumerator::isFirstParagraph((a3 + 24));
        v17 = v15;
        if (!isFirstParagraph)
        {
          TSWPParagraphEnumerator::previous((a3 + 24), &v25);
          v18 = TSWPParagraphEnumerator::paragraphStyle(&v25, 0);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v25);
          [v18 floatValueForProperty:88];
          v20 = (v19 * ([this[23] scaleTextPercent] / 100.0));
          v15 = fmax(*(a3 + 38), v20);
          v17 = v15 - v20;
        }

        v14 = v17 + 0.0;
        v13 = fmax(v13 - v15, 0.0);
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  [(TSWPDrawableAttachment *)a2 drawable];
  if (objc_opt_respondsToSelector())
  {
    v21 = [(TSDDrawableInfo *)[(TSWPDrawableAttachment *)a2 drawable] stroke];
    if (v21)
    {
      [v21 outsets];
      v10 = v10 + v22;
    }
  }

  CharacterStyleAtCharIndex = TSWPLayoutChore::pGetCharacterStyleAtCharIndex(this, *a3);
  return v10 + TSWPAttachmentVAlignmentCorrection(-[TSWPDrawableAttachment vAlignment](a2, "vAlignment"), CharacterStyleAtCharIndex, *(a3 + 12), [*(a3 + 13) scaleTextPercent]);
}

uint64_t TSWPLayoutChore::pPositionAnchoredAttachment(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, TSWPDrawableAttachment *a11, unint64_t a12, const TSWPLayoutState *a13, char a14, void *a15, void *a16, _DWORD *a17, double *a18, uint64_t a19, uint64_t a20)
{
  v79 = *MEMORY[0x277D85DE8];
  v30 = [*(a1 + 2056) currentAnchoredDrawableLayouts];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v75;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v74 + 1) + 8 * i);
        if ([(TSDInfo *)[(TSDLayout *)v35 info] owningAttachment]== a11 && pLayoutGeometryIsBeingManipulated(v35))
        {
          *a15 = a12 + 1;
          if ([(TSWPDrawableAttachment *)a11 drawable])
          {
            [a16 addObject:{-[TSWPDrawableAttachment drawable](a11, "drawable")}];
          }

          ++*a17;
          [(TSDAbstractLayout *)v35 alignmentFrame];
          *a18 = v52;
          *(a18 + 1) = v53;
          v80.width = a7;
          v80.height = a8;
          a18[1] = a18[1] - TSWPLayoutChore::pAnchoredDrawableVerticalAdjustment(a1, a11, a13, v80, a14);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 2056) anchoredAttachmentPositionFromLayoutPosition:{*a18, a18[1]}];
            *a18 = v54;
            *(a18 + 1) = v55;
          }

          *a19 = adjustedLayoutSize(v35);
          *(a19 + 8) = v56;
          return 1;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v36 = [*(a1 + 2056) validatedLayoutForAnchoredDrawable:{-[TSWPDrawableAttachment drawable](a11, "drawable")}];
  v37 = adjustedLayoutSize(v36);
  *a19 = v37;
  *(a19 + 8) = v38;
  *a18 = TSWPLayoutChore::pCalculateAttachmentPosition(a1, a11, a12, a13, a14, a20, a2, a3, a4, a5, a6, a7, a8, v39, v37);
  *(a18 + 1) = v40;
  v41 = [(TSDLayout *)v36 iterativePositioningState];
  v42 = v41;
  if (v41)
  {
    [v41 position];
    *a18 = v43;
    *(a18 + 1) = v44;
  }

  if ([(TSDLayout *)v36 hasFinishedIterativePositioning])
  {
    [v42 position];
    *a18 = v45;
    *(a18 + 1) = v46;
  }

  if ([(TSDLayout *)v36 attachmentLayoutDisplacedByDropCap])
  {
    v47 = *(a1 + 752);
    v48 = a18[1];
    if (v47 > v48)
    {
      a18[1] = v47;
      v48 = v47;
    }

    v49 = *a18;
    *a18 = TSWPDropCapLayoutState::adjustedAttachmentPosition((a1 + 864), *(&v48 - 1), v36, a12);
    *(a18 + 1) = v50;
  }

  v70 = a5;
  if ([(TSWPDrawableAttachment *)a11 isHTMLWrap])
  {
    v82.origin.x = a2;
    v82.origin.y = a3;
    v82.size.width = a4;
    v82.size.height = a5;
    MaxY = CGRectGetMaxY(v82);
  }

  else
  {
    [*(a1 + 2056) maxAnchorY];
  }

  v57 = MaxY;
  if ([(TSWPDrawableAttachment *)a11 vOffsetType]!= 1)
  {
    v58 = a6;
    v59 = a18[1];
    v60 = v59 + *(a19 + 8) - v57;
    if (v60 > 0.0)
    {
      [(TSWPDrawableAttachment *)a11 vOffset];
      v59 = a18[1];
      if (v60 <= v61)
      {
        v59 = v59 - v60;
        a18[1] = v59;
      }
    }

    if (v59 + *(a19 + 8) > v57)
    {
      v81.width = a7;
      v81.height = a8;
      if (a18[1] - TSWPLayoutChore::pAnchoredDrawableVerticalAdjustment(a1, a11, a13, v81, a14) != v58)
      {
        return 0;
      }

      v83.origin.x = a2;
      v83.origin.y = a3;
      v83.size.width = a4;
      v83.size.height = v70;
      if (CGRectGetMinY(v83) != v58)
      {
        return 0;
      }

      v84.origin.x = a2;
      v84.origin.y = a3;
      v84.size.width = a4;
      v84.size.height = v70;
      MinY = CGRectGetMinY(v84);
      [objc_msgSend(objc_msgSend(*(a1 + 2056) "columns")];
      if (MinY != CGRectGetMinY(v85))
      {
        return 0;
      }
    }
  }

  if (*(a1 + 48) <= a12)
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 2056) layoutPositionFromAnchoredAttachmentPosition:{*a18, a18[1]}];
    v64 = v63;
    v66 = v65;
  }

  else
  {
    v64 = *a18;
    v66 = a18[1];
  }

  [(TSDLayout *)v36 setAdjustedInterimPositionY:v66];
  v68 = [(TSDDrawableInfo *)[(TSWPDrawableAttachment *)a11 drawable] exteriorTextWrap];
  if ([(TSDExteriorTextWrap *)v68 isHTMLWrap]&& [(TSDExteriorTextWrap *)v68 direction]== 2)
  {
    [(TSDLayout *)v36 setAdjustedInterimPositionY:v66];
    if (a20)
    {
      v69 = *(a20 + 24);
      if (!v69)
      {
        v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
        *(a20 + 24) = v69;
      }

      [v69 addObject:a11];
    }
  }

  else
  {
    [(TSDLayout *)v36 setAdjustedInterimPositionX:v64];
    [(TSDAbstractLayout *)v36 fixTransformFromInterimPosition];
  }

  if ([(TSWPDrawableAttachment *)a11 drawable])
  {
    [a16 addObject:{-[TSWPDrawableAttachment drawable](a11, "drawable")}];
  }

  ++*a17;
  *a15 = a12 + 1;
  return 1;
}

double adjustedLayoutSize(TSDLayout *a1)
{
  [(TSDAbstractLayout *)a1 alignmentFrame];
  v3 = v2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(TSDLayout *)a1 performSelector:sel_stroke];
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_6:
    [v4 outsets];
    return v3 - (v6 + v5);
  }

  [(TSDLayout *)a1 info];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v6 = 0.0;
    v5 = 0.0;
    return v3 - (v6 + v5);
  }

  v4 = [(TSDInfo *)[(TSDLayout *)a1 info] performSelector:sel_stroke];
  v7 = 0.0;
  v6 = 0.0;
  v5 = 0.0;
  if (v4)
  {
    goto LABEL_6;
  }

  return v3 - (v6 + v5);
}

uint64_t TSWPLayoutChore::pAnchoredGraphicAndTextCollisionsInTarget()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v107[16] = *MEMORY[0x277D85DE8];
  v4 = [*(v0 + 2056) columns];
  v5 = [objc_msgSend(v4 "firstObject")];
  v6 = [objc_msgSend(v4 "lastObject")];
  v8 = v6 + v7;
  if (v5 >= v6 + v7)
  {
    v9 = v6 + v7;
  }

  else
  {
    v9 = v5;
  }

  if (v5 != v6 + v7 && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 > v8)
    {
      v8 = v5;
    }

    v11 = [*(v3 + 8) attachmentIndexRangeForTextRange:{v9, v8 - v9}];
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v89 = v4;
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
      v16 = v13 + v14;
      v91 = v3;
      if (v13 < v13 + v14)
      {
        v17 = v13;
        v90 = v2;
        do
        {
          objc_opt_class();
          [*(v3 + 8) attachmentAtAttachmentIndex:v17 outCharIndex:0];
          v18 = TSUDynamicCast();
          if ([v18 isAnchored])
          {
            if (([v18 isHTMLWrap] & 1) == 0)
            {
              v19 = [v18 drawable];
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([*(v3 + 2056) siblingTargetIsManipulatingDrawable:v19] & 1) == 0)
              {
                if ([*(v3 + 2056) validatedLayoutForAnchoredDrawable:{objc_msgSend(v18, "drawable")}])
                {
                  v20 = TSUProtocolCast();
                  if (v20)
                  {
                    v102 = 0u;
                    v103 = 0u;
                    v100 = 0u;
                    v101 = 0u;
                    v21 = [v20 descendentWrappables];
                    v22 = [v21 countByEnumeratingWithState:&v100 objects:v107 count:16];
                    if (v22)
                    {
                      v23 = v22;
                      v24 = *v101;
                      do
                      {
                        for (i = 0; i != v23; ++i)
                        {
                          if (*v101 != v24)
                          {
                            objc_enumerationMutation(v21);
                          }

                          v26 = *(*(&v100 + 1) + 8 * i);
                          if ([v26 wrapType] && objc_msgSend(v26, "wrapType") != 5)
                          {
                            [v15 addObject:v26];
                          }
                        }

                        v23 = [v21 countByEnumeratingWithState:&v100 objects:v107 count:16];
                      }

                      while (v23);
                    }
                  }

                  v27 = TSUProtocolCast();
                  v2 = v90;
                  v3 = v91;
                  v16 = v13 + v14;
                  if ([v27 wrapType] && objc_msgSend(v27, "wrapType") != 5)
                  {
                    [v15 addObject:v27];
                  }
                }
              }
            }
          }

          ++v17;
        }

        while (v17 != v16);
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v28 = [v15 countByEnumeratingWithState:&v96 objects:v106 count:16];
      if (v28)
      {
        v29 = *v97;
        v84 = *v97;
        do
        {
          v30 = 0;
          v31 = v89;
          v85 = v28;
          do
          {
            if (*v97 != v29)
            {
              objc_enumerationMutation(v15);
            }

            v86 = v30;
            v32 = *(*(&v96 + 1) + 8 * v30);
            [v32 boundsInfluencingExteriorWrap];
            v37 = TSDRoundedRect(v33, v34, v35, v36);
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v44 = *(v3 + 2056);
            if (v44)
            {
              [v44 transformInRoot];
            }

            else
            {
              memset(&v95, 0, sizeof(v95));
            }

            CGAffineTransformInvert(&v104, &v95);
            v108.origin.x = v37;
            v108.origin.y = v39;
            v108.size.width = v41;
            v108.size.height = v43;
            v109 = CGRectApplyAffineTransform(v108, &v104);
            rect2[0] = *&v109.origin.x;
            y = v109.origin.y;
            width = v109.size.width;
            height = v109.size.height;
            memset(&rect2[1], 0, 32);
            v93 = 0u;
            v94 = 0u;
            v87 = [v31 countByEnumeratingWithState:&rect2[1] objects:v105 count:16];
            if (v87)
            {
              v88 = *rect2[3];
              do
              {
                v48 = 0;
                while (2)
                {
                  if (*rect2[3] != v88)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v49 = [*(rect2[2] + 8 * v48) lineFragmentArray];
                  v50 = **v49;
                  v51 = (*v49)[1];
                  while (v50 != v51)
                  {
                    v52 = *(*v50 + 48);
                    v53 = *(*v50 + 64);
                    v54 = *(*v50 + 128);
                    if (v54 < *(*v50 + 120))
                    {
                      v54 = *(*v50 + 120);
                    }

                    v55 = *(*v50 + 144) + *(*v50 + 136) + v54;
                    v56 = *(*v50 + 56) + *(*v50 + 112);
                    v110.origin.x = TSDRoundedRect(*(*v50 + 48), v56, *(*v50 + 64), v55);
                    *&v113.origin.x = rect2[0];
                    v113.origin.y = y;
                    v113.size.width = width;
                    v113.size.height = height;
                    if (CGRectIntersectsRect(v110, v113))
                    {
                      [v2 rectInRoot:{v52, v56, v53, v55}];
                      v58 = v57;
                      v60 = v59;
                      v62 = v61;
                      v64 = v63;
                      LODWORD(v65) = +[TSWPTextWrapper splitLine:lineSegmentRects:polygon:type:skipHint:](TSWPTextWrapper, "splitLine:lineSegmentRects:polygon:type:skipHint:", &v104, [v32 wrapPolygon], 1, 0, v57, v59, v61, v63);
                      v66 = TSDRoundedRect(v58, v60, v62, v64);
                      v68 = v67;
                      v70 = v69;
                      v72 = v71;
                      if (v65 != 1)
                      {
                        if (v65)
                        {
                          v73 = 0;
                          v65 = v65;
                          p_c = &v104.c;
                          do
                          {
                            if (*p_c >= 18.0)
                            {
                              v111.origin.x = TSDRoundedRect(*(p_c - 2), *(p_c - 1), *p_c, p_c[1]);
                              v114.origin.x = v66;
                              v114.origin.y = v68;
                              v114.size.width = v70;
                              v114.size.height = v72;
                              if (!CGRectEqualToRect(v111, v114))
                              {
                                v16 = v13 + v14;
                                goto LABEL_69;
                              }

                              v73 = 1;
                            }

                            p_c += 4;
                            --v65;
                          }

                          while (v65);
                          v16 = v13 + v14;
                          if (v73)
                          {
                            goto LABEL_61;
                          }
                        }

LABEL_69:

                        v79 = [v2 anchoredDrawablesForRelayout];
                        if (v13 < v16)
                        {
                          v80 = v79;
                          do
                          {
                            objc_opt_class();
                            [*(v91 + 8) attachmentAtAttachmentIndex:v13 outCharIndex:0];
                            v81 = TSUDynamicCast();
                            if ([v81 isAnchored] && (objc_msgSend(v80, "containsObject:", objc_msgSend(v81, "drawable")) & 1) == 0)
                            {
                              [v80 addObject:{objc_msgSend(v81, "drawable")}];
                            }

                            ++v13;
                            --v14;
                          }

                          while (v14);
                        }

                        if (![objc_msgSend(v2 "anchoredDrawablesForRelayout")])
                        {
                          v82 = [MEMORY[0x277D6C290] currentHandler];
                          v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPLayoutChore::pAnchoredGraphicAndTextCollisionsInTarget(TSDLayout<TSWPLayoutTarget> *, NSString *&)"}];
                          [v82 handleFailureInFunction:v83 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayoutChore.mm"), 6715, @"Found collision but no anchored drawables"}];
                        }

                        return 1;
                      }

                      v115.origin.x = TSDRoundedRect(v104.a, v104.b, v104.c, v104.d);
                      v115.origin.y = v75;
                      v115.size.width = v76;
                      v115.size.height = v77;
                      v112.origin.x = v66;
                      v112.origin.y = v68;
                      v112.size.width = v70;
                      v112.size.height = v72;
                      if (!CGRectEqualToRect(v112, v115))
                      {
                        goto LABEL_69;
                      }
                    }

LABEL_61:
                    v50 += 16;
                  }

                  ++v48;
                  v3 = v91;
                  v31 = v89;
                  if (v48 != v87)
                  {
                    continue;
                  }

                  break;
                }

                v29 = v84;
                v87 = [v89 countByEnumeratingWithState:&rect2[1] objects:v105 count:16];
              }

              while (v87);
            }

            v30 = v86 + 1;
          }

          while (v86 + 1 != v85);
          v28 = [v15 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v28);
      }
    }
  }

  return 0;
}

void TSWPLayoutState::TSWPLayoutState(TSWPLayoutState *this, const TSWPLayoutState *a2)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((this + 24));
  memcpy(this, a2, 0x2B0uLL);
  v4 = *(this + 85);
}

uint64_t TSWPDropCapLayoutState::spacing(TSWPDropCapLayoutState *this)
{
  v2 = *(this + 6);
  if (v2 >= [objc_msgSend(*this "spacings")])
  {
    return 0;
  }

  v3 = [*this spacings];
  v4 = *(this + 6);

  return [v3 objectAtIndexedSubscript:v4];
}

void std::vector<TSWPLayoutState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        TSWPLayoutState::~TSWPLayoutState((v4 - 688));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<TSWPLayoutState>::__emplace_back_slow_path<TSWPLayoutState const&>(uint64_t a1, const TSWPLayoutState *a2)
{
  v2 = 0x82FA0BE82FA0BE83 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x5F417D05F417D0)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x82FA0BE82FA0BE83 * ((*(a1 + 16) - *a1) >> 4) >= 0x2FA0BE82FA0BE8)
  {
    v6 = 0x5F417D05F417D0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLayoutState>>(a1, v6);
  }

  v13 = 0;
  v14 = 688 * v2;
  TSWPLayoutState::TSWPLayoutState((688 * v2), a2);
  v15 = 688 * v2 + 688;
  v7 = *(a1 + 8);
  v8 = (688 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPLayoutState>,TSWPLayoutState*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<TSWPLayoutState>::~__split_buffer(&v13);
  return v12;
}

void sub_26C9514B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPLayoutState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLayoutState>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5F417D05F417D1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TSWPLayoutState>,TSWPLayoutState*>(int a1, TSWPLayoutState *a2, TSWPLayoutState *a3, TSWPLayoutState *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      TSWPLayoutState::TSWPLayoutState(this, v8);
      v8 = (v8 + 688);
      this = (this + 688);
      v7 -= 688;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      TSWPLayoutState::~TSWPLayoutState(v6);
      v6 = (v6 + 688);
    }
  }
}

void sub_26C9515A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 688);
    do
    {
      TSWPLayoutState::~TSWPLayoutState(v4);
      v4 = (v5 - 688);
      v2 += 688;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<TSWPLayoutState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 688;
    TSWPLayoutState::~TSWPLayoutState((i - 688));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::shared_ptr<TSWPLineFragment>::shared_ptr[abi:ne200100]<TSWPLineFragment,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26C951694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TSWPLineFragment>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

TSWPLineFragment **std::unique_ptr<TSWPLineFragment>::~unique_ptr[abi:ne200100](TSWPLineFragment **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TSWPLineFragment::~TSWPLineFragment(v2);
    MEMORY[0x26D6A9A30]();
  }

  return a1;
}

void std::__shared_ptr_pointer<TSWPLineFragment *,std::shared_ptr<TSWPLineFragment>::__shared_ptr_default_delete<TSWPLineFragment,TSWPLineFragment>,std::allocator<TSWPLineFragment>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6A9A30);
}

TSWPLineFragment *std::__shared_ptr_pointer<TSWPLineFragment *,std::shared_ptr<TSWPLineFragment>::__shared_ptr_default_delete<TSWPLineFragment,TSWPLineFragment>,std::allocator<TSWPLineFragment>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TSWPLineFragment::~TSWPLineFragment(result);

    JUMPOUT(0x26D6A9A30);
  }

  return result;
}

uint64_t TSWPShapeStyleIdentifierString(uint64_t a1, uint64_t a2)
{
  v3 = TSWPShapePackageStringForPresetKind(a1);

  return String(v3, a2, @"shapestyle");
}

void sub_26C953944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,unsigned short>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t TSWPBundle()
{
  if (TSWPBundle::onceToken != -1)
  {
    TSWPBundle_cold_1();
  }

  return TSWPBundle::bundle;
}

uint64_t __TSWPBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  TSWPBundle::bundle = result;
  return result;
}

void *std::vector<_TSWPCharIndexAndAffinity>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<_TSWPCharIndexAndAffinity>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_26C9587D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v27 - 152), 8);
  v29 = *(v27 - 104);
  if (v29)
  {
    *(v27 - 96) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__22(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<std::pair<objc_object *,_NSRange>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<objc_object *,_NSRange>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
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
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<objc_object *,_NSRange>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_26C95986C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t anonymous namespace::TSWPNumberFromArabicString(_anonymous_namespace_ *this, NSString *a2)
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:this];
  v8 = 0;
  if (![v3 scanInt:&v8] || !objc_msgSend(v3, "isAtEnd") || (result = v8, (v8 & 0x80000000) != 0))
  {
    v7 = 0.0;
    v5 = [MEMORY[0x277CCAC80] scannerWithString:this];
    if ([v5 scanFloat:&v7])
    {
      v6 = [v5 isAtEnd];
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v6)
      {
        if (v7 >= 0.0)
        {
          return vcvtas_u32_f32(v7);
        }
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t anonymous namespace::TSWPNumberFromRomanUpperLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = [(_anonymous_namespace_ *)this UTF8String];
  LOBYTE(v3) = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x277D85DE0];
  while (1)
  {
    if ((v3 & 0x80) != 0)
    {
      if (!__maskrune(v3, 0x100uLL))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else if ((*(v6 + 4 * v3 + 60) & 0x100) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v7 = (*v4 & 0xFFFFFFFFFFFFFFDFLL) - 65;
    if ((0x34FE4F3uLL >> v7))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!v4[1])
    {
      break;
    }

    if (v9 <= v8)
    {
      v3 = v4[1];
    }

    else
    {
      v8 = v9 - v8;
      v3 = v4[2];
      ++v4;
    }

    v5 += v8;
    ++v4;
    if (!v3)
    {
      return v5;
    }
  }

  v5 += v8;
  return v5;
}

uint64_t anonymous namespace::TSWPNumberFromAlphaUpperLabel(_anonymous_namespace_ *this, NSString *a2)
{
  v3 = [(_anonymous_namespace_ *)this length];
  v4 = [(_anonymous_namespace_ *)this UTF8String];
  v5 = *v4;
  if (!v3)
  {
    return 26 * v3 + (v5 & 0xDF) - 90;
  }

  v6 = v4;
  v7 = 0;
  v8 = MEMORY[0x277D85DE0];
  while (1)
  {
    if (v5 < 0)
    {
      if (!__maskrune(v5, 0x100uLL))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else if ((*(v8 + 4 * v5 + 60) & 0x100) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v5 = *v6;
    if (((v6[v7] ^ *v6) & 0xDF) != 0)
    {
      break;
    }

    if (v3 == ++v7)
    {
      return 26 * v3 + (v5 & 0xDF) - 90;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t anonymous namespace::TSWPArabicLabelFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  if (!this)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabicLabelFromNumber"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 468, @"Illegal value for arabic numeral topic label <= 0"}];
  }

  if (v1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4];
}

void *anonymous namespace::TSWPRomanUpperLabelFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  if (!this)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPRomanUpperLabelFromNumber"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 579, @"Illegal value for roman numeral topic label <= 0"}];
  }

  if (v1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  v5 = [MEMORY[0x277CCAB68] string];
  v6 = 12;
  do
  {
    v8 = *v7;
    if (v4 >= *v7)
    {
      v9 = *(v7 + 1);
      do
      {
        [v5 appendString:v9];
        v4 -= v8;
      }

      while (v4 >= v8);
    }

    v11 = v6-- != 0;
  }

  while (v4 && v11);
  return v5;
}

void *anonymous namespace::TSWPFootnoteSymbolFromNumber(_anonymous_namespace_ *this)
{
  v1 = this;
  v2 = [MEMORY[0x277CCAB68] string];
  v4 = -1;
  do
  {
    [v2 appendFormat:@"%C", v3];
    ++v4;
  }

  while ((v1 - 1) >> 2 > v4);
  return v2;
}

id anonymous namespace::ideographicNumberStringForValue(uint64_t a1, unsigned int a2)
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  v6 = a2;
  if (a1)
  {
    v16 = v4;
    v17 = a2;
    v18 = 1;
    v19 = v7;
    LOWORD(v16) = *v10;
    v11 = [MEMORY[0x277CCACA8] stringWithCharacters:&v16 length:1];
    if (a2 && a2 != 3)
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(v5, "componentsSeparatedByString:", v11)}];
      [v12 removeObject:&stru_287D36338];
      v5 = [objc_msgSend(v12 componentsJoinedByString:{v11), "mutableCopy"}];
      if ([v5 length] >= 2)
      {
        v13 = [v5 characterAtIndex:0];
        v14 = [v5 characterAtIndex:1];
        {
          [v5 deleteCharactersInRange:{0, 1}];
        }
      }
    }

    else
    {
      return [objc_msgSend(v5 stringByReplacingOccurrencesOfString:v11 withString:{&stru_287D36338), "mutableCopy"}];
    }
  }

  else
  {
  }

  return v5;
}

uint64_t anonymous namespace::TSWPCircledNumberLabelFromNumber(_anonymous_namespace_ *this)
{
  if (!this)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPCircledNumberLabelFromNumber"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 891, @"Illegal value for circled number numeral topic label <= 0"}];
  }

  v4 = 0;
  while (1)
  {
    {
      break;
    }

    if (++v4 == 3)
    {
    }
  }

  result = [MEMORY[0x277CCACA8] stringWithCharacters:&v7 length:1];
  if (!result)
  {
  }

  return result;
}

uint64_t anonymous namespace::TSWPArabicLabelFromNumberAndLocale(_anonymous_namespace_ *this, uint64_t a2, NSString *a3)
{
  LODWORD(v4) = this;
  if (!this)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *(anonymous namespace)::TSWPArabicLabelFromNumberAndLocale(unsigned int, NSString *)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 481, @"Illegal value for arabic numeral topic label <= 0"}];
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setLocale:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAF8]), "initWithLocaleIdentifier:", a2)}];
  v8 = [v7 stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v4)}];

  return v8;
}

uint64_t anonymous namespace::TSWPArabianAbjadLabelFromNumber(_anonymous_namespace_ *this, unsigned int a2, unsigned __int16 *a3)
{
  v3 = this;
  v14 = *MEMORY[0x277D85DE8];
  if (this >= 0xF4240)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 820, @"number out of bounds for algorithm"}];
    goto LABEL_6;
  }

  if (this)
  {
    if (this < 0x3E8)
    {
      v4 = 0;
LABEL_7:
      if (v8 >= 0xC)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPArabianAbjadLabelFromNumber(uint)"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 844, @"string out of bounds"}];
      }

      return [MEMORY[0x277CCACA8] stringWithCharacters:__b length:v8];
    }

LABEL_6:
    v4 = v7 + 1;
    *&__b[2 * v7] = 39;
    v3 = (v3 % 0x3E8);
    goto LABEL_7;
  }

  v12 = MEMORY[0x277CCACA8];
}

uint64_t anonymous namespace::TSWPHebrewBiblicalLabelFromNumber(_anonymous_namespace_ *this, unsigned int a2, unsigned __int16 *a3)
{
  v3 = this;
  v14 = *MEMORY[0x277D85DE8];
  if (this >= 0xF4240)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 750, @"Hebrew number out of bounds for algorithm"}];
    goto LABEL_6;
  }

  if (this)
  {
    if (this < 0x3E8)
    {
      v4 = 0;
LABEL_7:
      if (v8 >= 0xC)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *(anonymous namespace)::TSWPHebrewBiblicalLabelFromNumber(uint)"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 773, @"string out of bounds"}];
      }

      return [MEMORY[0x277CCACA8] stringWithCharacters:__b length:v8];
    }

LABEL_6:
    v4 = v7 + 1;
    __b[v7] = 39;
    v3 = (v3 % 0x3E8);
    goto LABEL_7;
  }

  v12 = MEMORY[0x277CCACA8];
}

void *anonymous namespace::alphabeticLabelStringForValue(_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v5 = this;
  v6 = [MEMORY[0x277CCAB68] string];
  if (v5)
  {
    v7 = (v5 - 1);
    v8 = v7 / a3;
    if (v7 / a3 <= 0x7FFFFFFE)
    {
      v9 = *(a2 + 2 * (v7 % a3));
      if (v8 >= 0x63)
      {
        LODWORD(v8) = 99;
      }

      v10 = v8 + 1;
      do
      {
        [v6 tsu_appendCharacter:v9];
        v11 = v10-- != 0;
      }

      while (v10 != 0 && v11);
    }
  }

  return v6;
}

uint64_t std::accumulate[abi:nn200100]<anonymous namespace::IdeographicNumber *,unsigned int,anonymous namespace::BinderConvertIdeographicPowerOfTen<void (*)(NSMutableString *,unsigned int)>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *a4;
      v9 = *v7;
      v10 = a3 / *v7;
      if (a3)
      {
        if (v10 != 1 || (*(a4 + 12) & 1) != 0 || (v11 = *(a4 + 8)) != 0 && v11 != 3)
        {
          (*(a4 + 16))(*a4, a3 / v9);
        }
      }

      if (v9 <= a3)
      {
        [v8 tsu_appendCharacter:*(v7 + 4)];
      }

      v12 = *v7;
      v7 += 8;
      a3 = a3 - v12 * v10;
    }

    while (v7 != a2);
  }

  return a3;
}

void *anonymous namespace::ideographicNumberStringForSmallValue(uint64_t a1, unsigned int a2)
{
  if (a1 >> 4 >= 0x271)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSMutableString *(anonymous namespace)::ideographicNumberStringForSmallValue(unsigned int, TSWPListIdeographicType, BOOL)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 334, @"inValue too large for ideographicNumberStringForSmallValue"}];
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v14 = v6;
  v15 = a2;
  v16 = 0;
  v17 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (v8 >= 0xA)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
    }
  }

  return v6;
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsFormalJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsFormalSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendMultipleIdeographicDigitsFormalTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{

  return [(_anonymous_namespace_ *)this appendString:v3];
}

uint64_t anonymous namespace::appendIdeographicDigitJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

uint64_t anonymous namespace::appendIdeographicDigitSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

uint64_t anonymous namespace::appendIdeographicDigitTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

uint64_t anonymous namespace::appendIdeographicDigitFormalJapanese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

uint64_t anonymous namespace::appendIdeographicDigitFormalSimplifiedChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

uint64_t anonymous namespace::appendIdeographicDigitFormalTraditionalChinese(_anonymous_namespace_ *this, NSMutableString *a2)
{
  v2 = a2;
  if (a2 >= 0xA)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *, unsigned int, TSWPListIdeographicType)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 206, @"inDigit is larger than single digit"}];
  }

  return [(_anonymous_namespace_ *)this tsu_appendCharacter:v6];
}

void *anonymous namespace::cjkLabelStringForValue(_anonymous_namespace_ *this, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v7) = this;
  v8 = [MEMORY[0x277CCAB68] string];
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = (v7 - 1);
      if (a4)
      {
        v11 = *(a2 + 2 * (v10 % a3)) + 96;
      }

      else
      {
        v11 = *(a2 + 2 * (v10 % a3));
      }

      [v8 tsu_insertCharacter:v11 atIndex:0];
      v12 = v10 - (v10 % a3);
      if (v12 < a3)
      {
        break;
      }

      v7 = v12 / a3;
    }

    while (v9++ < 0x64);
  }

  return v8;
}

unint64_t anonymous namespace::toAbjadUnder1000(_anonymous_namespace_ *this, char *__b, unsigned __int16 *a3)
{
  v4 = this;
  if (this >= 0x3E8)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 785, @"number out of range"}];
  }

  else if (this < 0x190)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v4 / 0x190uLL;
  memset_pattern16(__b, &unk_26CA66E30, 2 * (v5 - 1) + 2);
LABEL_6:
  if (v4 % 0x190 >= 0x64)
  {
    v5 = (v5 + 1);
  }

  v8 = v4 % 0x190 % 0x64;
  if (v8 - 15 > 1)
  {
    if (v8 >= 0xA)
    {
      v5 = (v5 + 1);
    }

    if (v4 % 0x190 % 0x64 % 0xA)
    {
      v5 = (v5 + 1);
    }
  }

  else
  {
    v9 = &__b[2 * v5];
    *v9 = 1610;
    v5 = (v5 + 2);
  }

  if (v5 >= 6)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 814, @"string out of range"}];
  }

  return v5;
}

unint64_t anonymous namespace::toHebrewUnder1000(_anonymous_namespace_ *this, void *__b, unsigned __int16 *a3)
{
  v4 = this;
  if (this >= 0x3E8)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 715, @"number out of range"}];
  }

  else if (this < 0x190)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v4 / 0x190uLL;
  memset_pattern16(__b, &unk_26CA66E40, 2 * (v5 - 1) + 2);
LABEL_6:
  if (v4 % 0x190 >= 0x64)
  {
    *(__b + v5) = v4 % 0x190 / 0x64 + 1510;
    v5 = (v5 + 1);
  }

  v8 = v4 % 0x190 % 0x64;
  if (v8 - 15 <= 1)
  {
    *(__b + v5) = 1497;
    v9 = (v5 + 2);
    v10 = v8 + 1477;
    LODWORD(v5) = v5 + 1;
LABEL_14:
    *(__b + v5) = v10;
    v5 = v9;
    goto LABEL_15;
  }

  if (v4 % 0x190 % 0x64 >= 0xA)
  {
    v5 = (v5 + 1);
  }

  if (v4 % 0x190 % 0x64 % 0xA)
  {
    v10 = v4 % 0x190 % 0x64 % 0xA + 1487;
    v9 = (v5 + 1);
    goto LABEL_14;
  }

LABEL_15:
  if (v5 >= 6)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 744, @"string out of range"}];
  }

  return v5;
}

void sub_26C95DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C95DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSWPListLabel::TSWPListLabel(TSWPListLabel *this, TSDImageProvider *a2)
{
  *this = *MEMORY[0x277CBF3A8];
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 9) = 0;
  *(this + 40) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
}

{
  *this = *MEMORY[0x277CBF3A8];
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 9) = 0;
  *(this + 40) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
}

void TSWPListLabel::TSWPListLabel(TSWPListLabel *this, CFTypeRef cf, uint64_t a3)
{
  *this = *MEMORY[0x277CBF3A8];
  *(this + 2) = cf;
  *(this + 9) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0u;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  v4 = (this + 40);
  *(this + 11) = a3;
  *(this + 12) = 0;
  CFRetain(cf);
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(*(this + 2), v4, this + 6, &leading);
  v6 = *v4 + *(this + 6);
  *this = TypographicBounds;
  *(this + 1) = v6;
}

void TSWPListLabel::~TSWPListLabel(TSWPListLabel *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t TSWPListLabel::isEqual(TSWPListLabel *this, const TSWPListLabel *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *this == *a2 && *(this + 1) == *(a2 + 1);
  if (!v4 || *(this + 7) != *(a2 + 7) || *(this + 16) != *(a2 + 16) || *(this + 9) != *(a2 + 9) || *(this + 81) != *(a2 + 81) || *(this + 11) != *(a2 + 11))
  {
    return 0;
  }

  v5 = *(this + 3);
  if (*(this + 2))
  {
    if (v5)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPListLabel::isEqual(const TSWPListLabel *) const"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListLabel.mm"), 59, @"shouldn't have a text line and an image"}];
    }

    v8 = *(a2 + 2);
    if (v8)
    {
      result = CFEqual(*(this + 2), v8);
      if (!result)
      {
        return result;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (v5)
  {
    v11 = *(a2 + 3);
    v12 = [*(this + 3) imageData];
    v13 = v12;
    if (v5 == v11)
    {
      if (!v12)
      {
        v17 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPListLabel::isEqual(const TSWPListLabel *) const"];
        [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListLabel.mm"), 68, @"we assume that imageData will be non-nil and then compare by pointer, and so may end up with a false-positive here"}];
      }
    }

    else
    {
      v14 = [*(a2 + 3) imageData];
      if (![*(this + 3) imageData])
      {
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSWPListLabel::isEqual(const TSWPListLabel *) const"];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListLabel.mm"), 68, @"we assume that imageData will be non-nil and then compare by pointer, and so may end up with a false-positive here"}];
      }

      if (v13 != v14)
      {
        return 0;
      }
    }
  }

  else if (*(a2 + 2) || *(a2 + 3))
  {
    return 0;
  }

LABEL_17:
  v10 = *(this + 4);
  if (v10 == *(a2 + 4))
  {
    return 1;
  }

  return [v10 isEqual:?];
}

double TSWPListLabel::naturalImageSize(TSWPListLabel *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return *MEMORY[0x277CBF3A8];
  }

  [v1 naturalSize];
  return result;
}

const void *TSWPListLabel::labelFont(CTLineRef *this)
{
  GlyphRuns = CTLineGetGlyphRuns(this[2]);
  result = [(__CFArray *)GlyphRuns count];
  if (result)
  {
    Attributes = CTRunGetAttributes([(__CFArray *)GlyphRuns objectAtIndexedSubscript:0]);
    v4 = *MEMORY[0x277CC4838];

    return CFDictionaryGetValue(Attributes, v4);
  }

  return result;
}

uint64_t comparePairs(objc_object *a1, objc_object *a2, void *a3)
{
  v4 = [-[objc_object objectAtIndexedSubscript:](a1 objectAtIndexedSubscript:{1), "unsignedIntegerValue"}];
  v5 = [-[objc_object objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{1), "unsignedIntegerValue"}];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

BOOL TSWPAdornmentLine::merge(TSWPAdornmentLine *this, const TSWPAdornmentLine *a2)
{
  if (a2->var4 != this->var4)
  {
    return 0;
  }

  x = this->var0.x;
  y = this->var0.y;
  v7 = a2->var0.x;
  v6 = a2->var0.y;
  var5 = this->var5;
  result = CGColorEqualToColor(this->var2, a2->var2);
  if (result)
  {
    if (vabdd_f64(x + this->var1, v7) >= 0.00999999978)
    {
      return 0;
    }

    if (a2->var5 != this->var5)
    {
      return 0;
    }

    var6 = a2->var6;
    if (var6 != this->var6 || !var5 && (vabdd_f64(this->var3, a2->var3) >= 0.00999999978 || vabdd_f64(y, v6) >= 0.00999999978))
    {
      return 0;
    }

    if (a2->var9 != this->var9)
    {
      return 0;
    }

    this->var1 = v7 - x + a2->var1;
    if (var5)
    {
      if (this->var8)
      {
        if (!a2->var8)
        {
          this->var0.y = v6;
          var3 = a2->var3;
LABEL_26:
          this->var3 = var3;
          goto LABEL_27;
        }
      }

      else if (a2->var8)
      {
LABEL_27:
        if (this->var8 && !a2->var8)
        {
          this->var8 = 0;
        }

        return 1;
      }
    }

    if (var6 == 1)
    {
      v12 = v6 < y;
    }

    else
    {
      v12 = y < v6;
    }

    if (v12)
    {
      v13 = v6;
    }

    else
    {
      v13 = y;
    }

    this->var0.y = v13;
    var3 = this->var3;
    if (var3 < a2->var3)
    {
      var3 = a2->var3;
    }

    goto LABEL_26;
  }

  return result;
}

void sub_26C9623B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C963E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C964354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C964980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C965174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C9657C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C969C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__24(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_26C96A478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C96A604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C96A80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_26C96A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9700D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t *std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(a2);
  return v3;
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t TSWPParagraphTypesetter::TSWPParagraphTypesetter(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = (a1 + 32);
  *(a1 + 48) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  v9 = [a2 length];
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  if (v9)
  {
    std::vector<unsigned short>::resize(v8, v9);
    [*a1 getCharacters:*(a1 + 32) range:{0, v9}];
    v10 = *(a1 + 32);
    if (v9 - 1 >= (*(a1 + 40) - v10) >> 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2 * (v9 - 1));
    }
  }

  else
  {
    std::vector<unsigned short>::resize(v8, 1uLL);
    v11 = 0;
    **v8 = 0;
  }

  if (IsParagraphBreakingCharacter(v11))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 72) = v12;
  if (v9)
  {
    v13 = v9 - 1;
    if ([*a1 hasColumnBreakAtCharIndex:v13])
    {
      *(*v8 + 2 * v13) = 8233;
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 74) = a4;
  return a1;
}

void sub_26C972694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v11 + 9;
  std::vector<_TSWPTateChuYokoRun>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::vector<_TSWPRubyRun>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void TSWPParagraphTypesetter::~TSWPParagraphTypesetter(TSWPParagraphTypesetter *this)
{
  *this = 0;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
    *(this + 8) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
    *(this + 7) = 0;
  }

  v5 = (this + 104);
  std::vector<_TSWPTateChuYokoRun>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 80);
  std::vector<_TSWPRubyRun>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

void sub_26C972790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 104);
  std::vector<_TSWPTateChuYokoRun>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 80);
  std::vector<_TSWPRubyRun>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 32);
  if (v12)
  {
    *(v10 + 40) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void TSWPParagraphTypesetter::createAttributedString(TSWPParagraphTypesetter *this)
{
  if (!*(this + 7) || (v2 = [MEMORY[0x277D6C290] currentHandler], v3 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "void TSWPParagraphTypesetter::createAttributedString()"), objc_msgSend(v2, "handleFailureInFunction:file:lineNumber:description:", v3, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 96, @"expected nil value for '%s'", "_attributedString"), !*(this + 7)))
  {
    v4 = *(this + 4);
    v5 = (*(this + 5) - v4) >> 1;
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x277CBECE8], v4, v5, *MEMORY[0x277CBED00]);
    Mutable = CFAttributedStringCreateMutable(v6, v5);
    *(this + 7) = Mutable;
    v10.location = 0;
    v10.length = 0;
    CFAttributedStringReplaceString(Mutable, v10, v7);

    CFRelease(v7);
  }
}

CTTypesetterRef TSWPParagraphTypesetter::createCTTypesetter(TSWPParagraphTypesetter *this)
{
  TSWPParagraphTypesetter::pSetupRubyLinesForParagraph(this);
  TSWPParagraphTypesetter::pApplyRubyRunDelegatesToAttributedString(this);
  if (*(this + 74) == 1)
  {
    TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph(this);
  }

  result = CTTypesetterCreateWithAttributedString(*(this + 7));
  *(this + 8) = result;
  return result;
}

void TSWPParagraphTypesetter::pSetupRubyLinesForParagraph(TSWPParagraphTypesetter *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v38 = (this + 80);
  if (*(this + 11) != *(this + 10))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pSetupRubyLinesForParagraph()"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 395, @"expected zero ruby runs when setting up typesetter"}];
  }

  v4 = [*this smartFieldsWithAttributeKind:7 intersectingRange:{*(this + 2), *(this + 3)}];
  if (v4)
  {
    v5 = v4;
    if ([v4 count])
    {
      aStr = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v6)
      {
        v7 = *v46;
        do
        {
          v8 = 0;
          do
          {
            if (*v46 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v45 + 1) + 8 * v8);
            v10 = *this;
            v11 = [v9 range];
            v13 = [v10 charRangeMappedFromStorage:{v11, v12}];
            v15 = v13;
            v16 = *(this + 2);
            if (v16 <= v13 && (v17 = v14, *(this + 3) + v16 >= v13 + v14))
            {
              if (v14)
              {
                Length = CFAttributedStringGetLength(aStr);
                v21 = [v9 rubyText];
                v51.location = Length;
                v51.length = 0;
                CFAttributedStringReplaceString(aStr, v51, v21);
                memset(v44, 0, sizeof(v44));
                cf = 0u;
                v40 = v9;
                v41 = v15;
                v42 = v17;
                v22 = *(this + 11);
                if (v22 >= *(this + 12))
                {
                  v23 = std::vector<_TSWPRubyRun>::__emplace_back_slow_path<_TSWPRubyRun const&>(v38, &v40);
                }

                else
                {
                  _TSWPRubyRun::_TSWPRubyRun(*(this + 11), &v40);
                  v23 = v22 + 72;
                  *(this + 11) = v22 + 72;
                }

                *(this + 11) = v23;
                v24 = [*this paragraphStyleAtCharIndex:*(this + 2) effectiveRange:0];
                v25 = [v24 getTypesetterAttributes:objc_msgSend(*this scalePercent:"characterStyleAtCharIndex:effectiveRange:" isRightToLeft:{v41, 0), *(this + 1) >> 1, 0}];
                v52.length = [objc_msgSend(v9 "rubyText")];
                v52.location = Length;
                CFAttributedStringSetAttributes(aStr, v52, v25, 1u);
                if (cf)
                {
                  CFRelease(cf);
                }
              }
            }

            else
            {
              v18 = [MEMORY[0x277D6C290] currentHandler];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pSetupRubyLinesForParagraph()"];
              [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 428, @"ruby field crossed paragraph boundary"}];
            }

            ++v8;
          }

          while (v6 != v8);
          v26 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
          v6 = v26;
        }

        while (v26);
      }

      if (*(this + 74) == 1)
      {
        ApplyVerticalFormsToAttributedString(aStr, 0);
      }

      v27 = CTTypesetterCreateWithAttributedString(aStr);
      v28 = *(this + 11) - *(this + 10);
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0x8E38E38E38E38E39 * (v28 >> 3);
        if (v31 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        do
        {
          v33 = *v38;
          v34 = [objc_msgSend(*(*v38 + v29) "rubyText")];
          if (v34)
          {
            v53.location = v30;
            v53.length = v34;
            Line = CTTypesetterCreateLine(v27, v53);
            *(v33 + v29 + 24) = Line;
            TypographicBounds = CTLineGetTypographicBounds(Line, (v33 + v29 + 40), (v33 + v29 + 48), 0);
          }

          else
          {
            v37 = (v33 + v29);
            v37[3] = 0;
            v37[5] = 0;
            v37[6] = 0;
            TypographicBounds = 0.0;
          }

          *(v33 + v29 + 32) = TypographicBounds;
          v30 += v34;
          v29 += 72;
          --v32;
        }

        while (v32);
      }

      CFRelease(v27);
      CFRelease(aStr);
    }
  }
}

void sub_26C972D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

TSWPParagraphTypesetter *TSWPParagraphTypesetter::pApplyRubyRunDelegatesToAttributedString(TSWPParagraphTypesetter *this)
{
  if (*(this + 11) != *(this + 10))
  {
    TSWPParagraphTypesetter::pAddRubyRunDelegateAtIndexForRun();
  }

  return this;
}

void TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph(TSWPParagraphTypesetter *this)
{
  v2 = (this + 104);
  if (*(this + 13) != *(this + 14))
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph()"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 556, @"Should be no tate chu yoko runs prior to setup"}];
    std::vector<_TSWPTateChuYokoRun>::clear[abi:nn200100](v2);
  }

  contentsDeallocator = v2;
  v5 = 0;
  v6 = (*(this + 5) - *(this + 4)) >> 1;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v5 < v6 && TSWPIsPotentialTateChuYokoCharacter(*(*(this + 4) + 2 * v5)))
    {
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      goto LABEL_50;
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    v9 = [*this smartFieldsWithAttributeKind:7 intersectingRange:{v7, v5 - v7}];
    if (v9)
    {
      v10 = [v9 count] != 0;
    }

    else
    {
      v10 = 0;
    }

    if (v5 <= v7)
    {
LABEL_30:
      v19 = 0;
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    v11 = 0;
    v12 = 0;
    v13 = v7;
    while (1)
    {
      v14 = *(this + 7);
      v15 = String(45);
      Attribute = CFAttributedStringGetAttribute(v14, v13, v15, &effectiveRange);
      if (!Attribute)
      {
        break;
      }

      v17 = Attribute;
      v18 = CFStringGetLength(Attribute) != 0;
      if (v13 == v7)
      {
        v12 = v17;
        v11 = v18;
      }

      if (((v18 ^ v11) & 1) != 0 || v12 && ([(__CFString *)v12 isEqualToString:v17]& 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_26:
      if (effectiveRange.length)
      {
        v13 = effectiveRange.location + effectiveRange.length;
      }

      else
      {
        ++v13;
      }

      if (v13 >= v5)
      {
        goto LABEL_30;
      }
    }

    if (v13 == v7)
    {
      v12 = 0;
    }

    if (v13 == v7 || !v11)
    {
      v11 = 0;
      goto LABEL_26;
    }

LABEL_32:
    v19 = 1;
    if (v10)
    {
      goto LABEL_36;
    }

LABEL_33:
    if (v5 - v7 - 6 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v19 = 1;
    }

    if (v19)
    {
LABEL_36:
      if (v5 > v7)
      {
        do
        {
          TSWPParagraphTypesetter::pConvertCharacterIndexToFullWidthNumber(this, v7++);
        }

        while (v5 != v7);
      }
    }

    else
    {
      memset(cf, 0, sizeof(cf));
      effectiveRange.location = v7;
      effectiveRange.length = v5 - v7;
      v20 = *(this + 14);
      if (v20 >= *(this + 15))
      {
        v22 = std::vector<_TSWPTateChuYokoRun>::__emplace_back_slow_path<_TSWPTateChuYokoRun const&>(contentsDeallocator, &effectiveRange);
      }

      else
      {
        *v20 = effectiveRange;
        *(v20 + 16) = 0;
        *(v20 + 24) = *&cf[1];
        *(v20 + 40) = *&cf[3];
        if (cf[0])
        {
          CFRetain(cf[0]);
          v21 = cf[0];
        }

        else
        {
          v21 = 0;
        }

        *(v20 + 16) = v21;
        v22 = v20 + 56;
        *(this + 14) = v20 + 56;
      }

      *(this + 14) = v22;
      if (v5 > v7)
      {
        do
        {
          TSWPParagraphTypesetter::pConvertCharacterIndexToNormalWidthNumber(this, v7++);
        }

        while (v5 != v7);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
    ++v5;
    v7 = v8;
  }

  while (v5 <= v6);
  if (*(this + 13) != *(this + 14))
  {
    alloc = *MEMORY[0x277CBECE8];
    Mutable = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v24 = *(this + 14) - *(this + 13);
    if (v24)
    {
      v25 = 0;
      v26 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3);
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      do
      {
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:*(this + 4) + 2 * *(*(this + 13) + v25) length:*(*(this + 13) + v25 + 8) freeWhenDone:0];
        v72.location = CFAttributedStringGetLength(Mutable);
        v72.length = 0;
        CFAttributedStringReplaceString(Mutable, v72, v28);

        v25 += 56;
        --v27;
      }

      while (v27);
    }

    v29 = [*this paragraphStyleAtCharIndex:0 effectiveRange:0];
    v30 = [v29 getTypesetterAttributes:0 scalePercent:*(this + 1) isRightToLeft:0];
    v73.length = CFAttributedStringGetLength(Mutable);
    aStr = Mutable;
    v73.location = 0;
    CFAttributedStringSetAttributes(Mutable, v73, v30, 1u);
    v31 = *(this + 14) - *(this + 13);
    if (v31)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0x6DB6DB6DB6DB6DB7 * (v31 >> 3);
      if (v34 <= 1)
      {
        v34 = 1;
      }

      v66 = v34;
      do
      {
        v35 = (*contentsDeallocator + 56 * v33);
        location = v35->location;
        length = v35->length;
        v38 = length + v35->location;
        if (v35->location < v38)
        {
          v39 = v32 - location;
          do
          {
            v40 = [*this characterStyleAtCharIndex:location effectiveRange:&effectiveRange];
            if (v40)
            {
              v41 = v40;
              effectiveRange = NSIntersectionRange(*v35, effectiveRange);
              v42 = [v29 getTypesetterAttributes:v41 scalePercent:*(this + 1) isRightToLeft:0];
              v74.length = effectiveRange.length;
              v74.location = v39 + location;
              CFAttributedStringSetAttributes(aStr, v74, v42, 1u);
            }

            location = effectiveRange.length + effectiveRange.location;
          }

          while (effectiveRange.length + effectiveRange.location < v38);
        }

        v32 += length;
        ++v33;
      }

      while (v33 != v66);
    }

    FontForStyle = TSWPFastCreateFontForStyle(0, v29, 0x64uLL);
    TSWPFontGetLineHeight();
    v45 = v44;
    CFRelease(FontForStyle);
    v46 = CTTypesetterCreateWithAttributedString(aStr);
    v47 = *(this + 13);
    if (v47 != *(this + 14))
    {
      v48 = 0;
      contentsDeallocatora = *MEMORY[0x277CBED00];
      v49 = *MEMORY[0x277CC4A00];
      do
      {
        v51 = *v47;
        v50 = *(v47 + 1);
        if (*(v47 + 2))
        {
          v52 = [MEMORY[0x277D6C290] currentHandler];
          v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph()"];
          [v52 handleFailureInFunction:v53 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 702, @"Tate chu yoko line ref should be null"}];
        }

        v75.location = v48;
        v75.length = v50;
        Line = CTTypesetterCreateLine(v46, v75);
        *(v47 + 2) = Line;
        TypographicBounds = CTLineGetTypographicBounds(Line, v47 + 4, v47 + 5, v47 + 6);
        *(v47 + 3) = TypographicBounds;
        if (TypographicBounds >= v45)
        {
          v60 = v50;
          if (v51 < v50 + v51)
          {
            do
            {
              TSWPParagraphTypesetter::pConvertCharacterIndexToFullWidthNumber(this, v51++);
              --v60;
            }

            while (v60);
          }

          v61 = *(this + 14);
          if (v47 + 56 == v61)
          {
            v59 = v47;
          }

          else
          {
            v62 = v47;
            do
            {
              v59 = (v62 + 56);
              _TSWPTateChuYokoRun::operator=(v62, v62 + 56);
              v63 = v62 + 112;
              v62 += 56;
            }

            while (v63 != v61);
            v61 = *(this + 14);
          }

          while (v61 != v59)
          {
            v64 = *(v61 - 5);
            if (v64)
            {
              CFRelease(v64);
            }

            v61 -= 56;
          }

          *(this + 14) = v59;
        }

        else
        {
          LOWORD(effectiveRange.location) = 32;
          v56 = CFStringCreateWithCharactersNoCopy(alloc, &effectiveRange, 1, contentsDeallocatora);
          v76.location = v51;
          v76.length = 1;
          CFAttributedStringReplaceString(*(this + 7), v76, v56);
          *(*(this + 4) + 2 * v51) = effectiveRange.location;
          CFRelease(v56);
          v57 = CTRunDelegateCreate(&gTateChuYokoWidthRunDelegateCallBacks, v47);
          v77.location = v51;
          v77.length = 1;
          CFAttributedStringSetAttribute(*(this + 7), v77, v49, v57);
          CFRelease(v57);
          v58 = CTRunDelegateCreate(&gTateChuYokoWidthRunDelegateCallBacks, 0);
          v78.length = v50 - 1;
          v78.location = v51 + 1;
          CFAttributedStringSetAttribute(*(this + 7), v78, v49, v58);
          CFRelease(v58);
          v47 += 56;
          v59 = *(this + 14);
        }

        v48 += v50;
      }

      while (v47 != v59);
    }

    CFRelease(v46);
    CFRelease(aStr);
  }
}

void sub_26C9734EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf)
{
  *(v16 + 112) = v17;
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPParagraphTypesetter::lineNeedsRecutting(TSWPParagraphTypesetter *this, TSWPLineFragment *a2, double a3)
{
  v3 = *(this + 11) - *(this + 10);
  if (v3)
  {
    v7 = 0x8E38E38E38E38E39 * (v3 >> 3);
    v8 = [*this charRangeMappedFromStorage:{*a2, *(a2 + 1)}];
    v29 = v8;
    v10 = v9;
    v11 = 0;
    v12 = 0;
    if (v7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v7;
    }

    do
    {
      v14 = *(this + 10);
      v15 = v14 + v11;
      if ((*(v14 + v11 + 64) & 1) == 0)
      {
        v17 = *(v15 + 8);
        v16 = *(v15 + 16);
        PositionForLocalCharIndex = TSWPParagraphTypesetter::getPositionForLocalCharIndex(v8, a2, v17);
        v20 = TSWPParagraphTypesetter::getPositionForLocalCharIndex(v19, a2, v16 + v17) - PositionForLocalCharIndex;
        if (v20 <= 0.0)
        {
          goto LABEL_19;
        }

        v21 = *(v14 + v11 + 32);
        if (v20 >= v21)
        {
          v21 = v20;
        }

        if (v21 <= a3)
        {
LABEL_19:
          if (!*(v15 + 64) && v17 >= v29 && v17 - v29 < v10)
          {
            v23 = *(v14 + v11 + 32);
            v24 = v23 + 1.0;
            if (v20 + 1.0 < v23 && v24 >= v20)
            {
              v30 = 0.0;
              v31 = 0.0;
              v8 = TSWPParagraphTypesetter::pCalculateRubyOverlap(this, a2, v14 + v11, &v31, &v30);
              v26 = v20 + v31 + v30;
              if (v24 >= v26 && v26 + 1.0 < v23)
              {
                *(v14 + v11 + 56) = v23 - v26;
                v12 = 1;
              }
            }
          }
        }

        else
        {
          v12 = 1;
          *(v15 + 64) = 1;
        }
      }

      v11 += 72;
      --v13;
    }

    while (v13);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double TSWPParagraphTypesetter::getPositionForLocalCharIndex(TSWPParagraphTypesetter *this, const TSWPLineFragment *a2, unint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 25);
  v5 = 0.0;
  if (v3 != v4)
  {
    while (1)
    {
      StringRange = CTLineGetStringRange(*v3);
      if (StringRange.location <= a3 && StringRange.location + StringRange.length >= a3)
      {
        break;
      }

      v3 += 48;
      if (v3 == v4)
      {
        return v5;
      }
    }

    v9 = *(v3 + 8);
    return v9 + CTLineGetOffsetForStringIndex(*v3, a3, 0);
  }

  return v5;
}

unint64_t TSWPParagraphTypesetter::pCalculateRubyOverlap(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  *a5 = 0;
  *a4 = 0;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  result = [*a3 baseTextScript];
  if (result == 6)
  {
    v13 = *(a3 + 24);
    if (v13)
    {
      length = CTLineGetStringRange(v13).length;
    }

    else
    {
      length = 0.0;
    }

    v15 = *(a3 + 32);
    result = [*a1 charRangeMappedToStorage:{v10, v11}];
    v18 = result > *a2 && v10 != 0;
    v19 = result + v16 < a2[1] + *a2 && (v11 + v10) < *(a1 + 24) + *(a1 + 16);
    v20 = 0;
    v21 = 0;
    v22 = v15 / length;
    if (v18)
    {
      result = TSWPParagraphTypesetter::pAllowableRubyOverlapAtIndex(a1, v22, v10 - 1);
    }

    *a4 = v21;
    if (v19)
    {
      result = TSWPParagraphTypesetter::pAllowableRubyOverlapAtIndex(a1, v22, v11 + v10);
      v20 = v23;
    }

    *a5 = v20;
  }

  return result;
}

double TSWPParagraphTypesetter::createRubyLineRefsForLineFragment(TSWPParagraphTypesetter *this, TSWPLineFragment *a2)
{
  v2 = *(this + 11) - *(this + 10);
  if (!v2)
  {
    return 0.0;
  }

  v5 = v2 >> 3;
  v6 = *(a2 + 34);
  v7 = 0.0;
  v8 = 0.0;
  v9 = *(a2 + 35) - v6;
  if (v9)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = (v6 + 56);
    do
    {
      if (*(v11 - 2) == 1 && v8 < *v11)
      {
        v8 = *v11;
      }

      v11 += 10;
      --v10;
    }

    while (v10);
  }

  v12 = 0x8E38E38E38E38E39 * v5;
  v13 = [*this charRangeMappedFromStorage:{*a2, *(a2 + 1)}];
  v15 = v14;
  v16 = 0;
  v17 = 1;
  v18 = 1.0;
  do
  {
    v19 = *(this + 10) + 72 * v16;
    v20 = *(v19 + 8);
    if (v20 >= v13 && v20 - v13 < v15)
    {
      v22 = *(v19 + 16);
      v23 = [objc_msgSend(*v19 "rubyText")];
      if (v23 && *(v19 + 64) == 0)
      {
        v25 = *(v19 + 24);
        if (*&v25 != 0.0)
        {
          v26 = *(v19 + 32);
          if (v26 > 0.0)
          {
            PositionForLocalCharIndex = TSWPParagraphTypesetter::getPositionForLocalCharIndex(v23, a2, v20);
            v29 = TSWPParagraphTypesetter::getPositionForLocalCharIndex(v28, a2, v22 + v20) - PositionForLocalCharIndex;
            v30 = v29 - v26;
            v31 = v26 + v18;
            v32 = -(v8 + *(a2 + 16) + *(v19 + 48));
            if (v31 >= v29)
            {
              if (v29 + 1.0 < v26)
              {
                v47 = 0.0;
                *&cf = 0.0;
                TSWPParagraphTypesetter::pCalculateRubyOverlap(this, a2, v19, &cf, &v47);
                v38 = v29 + *&cf + v47;
                if (v31 >= v38 && v38 + 1.0 < v26)
                {
                  v46 = [MEMORY[0x277D6C290] currentHandler];
                  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat TSWPParagraphTypesetter::createRubyLineRefsForLineFragment(TSWPLineFragment *)"];
                  [v46 handleFailureInFunction:v40 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 269, @"could not properly position ruby text. fall back to centering over base text."}];
                }

                else
                {
                  PositionForLocalCharIndex = PositionForLocalCharIndex - *&cf;
                  v30 = v38 - v26;
                }
              }

              v41 = [*v19 range];
              cf = v25;
              v49 = PositionForLocalCharIndex + v30 * 0.5;
              v50 = v32;
              v51 = v41;
              v52 = v42;
              v53 = 0;
              CFRetain(v25);
              std::vector<TSWPLineRef>::push_back[abi:nn200100](a2 + 224, &cf);
            }

            else
            {
              GlyphCount = CTLineGetGlyphCount(v25);
              v34 = v30 / GlyphCount * 0.5;
              if (GlyphCount < 2 || (*&v35 = COERCE_DOUBLE(CTLineCreateJustifiedLine(v25, 1.0, v29 + v34 * -2.0)), *&v35 == 0.0))
              {
                CFRetain(v25);
                v35 = v25;
              }

              v36 = [*v19 range];
              cf = v35;
              v49 = PositionForLocalCharIndex + v34;
              v50 = v32;
              v51 = v36;
              v52 = v37;
              v53 = 0;
              CFRetain(v35);
              CFRelease(v35);
              std::vector<TSWPLineRef>::push_back[abi:nn200100](a2 + 224, &cf);
            }

            v18 = 1.0;
            if (*&cf != 0.0)
            {
              CFRelease(cf);
            }

            v43 = *(v19 + 48);
            if (v7 < *(v19 + 40) + v43)
            {
              v7 = *(v19 + 40) + v43;
            }
          }
        }

        *(a2 + 6) |= 0x400u;
      }
    }

    v16 = v17;
  }

  while (v12 > v17++);
  return v7;
}

void sub_26C973BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void TSWPParagraphTypesetter::createTateChuYokoLineRefsForLineFragment(TSWPParagraphTypesetter *this, TSWPLineFragment *a2)
{
  if (*(this + 13) != *(this + 14))
  {
    v4 = [*this charRangeMappedFromStorage:{*a2, *(a2 + 1)}];
    v7 = *(this + 13);
    v6 = *(this + 14);
    if (v6 != v7)
    {
      v8 = v4 + v5;
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 - v7);
      do
      {
        v10 = v9 >> 1;
        v11 = &v7[7 * (v9 >> 1)];
        v13 = *v11;
        v12 = v11 + 7;
        v9 += ~(v9 >> 1);
        if (v13 < v4)
        {
          v7 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
      if (v7 != v6)
      {
        v14 = MEMORY[0x277D6C268];
        do
        {
          if (*v7 >= v8)
          {
            break;
          }

          PositionForLocalCharIndex = TSWPParagraphTypesetter::getPositionForLocalCharIndex(v4, a2, *v7);
          v16 = v7[2];
          v17 = PositionForLocalCharIndex + *(v7 + 4);
          v18 = *(v7 + 3) * 0.5;
          cf[0] = v16;
          cf[1] = *&v17;
          *&cf[2] = v18;
          v20 = *v14;
          v21 = 0;
          if (v16)
          {
            CFRetain(v16);
          }

          v20 = *v7;
          std::vector<TSWPLineRef>::push_back[abi:nn200100](a2 + 248, cf);
          v4 = cf[0];
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v7 += 7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_26C973D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void *TSWPParagraphTypesetter::findTateChuYokoLineRefsForCharIndex(TSWPParagraphTypesetter *this, uint64_t a2)
{
  if (*(this + 13) == *(this + 14))
  {
    return 0;
  }

  v3 = [*this charIndexMappedFromStorage:a2];
  v5 = *(this + 13);
  v4 = *(this + 14);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = 0x6DB6DB6DB6DB6DB7 * (v4 - v5);
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[7 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 7;
    v6 += ~(v6 >> 1);
    if (v10 < v3)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == v4 || *v5 != v3)
  {
    return 0;
  }

  v11 = v5 + 7;
  do
  {
    v12 = v11;
    if (v11 == v4)
    {
      break;
    }

    v11 += 7;
  }

  while (*v12 == v3);
  return v12 - 7;
}

uint64_t TSWPParagraphTypesetter::rubyLayoutIsDisabledForField(TSWPParagraphTypesetter *this, TSWPRubyField *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11) - v2;
  if (v3)
  {
    v3 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    for (i = (v2 + 64); *(i - 8) != a2; i += 9)
    {
      if (!--v3)
      {
        return v3 & 1;
      }
    }

    LOBYTE(v3) = *i;
  }

  return v3 & 1;
}

TSWPParagraphTypesetter *TSWPParagraphTypesetter::disableRubyLayoutForField(TSWPParagraphTypesetter *this, TSWPRubyField *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 64);
    do
    {
      if (*(v5 - 8) == a2)
      {
        *v5 = 1;
      }

      v5 += 72;
      --v4;
    }

    while (v4);
  }

  return this;
}

TSWPParagraphTypesetter *TSWPParagraphTypesetter::enableRubyLayoutForField(TSWPParagraphTypesetter *this, TSWPRubyField *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 64);
    do
    {
      if (*(v5 - 8) == a2)
      {
        *v5 = 0;
      }

      v5 += 9;
      --v4;
    }

    while (v4);
  }

  return this;
}

uint64_t TSWPParagraphTypesetter::isZeroWidthTrailingSpace(TSWPParagraphTypesetter *this, unint64_t a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 5) + *(v5 - 6);
      if (v6 <= a2)
      {
        break;
      }

      if (v6 - 1 == a2 && *v5 == 0.0)
      {
        return 1;
      }

      v5 += 9;
      --v4;
    }

    while (v4);
  }

  return 0;
}

TSWPParagraphTypesetter *TSWPParagraphTypesetter::TSWPRubyRunDelegateDeallocateCallback(TSWPParagraphTypesetter *this, void *a2)
{
  if (this)
  {
    JUMPOUT(0x26D6A9A30);
  }

  return this;
}

double TSWPParagraphTypesetter::TSWPRubyRunDelegateGetWidthCallback(TSWPParagraphTypesetter *this, void *a2)
{
  result = 0.0;
  if (this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if ((*(v3 + 64) & 1) == 0)
      {
        return *(v3 + 56) * 0.5;
      }
    }
  }

  return result;
}

void TSWPParagraphTypesetter::pConvertCharacterIndexToFullWidthNumber(TSWPParagraphTypesetter *this, unint64_t a2)
{
  v2 = *(this + 4);
  if (a2 >= (*(this + 5) - v2) >> 1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pConvertCharacterIndexToFullWidthNumber(const NSUInteger)"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:518 description:@"Access outside array"];
  }

  else
  {
    v5 = *(v2 + 2 * a2);
    v6 = TSWPFullWidthCharacterForCharacter(*(v2 + 2 * a2));
    chars = v6;
    if (v5 != v6)
    {
      v7 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x277CBECE8], &chars, 1, *MEMORY[0x277CBED00]);
      v13.location = a2;
      v13.length = 1;
      CFAttributedStringReplaceString(*(this + 7), v13, v7);
      *(*(this + 4) + 2 * a2) = chars;
      CFRelease(v7);
    }
  }
}

void TSWPParagraphTypesetter::pConvertCharacterIndexToNormalWidthNumber(TSWPParagraphTypesetter *this, unint64_t a2)
{
  v2 = *(this + 4);
  if (a2 >= (*(this + 5) - v2) >> 1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPParagraphTypesetter::pConvertCharacterIndexToNormalWidthNumber(const NSUInteger)"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:536 description:@"Access outside array"];
  }

  else
  {
    v5 = *(v2 + 2 * a2);
    v6 = TSWPNormalWidthCharacterForCharacter(*(v2 + 2 * a2));
    chars = v6;
    if (v5 != v6)
    {
      v7 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x277CBECE8], &chars, 1, *MEMORY[0x277CBED00]);
      v13.location = a2;
      v13.length = 1;
      CFAttributedStringReplaceString(*(this + 7), v13, v7);
      *(*(this + 4) + 2 * a2) = chars;
      CFRelease(v7);
    }
  }
}

void std::vector<_TSWPTateChuYokoRun>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 40);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  a1[1] = v2;
}

const __CTRun *TSWPParagraphTypesetter::pGetRunForLocalCharIndex(TSWPParagraphTypesetter *this, const TSWPLineFragment *a2, unint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  v4 = *(a2 + 25);
  if (v3 != v4)
  {
    while (1)
    {
      StringRange = CTLineGetStringRange(*v3);
      if (StringRange.location <= a3 && StringRange.location + StringRange.length > a3)
      {
        break;
      }

      v3 += 6;
      if (v3 == v4)
      {
        goto LABEL_21;
      }
    }

    GlyphRuns = CTLineGetGlyphRuns(*v3);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(GlyphRuns);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = CTRunGetStringRange(v13);
        if (v14.location <= a3 && v14.location + v14.length > a3)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_21;
        }
      }

      if (v13)
      {
        return v13;
      }
    }
  }

LABEL_21:
  v16 = [MEMORY[0x277D6C290] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTRunRef TSWPParagraphTypesetter::pGetRunForLocalCharIndex(const TSWPLineFragment *, NSUInteger) const"}];
  [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphTypesetter.mm"), 793, @"Could not find run for local char index in line fragment"}];
  return 0;
}

uint64_t TSWPParagraphTypesetter::pAllowableRubyOverlapAtIndex(TSWPParagraphTypesetter *this, double a2, uint64_t a3)
{
  v3 = *(*(this + 4) + 2 * a3);
  result = TSWPScriptForCharacter(v3);
  if ((result - 3) < 2)
  {
    return result;
  }

  if (v3 <= 12288)
  {
    if (v3 <= 0x3B && ((1 << v3) & 0xC00500000000000) != 0)
    {
      return result;
    }

    if ((v3 - 8212) <= 0x12 && ((1 << (v3 - 20)) & 0x60001) != 0)
    {
      return result;
    }

LABEL_22:
    result = IsOpeningBracketCharacter(v3);
    if ((result & 1) == 0)
    {
      return IsClosingBracketCharacter(v3);
    }

    return result;
  }

  if (((v3 - 12289) > 0x34 || ((1 << (v3 - 1)) & 0x1C000000000003) == 0) && (v3 - 12539) >= 2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t IsOpeningBracketCharacter(int a1)
{
  result = 1;
  if (a1 <= 8219)
  {
    if (a1 <= 122)
    {
      if (a1 != 40 && a1 != 91)
      {
        return 0;
      }

      return result;
    }

    if (a1 == 123 || a1 == 171)
    {
      return result;
    }

    v3 = 8216;
  }

  else
  {
    if ((a1 - 12296) <= 0x15 && ((1 << (a1 - 8)) & 0x215155) != 0 || a1 == 8220)
    {
      return result;
    }

    v3 = 10629;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t IsClosingBracketCharacter(int a1)
{
  result = 1;
  if (a1 <= 8220)
  {
    if (a1 <= 124)
    {
      if (a1 != 41 && a1 != 93)
      {
        return 0;
      }

      return result;
    }

    if (a1 == 125 || a1 == 187)
    {
      return result;
    }

    v3 = 8217;
  }

  else
  {
    if ((a1 - 12297) <= 0x16 && ((1 << (a1 - 9)) & 0x415155) != 0 || a1 == 8221)
    {
      return result;
    }

    v3 = 10630;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

double TSWPParagraphTypesetter::pRubyRunDelegateGetWidth(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a2)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return *(a2 + 56) * 0.5;
    }
  }

  return result;
}

double TSWPTateChuYokoRunDelegateGetWidthCallback(double *a1)
{
  if (a1)
  {
    return a1[4] + a1[5];
  }

  else
  {
    return 0.0;
  }
}

uint64_t std::vector<TSWPLineRef>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TSWPLineRef>::__emplace_back_slow_path<TSWPLineRef const&>(a1, a2);
  }

  else
  {
    std::vector<TSWPLineRef>::__construct_one_at_end[abi:nn200100]<TSWPLineRef const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

CFTypeRef std::vector<TSWPLineRef>::__construct_one_at_end[abi:nn200100]<TSWPLineRef const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *a2;
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 40) = *(a2 + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 8) = v3 + 48;
  return result;
}

uint64_t std::vector<TSWPLineRef>::__emplace_back_slow_path<TSWPLineRef const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPLineRef>>(a1, v6);
  }

  v7 = 48 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 48 * v2;
  v8 = *a2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  if (v8)
  {
    CFRetain(v8);
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v9 = 48 * v2;
  }

  *&v18 = v9 + 48;
  v10 = *(a1 + 8);
  v11 = v7 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPLineRef>,TSWPLineRef*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<TSWPLineRef>::~__split_buffer(&v16);
  return v15;
}

void sub_26C9748AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TSWPLineRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPLineRef>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSWPLineRef>,TSWPLineRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = *(v7 + 3);
      *(a4 + 40) = *(v7 + 10);
      if (v8)
      {
        CFRetain(v8);
      }

      v7 += 6;
      a4 += 48;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        CFRelease(*v6);
      }

      v6 += 6;
    }
  }
}

void **std::__split_buffer<TSWPLineRef>::~__split_buffer(void **a1)
{
  std::__split_buffer<TSWPLineRef>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSWPLineRef>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 48);
    v1 -= 48;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5)
    {
      CFRelease(v4);
      v1 = *(a1 + 16);
    }
  }
}

void std::vector<_TSWPRubyRun>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<_TSWPRubyRun>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<_TSWPRubyRun>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 48);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<_TSWPTateChuYokoRun>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<_TSWPTateChuYokoRun>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<_TSWPRubyRun>::__emplace_back_slow_path<_TSWPRubyRun const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPRubyRun>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  _TSWPRubyRun::_TSWPRubyRun(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_TSWPRubyRun>,_TSWPRubyRun*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<_TSWPRubyRun>::~__split_buffer(&v13);
  return v12;
}

void sub_26C974D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<_TSWPRubyRun>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _TSWPRubyRun::_TSWPRubyRun(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 24);
  if (v3)
  {
    CFRetain(v3);
    v5 = *(a2 + 24);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPRubyRun>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_TSWPRubyRun>,_TSWPRubyRun*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = _TSWPRubyRun::_TSWPRubyRun(a4, v7);
      v7 += 72;
      a4 = v8 + 72;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v9 = *(v6 + 24);
      if (v9)
      {
        CFRelease(v9);
      }

      v6 += 72;
    }
  }
}

void **std::__split_buffer<_TSWPRubyRun>::~__split_buffer(void **a1)
{
  std::__split_buffer<_TSWPRubyRun>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<_TSWPRubyRun>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 72;
    v4 = *(v1 - 48);
    if (v4)
    {
      CFRelease(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 72;
    }
  }
}

uint64_t std::vector<_TSWPTateChuYokoRun>::__emplace_back_slow_path<_TSWPTateChuYokoRun const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPTateChuYokoRun>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  _TSWPTateChuYokoRun::_TSWPTateChuYokoRun(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_TSWPTateChuYokoRun>,_TSWPTateChuYokoRun*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<_TSWPTateChuYokoRun>::~__split_buffer(&v13);
  return v12;
}

void sub_26C975088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<_TSWPTateChuYokoRun>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _TSWPTateChuYokoRun::_TSWPTateChuYokoRun(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 16);
  if (v3)
  {
    CFRetain(v3);
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPTateChuYokoRun>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_TSWPTateChuYokoRun>,_TSWPTateChuYokoRun*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = _TSWPTateChuYokoRun::_TSWPTateChuYokoRun(a4, v7);
      v7 += 56;
      a4 = v8 + 56;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        CFRelease(v9);
      }

      v6 += 56;
    }
  }
}

void **std::__split_buffer<_TSWPTateChuYokoRun>::~__split_buffer(void **a1)
{
  std::__split_buffer<_TSWPTateChuYokoRun>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<_TSWPTateChuYokoRun>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 56;
    v4 = *(v1 - 40);
    if (v4)
    {
      CFRelease(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 56;
    }
  }
}

uint64_t _TSWPTateChuYokoRun::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t TSWPReplaceActionComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 targetCharIndex];
  v5 = [a3 targetCharIndex];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

void TSWPStyleAttributeArray::~TSWPStyleAttributeArray(TSWPAttributeArray *this)
{
  this->var0 = &unk_287D35520;
  if (this->var2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(this->var0 + 24))(this, this->var4 + v2);
      ++v3;
      v2 += 16;
    }

    while (v3 < this->var2);
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

{
  TSWPStyleAttributeArray::~TSWPStyleAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

TSWPAttributeArray *TSWPStyleAttributeArray::collapseAttributesAtAttributeIndex(TSWPAttributeArray *this, unint64_t a2, TSWPStorageTransaction *a3)
{
  v5 = this;
  if (!a2 || this->var2 <= a2 || (this = (*(this->var0 + 26))(this, this->var4 + 16 * a2, this->var4 + 16 * a2 - 16), (this & 1) == 0))
  {
    var2 = v5->var2;
    if (var2 - 1 != a2)
    {
LABEL_7:
      if (var2 <= a2)
      {
        return this;
      }

      this = (*(v5->var0 + 27))(v5, v5->var4 + 16 * a2, a2);
      if (!this)
      {
        return this;
      }

      goto LABEL_9;
    }

    v7 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a2);
    this = TSWPAttributeArray::characterCount(v5);
    if (v7 != this)
    {
      var2 = v5->var2;
      goto LABEL_7;
    }
  }

LABEL_9:
  v8 = *(v5->var0 + 7);

  return v8(v5, a2, 1, a3);
}

void TSWPStyleAttributeArray::applyObjectToCharRange(TSWPAttributeArray *this, objc_object *a2, _NSRange a3, TSKAddedToDocumentContext *a4, TSWPStorageTransaction *a5)
{
  length = a3.length;
  location = a3.location;
  if (a3.location > TSWPAttributeArray::characterCount(this) || length > TSWPAttributeArray::characterCount(this) - location)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPStyleAttributeArray::applyObjectToCharRange(id, NSRange, TSKAddedToDocumentContext *, TSWPStorageTransaction *)"}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"];
    v28.location = location;
    v28.length = length;
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:80 description:{@"Bad input char range %@.", NSStringFromRange(v28)}];
  }

  v29.location = location;
  v29.length = length;
  v14 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(this, v29);
  v16 = v15;
  v17 = location + length;
  v18 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v17);
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this->var4 + 2 * v18 + 1);
    v20 = v19;
  }

  v25 = a4;
  if (v14)
  {
    if (*(this->var4 + 2 * v14 - 1) == a2)
    {
      v21 = 0;
      ++v16;
      --v14;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (this->var2 && TSWPAttributeArray::charIndexForAttributeIndex(this, 0) == location)
  {
    if (!a2 && *(this->var4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (!a2)
  {
LABEL_14:
    v14 = 0;
    v21 = 1;
    goto LABEL_22;
  }

LABEL_16:
  if (v14 < this->var2 && TSWPAttributeArray::charIndexForAttributeIndex(this, v14) == location)
  {
    if (*(this->var4 + 2 * v14 + 1) != a2)
    {
      TSWPAttributeArray::replaceObjectForAttributeIndex(this, a2, v14, a4, a5);
    }

    v21 = 0;
  }

  else
  {
    v26 = location;
    v27 = a2;
    TSWPAttributeArray::insertAttribute(this, &v26, v14, a4, a5);
    v21 = 0;
    ++v16;
  }

LABEL_22:
  if (!v16)
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPStyleAttributeArray::applyObjectToCharRange(id, NSRange, TSKAddedToDocumentContext *, TSWPStorageTransaction *)"}];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"), 147, @"applyObjectToCharRange:: length should be greater than zero."}];
  }

  if ((v16 + v14 >= this->var2 || TSWPAttributeArray::charIndexForAttributeIndex(this, v16 + v14) != v17) && v17 != TSWPAttributeArray::characterCount(this))
  {
    if (v16 < 2)
    {
      v26 = v17;
      v27 = v19;
      TSWPAttributeArray::insertAttribute(this, &v26, v16 + v14, v25, a5);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    TSWPAttributeArray::replaceCharIndexForAttributeIndex(this, v17, v16 + v14 - 1, a5);
    --v16;
  }

  if (!v21)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (this->var2)
  {
    TSWPAttributeArray::replaceObjectForAttributeIndex(this, 0, 0, 0, a5);
  }

LABEL_33:
  if (v14 + 1 < v16 + v14)
  {
    (*(this->var0 + 7))(this);
  }

  v24 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v17);
  (*(this->var0 + 29))(this, v24, a5);
}

unint64_t TSWPStyleAttributeArray::willReplaceCharactersInRangeWithString(TSWPAttributeArray *this, _NSRange a2, uint64_t a3, uint64_t a4, uint64_t a5, TSWPStorageTransaction *a6)
{
  length = a2.length;
  location = a2.location;
  result = 1;
  LOBYTE(this[1].var0) = 1;
  if (this->var1 == 14)
  {
    result = TSWPStyleAttributeArray::deleteAttributesInRangeWithString(this, a2, a3, a4, a5, a6);
  }

  if (result)
  {
    if (length)
    {
      v21.location = location;
      v21.length = length;
      result = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(this, v21);
      if (v12)
      {
        v13 = result;
        v14 = v12;
        result = TSWPAttributeArray::charIndexForAttributeIndex(this, result);
        if (a4 && result == location)
        {
          if (v13)
          {
            v15 = *(this->var4 + 2 * v13 + 1);
            *&this[1].var1 = v15;
            if (!v15)
            {
              v15 = [MEMORY[0x277CBEB68] null];
              *&this[1].var1 = v15;
            }

            v16 = v15;
          }

          else
          {
            if (!--v14)
            {
              return result;
            }

            v13 = 1;
          }
        }

        v17 = v13 + 1;
        if (v13 + 1 >= this->var2 || (result = TSWPAttributeArray::charIndexForAttributeIndex(this, v13 + 1), result <= location + length))
        {
          v17 = v13;
        }

        else if (!--v14)
        {
          return result;
        }

        v18 = v14 + v17;
        if (v14 + v17 < this->var2)
        {
          result = TSWPAttributeArray::charIndexForAttributeIndex(this, v14 + v17);
          if (result > location + length)
          {
            if (!--v14)
            {
              return result;
            }

            v18 = v14 + v17;
          }
        }

        if (v18 != this->var2 || (result = TSWPAttributeArray::characterCount(this), location + length >= result) || (--v14, v14))
        {
          LOBYTE(this[1].var0) = 0;
          (*(this->var0 + 7))(this, v17, v14, a6);
          v19 = *(this->var0 + 29);

          return v19(this, v17, a6);
        }
      }
    }
  }

  return result;
}

uint64_t TSWPStyleAttributeArray::deleteAttributesInRangeWithString(uint64_t a1, _NSRange a2, uint64_t a3, uint64_t a4, uint64_t a5, TSWPStorageTransaction *a6)
{
  if (!(a2.length | a4))
  {
    goto LABEL_89;
  }

  length = a2.length;
  location = a2.location;
  v10 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(a1, a2);
  v11 = v10;
  v13 = v12;
  if (v10 && v10 < *(a1 + 16) && TSWPAttributeArray::charIndexForAttributeIndex(a1, v10) > location)
  {
    --v11;
    ++v13;
    goto LABEL_12;
  }

  v14 = *(a1 + 16);
  if (!v14 || v11 != v14 || v13)
  {
LABEL_12:
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_89:
    v18 = 1;
    return v18 & 1;
  }

  --v11;
  if (!*(*(a1 + 32) + 16 * v11 + 8))
  {
    goto LABEL_89;
  }

  v56.location = TSWPAttributeArray::rangeForAttributeIndex(a1, v11);
  v58.location = location;
  v58.length = length;
  if (!NSIntersectionRange(v56, v58).length)
  {
    if (length)
    {
      goto LABEL_89;
    }

    v49 = TSWPAttributeArray::rangeForAttributeIndex(a1, v11);
    v18 = 1;
    if (location < v49 || location - v49 >= v50)
    {
      return v18 & 1;
    }
  }

  v13 = 1;
LABEL_13:
  v15 = v13 + v11;
  if (!a4)
  {
    if (v11 >= v15)
    {
      goto LABEL_89;
    }

    v52 = location;
    v53 = v13 + v11;
    v23 = 0;
    v16 = 0;
    v54 = location + length;
    v24 = (16 * v11) | 8;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = v16;
      v27 = v11 + v23;
      v28 = TSWPAttributeArray::rangeForAttributeIndex(a1, v11 + v23);
      if (v28 >= location)
      {
        break;
      }

      if (v27 + 1 != *(a1 + 16) && TSWPAttributeArray::charIndexForAttributeIndex(a1, v27 + 1) <= location)
      {
        v30 = [MEMORY[0x277D6C290] currentHandler];
        v31 = v25;
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPStyleAttributeArray::deleteAttributesInRangeWithString(NSRange, NSString *, NSUInteger, markerArray &, TSWPStorageTransaction *)"}];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"];
        v34 = v32;
        v25 = v31;
        location = v52;
        [v30 handleFailureInFunction:v34 file:v33 lineNumber:516 description:@"Bad attributeRange."];
      }

      if (v27)
      {
        v35 = *(a1 + 32);
        v16 = v26;
        if (!*(v35 + v24 - 16))
        {
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      v16 = v26;
      if (*(*(a1 + 32) + 8))
      {
        v43 = a1;
        v44 = 0;
LABEL_78:
        TSWPAttributeArray::replaceObjectForAttributeIndex(v43, 0, v44, 0, a6);
      }

LABEL_85:
      ++v23;
      v24 += 16;
      if (v13 == v23)
      {
        v19 = v25;
        v18 = 0;
        if (v16)
        {
          goto LABEL_87;
        }

        return v18 & 1;
      }
    }

    if (v28 != location)
    {
      if (v28 >= v54)
      {
        if (v28 > v54 && v27 && !*(*(a1 + 32) + v24))
        {
          v45 = v25;
          if (TSWPAttributeArray::charIndexForAttributeIndex(a1, v11 + v23 - 1) < v54)
          {
            if (v25 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = 1;
            }

            else
            {
              ++v16;
            }

            if (v25 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v45 = v11 + v23;
            }

            if (v45 > v27 || v11 + v23 - v45 >= v16)
            {
              v46 = [MEMORY[0x277D6C290] currentHandler];
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPStyleAttributeArray::deleteAttributesInRangeWithString(NSRange, NSString *, NSUInteger, markerArray &, TSWPStorageTransaction *)"}];
              [v46 handleFailureInFunction:v47 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"), 619, @"Deletion range should have been sequential and therefore incrementing it above should include this iteration(i)"}];
            }
          }

          v25 = v45;
        }

        goto LABEL_85;
      }

LABEL_53:
      v42 = v25 == 0x7FFFFFFFFFFFFFFFLL;
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 1;
      }

      else
      {
        v16 = v26 + 1;
      }

LABEL_83:
      if (v42)
      {
        v25 = v11 + v23;
      }

      goto LABEL_85;
    }

    v36 = v29;
    if (v27 != *(a1 + 16) - 1 && TSWPAttributeArray::charIndexForAttributeIndex(a1, v11 + v23 + 1) <= location)
    {
      v51 = [MEMORY[0x277D6C290] currentHandler];
      v37 = v25;
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPStyleAttributeArray::deleteAttributesInRangeWithString(NSRange, NSString *, NSUInteger, markerArray &, TSWPStorageTransaction *)"}];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"];
      v40 = v38;
      v25 = v37;
      location = v52;
      [v51 handleFailureInFunction:v40 file:v39 lineNumber:549 description:@"Bad attributeRange."];
    }

    if (v53 < *(a1 + 16) && TSWPAttributeArray::charIndexForAttributeIndex(a1, v53) == v54)
    {
      goto LABEL_53;
    }

    if (!v27)
    {
      if (*(*(a1 + 32) + 8))
      {
        TSWPAttributeArray::replaceObjectForAttributeIndex(a1, 0, 0, 0, a6);
      }

      v16 = v26;
      goto LABEL_85;
    }

    if (v27 == *(a1 + 16) - 1)
    {
      v41 = [*(a1 + 40) length];
      v35 = *(a1 + 32);
      if (location + v36 >= v41)
      {
        v16 = v26;
        if (*(v35 + v24))
        {
LABEL_80:
          v42 = v25 == 0x7FFFFFFFFFFFFFFFLL;
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = 1;
          }

          else
          {
            ++v16;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v16 = v26;
      }
    }

    else
    {
      v35 = *(a1 + 32);
      v16 = v26;
    }

    if (!*(v35 + v24 - 16))
    {
      goto LABEL_80;
    }

LABEL_76:
    if (*(v35 + v24))
    {
      v43 = a1;
      v44 = v11 + v23;
      goto LABEL_78;
    }

    goto LABEL_85;
  }

  if (v11 >= v15)
  {
    goto LABEL_89;
  }

  v16 = 0;
  v17 = (16 * v11) | 8;
  v18 = 1;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v20 = TSWPAttributeArray::rangeForAttributeIndex(a1, v11);
    v22.location = v20;
    v22.length = v21;
    if (length)
    {
      v57.location = location;
      v57.length = length;
      if (!NSIntersectionRange(v57, v22).length)
      {
        goto LABEL_30;
      }
    }

    else if (location < v20 || location - v20 >= v21)
    {
      goto LABEL_30;
    }

    if (v11)
    {
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0;
        if (*(*(a1 + 32) + v17))
        {
          v16 = 1;
          v19 = v11;
        }

        else
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v18 = 0;
        ++v16;
      }
    }

    else
    {
      if (*(*(a1 + 32) + 8))
      {
        TSWPAttributeArray::replaceObjectForAttributeIndex(a1, 0, 0, 0, a6);
      }

      v18 = 0;
    }

LABEL_30:
    ++v11;
    v17 += 16;
    --v13;
  }

  while (v13);
  if (!v16)
  {
    return v18 & 1;
  }

LABEL_87:
  *(a1 + 56) = 0;
  (*(*a1 + 56))(a1, v19, v16, a6);
  (*(*a1 + 232))(a1, v19, a6);
  return v18 & 1;
}

void TSWPStyleAttributeArray::didReplaceCharactersInRangeWithString(TSWPAttributeArray *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSWPStorageTransaction *a7)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = a5 - a3;
    if (a5 != a3)
    {
      if (this->var2)
      {
        if (LOBYTE(this[1].var0))
        {
          v13 = 5;
        }

        else
        {
          v13 = 4;
        }

        v14 = TSWPAttributeArray::calculateAttributeIndexForCharacterIndex(this, a2);
        if (v14)
        {
          var2 = this->var2;
        }

        else
        {
          v16 = TSWPAttributeArray::charIndexForAttributeIndex(this, 0);
          var2 = this->var2;
          if (!v16)
          {
            if (!var2)
            {
              v17 = a3 != 0;
              v18 = a5 != 0;
              v13 = 4;
              v14 = 1;
LABEL_15:
              v19 = this->var2;
              if (!v18 || !v17 || v14 >= v19)
              {
LABEL_20:
                if (v14 < v19 && v12 + TSWPAttributeArray::charIndexForAttributeIndex(this, v14) < a2)
                {
                  goto LABEL_22;
                }

                if (v14)
                {
                  v20 = this->var1 == 17;
                }

                else
                {
                  v20 = 0;
                }

                if (!v20 || !v18)
                {
                  goto LABEL_44;
                }

                v22 = this->var2;
                if (v14 < v22)
                {
                  if (a2 == TSWPAttributeArray::charIndexForAttributeIndex(this, v14))
                  {
                    v23 = v14 - 1;
LABEL_41:
                    if (!*(this->var4 + 2 * v23 + 1))
                    {
                      goto LABEL_44;
                    }

                    if (v14 == this->var2)
                    {
                      v33 = a2;
                      v34 = 0;
                      TSWPAttributeArray::insertAttribute(this, &v33, v14, 0, a7);
                    }

LABEL_23:
                    ++v14;
                    v13 = 4;
LABEL_44:
                    TSWPAttributeArray::adjustCharIndexStartingAtAttributeIndex(this, v13, v14, a5 - a3);
                    goto LABEL_45;
                  }

                  v22 = this->var2;
                }

                if (v14 != v22)
                {
                  goto LABEL_44;
                }

                v23 = v14 - 1;
                v24 = TSWPAttributeArray::rangeForAttributeIndex(this, v14 - 1);
                if (a2 + a5 + a3 != v24 + v25)
                {
                  goto LABEL_44;
                }

                goto LABEL_41;
              }

              if (TSWPAttributeArray::charIndexForAttributeIndex(this, v14) < a2 + a3)
              {
LABEL_22:
                TSWPAttributeArray::replaceCharIndexForAttributeIndex(this, a2 + a5, v14, a7);
                goto LABEL_23;
              }

LABEL_19:
              v19 = this->var2;
              goto LABEL_20;
            }

            v13 = 4;
            v14 = 1;
            if (*(this->var4 + 1) && !a3)
            {
              v33 = 0;
              v34 = 0;
              TSWPAttributeArray::insertAttribute(this, &v33, 0, 0, a7);
              v18 = a5 != 0;
              v14 = 1;
              goto LABEL_19;
            }
          }
        }

        v17 = a3 != 0;
        v18 = a5 != 0;
        if (a5 && v14 < var2 && a3)
        {
          if (TSWPAttributeArray::charIndexForAttributeIndex(this, v14) == a2)
          {
            goto LABEL_23;
          }

          v18 = 1;
          v17 = 1;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_45:
  v26 = *&this[1].var1;
  if (v26)
  {
    if (a3)
    {
      if (v26 == [MEMORY[0x277CBEB68] null])
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      v28 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, a2);
      if (v28 == 0x7FFFFFFFFFFFFFFFLL || *(this->var4 + 2 * v28 + 1) != v27 || (v29 = TSWPAttributeArray::rangeForAttributeIndex(this, v28), v29 > a2) || v29 + v30 < a2 + a5)
      {
        (*(this->var0 + 8))(this, v27, a2, a5, 0, a7);
      }
    }

    else
    {
      v31 = [MEMORY[0x277D6C290] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPStyleAttributeArray::didReplaceCharactersInRangeWithString(NSRange, NSString *, NSUInteger, markerArray &, TSWPStorageTransaction *, TSWPStyleInsertionBehavior)"}];
      [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStyleAttributeArray.mm"), 406, @"TSWPStyleAttributeArray::didReplaceCharactersInRangeWithString: we should have a range selection."}];
    }

    *&this[1].var1 = 0;
  }
}

void TSWPStyleAttributeArray::adoptStylesheetWithMapper(TSWPAttributeArray *a1, uint64_t a2, void *a3)
{
  var2 = a1->var2;
  if (var2)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      if (*(a1->var4 + v7))
      {
        TSWPAttributeArray::replaceObjectForAttributeIndex(a1, [a3 mappedStyleForStyle:?], v6, 0, 0);
        var2 = a1->var2;
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < var2);
  }
}

void *TSWPStyleAttributeArray::compressLeadingNull(void *this, TSWPStorageTransaction *a2)
{
  if (this[2] == 1 && !*(this[4] + 8))
  {
    return (*(*this + 56))(this, 0, 1, a2);
  }

  return this;
}

void TSWPStringAttributeArray::~TSWPStringAttributeArray(TSWPAttributeArray *this)
{
  TSWPStyleAttributeArray::~TSWPStyleAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

void TSWPLineBalancingRestoreLayoutInfo::TSWPLineBalancingRestoreLayoutInfo(TSWPLineBalancingRestoreLayoutInfo *this)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((this + 24));
  bzero(this, 0x2B0uLL);
  *(this + 43) = 0u;
}

{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((this + 24));
  bzero(this, 0x2B0uLL);
  *(this + 43) = 0u;
}

id *TSWPLineBalancingRestoreLayoutInfo::prepareForRestore(id *this, id *a2, int a3, int a4, double a5)
{
  result = TSWPLayoutState::operator=(this, a2);
  *(this + 172) = a3;
  *(this + 173) = a4;
  *(this + 87) = a5;
  return result;
}

double TSWPLineBalancingRestoreLayoutInfo::restoreLocalState(uint64_t a1, TSWPLineFragmentArray **a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  v10 = TSWPLineFragmentArray::count(*a2);
  v12.location = *(a1 + 688);
  v12.length = (v10 - LODWORD(v12.location));
  TSWPLineFragmentArray::removeObjectsInRange(*a2, v12);
  *a3 = *(a1 + 688);
  *a4 = *(a1 + 692);
  result = *(a1 + 696);
  *a5 = result;
  return result;
}

void TSWPLineBalancingLayoutState::TSWPLineBalancingLayoutState(TSWPLineBalancingLayoutState *this)
{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((this + 24));
  bzero(this, 0x2B0uLL);
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 92) = 0;
  *(this + 744) = 0u;
  *(this + 792) = 0;
}

{
  TSWPParagraphEnumerator::TSWPParagraphEnumerator((this + 24));
  bzero(this, 0x2B0uLL);
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 92) = 0;
  *(this + 744) = 0u;
  *(this + 792) = 0;
}

void TSWPLineBalancingLayoutState::~TSWPLineBalancingLayoutState(TSWPLineBalancingLayoutState *this)
{
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  TSWPLayoutState::~TSWPLayoutState(this);
}

id *TSWPLineBalancingLayoutState::prepareForRestore(id *this, id *a2, char a3, double a4, int a5, int a6, double a7)
{
  v13 = this;
  if (*(this + 182))
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPLineBalancingLayoutState::prepareForRestore(const TSWPLayoutState &, const BOOL, const CGFloat, const uint, const uint, const CGFloat)"}];
    this = [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineBalancingLayoutState.mm"), 64, @"Prepare for rendering line balancing in wrong state: %d", *(v13 + 728)}];
  }

  *(v13 + 704) = a4;
  *(v13 + 768) = a4;
  *(v13 + 792) = 0;
  if ((a3 & 1) != 0 || (this = [a2[12] intValueForProperty:51], this < 1))
  {
    *(v13 + 728) = 0;
  }

  else
  {
    *(v13 + 732) = a5;
    *(v13 + 728) = 1;
    this = TSWPLayoutState::operator=(v13, a2);
    *(v13 + 688) = a5;
    *(v13 + 692) = a6;
    *(v13 + 696) = a7;
  }

  return this;
}

void TSWPLineBalancingLayoutState::restoreLocalState(uint64_t a1, TSWPLineFragmentArray **a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  TSWPLineBalancingRestoreLayoutInfo::restoreLocalState(a1, a2, a3, a4, a5);
  *(a1 + 732) = *a3;
  *(a1 + 744) = *(a1 + 736);
}

void TSWPLineBalancingLayoutState::updateWithNewLineAdded(uint64_t a1, TSWPLineFragmentArray **a2)
{
  if (*(a1 + 728))
  {
    v4 = TSWPLineFragmentArray::count(*a2);
    v5 = *(a1 + 732);
    if (v4 == v5)
    {
      v19 = 0.0;
      std::vector<double>::push_back[abi:nn200100]((a1 + 736), &v19);
    }

    else
    {
      v6 = TSWPLineFragmentArray::count(*a2);
      v7 = 0.0;
      if (v6 > v5)
      {
        v8 = 0;
        v9 = 0.0;
        v10 = 0.0;
        do
        {
          v11 = TSWPLineFragmentArray::objectAtIndex(*a2, v5);
          v12 = *(v11 + 192);
          v13 = *(v11 + 200);
          while (v12 != v13)
          {
            v14 = *(v12 + 8);
            v15 = *v12;
            v12 += 48;
            v16 = v14 + CTLineGetTypographicBounds(v15, 0, 0, 0);
            if (v14 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v14;
            }

            if (v9 >= v16)
            {
              v18 = v9;
            }

            else
            {
              v18 = v16;
            }

            if (v8)
            {
              v10 = v17;
            }

            else
            {
              v10 = v14;
            }

            if (v8)
            {
              v9 = v18;
            }

            else
            {
              v9 = v16;
            }

            v8 = 1;
          }

          v5 = (v5 + 1);
        }

        while (TSWPLineFragmentArray::count(*a2) > v5);
        v7 = v9 - v10;
      }

      v19 = v7;
      std::vector<double>::push_back[abi:nn200100]((a1 + 736), &v19);
      *(a1 + 732) = TSWPLineFragmentArray::count(*a2);
    }
  }
}

double TSWPLineBalancingLayoutState::pMaxLineWidth(TSWPLineBalancingLayoutState *this)
{
  v1 = *(this + 93);
  v2 = *(this + 92);
  if (v2 == v1)
  {
    return 0.0;
  }

  v3 = v2 + 1;
  if (v2 + 1 != v1)
  {
    v4 = *v2;
    v5 = v2 + 1;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v4 < v6)
      {
        v4 = v7;
        v2 = v3;
      }

      v3 = v5;
    }

    while (v5 != v1);
  }

  return *v2;
}

double TSWPLineBalancingLayoutState::pComputeScore(TSWPLineBalancingLayoutState *this)
{
  v1 = *(this + 92);
  result = 0.0;
  while (v1 != *(this + 93))
  {
    v3 = *v1++;
    result = result + v3 * v3;
  }

  return result;
}

uint64_t TSWPLineBalancingLayoutState::forceCompletion(uint64_t this)
{
  v1 = *(this + 728);
  if (v1 == 2)
  {
    v12 = 3;
    v13 = 776;
LABEL_15:
    *(this + 768) = *(this + v13);
    *(this + 728) = v12;
    goto LABEL_16;
  }

  if (v1 == 1)
  {
    v2 = *(this + 736);
    v3 = *(this + 744);
    if (v2 == v3)
    {
      *(this + 776) = 0;
      v10 = 0.0;
    }

    else
    {
      v4 = v2 + 1;
      v5 = *(this + 736);
      if (v2 + 1 != v3)
      {
        v6 = *v2;
        v5 = *(this + 736);
        v7 = v2 + 1;
        do
        {
          v8 = *v7++;
          v9 = v8;
          if (v6 < v8)
          {
            v6 = v9;
            v5 = v4;
          }

          v4 = v7;
        }

        while (v7 != v3);
      }

      *(this + 776) = *v5;
      v10 = 0.0;
      do
      {
        v11 = *v2++;
        v10 = v10 + v11 * v11;
      }

      while (v2 != v3);
    }

    v12 = 0;
    *(this + 784) = v10;
    v13 = 704;
    goto LABEL_15;
  }

LABEL_16:
  *(this + 792) = 1;
  return this;
}

double TSWPLineBalancingLayoutState::pUpdateWithEndOfParagraphOrColumn(TSWPLineBalancingLayoutState *this, uint64_t a2, int a3, double result)
{
  v5 = *(this + 182);
  switch(v5)
  {
    case 3:
      if ((*(this + 792) & 1) == 0 && *(this + 90) != a2)
      {
        v31 = [MEMORY[0x277D6C290] currentHandler];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPLineBalancingLayoutState::pUpdateWithEndOfParagraphOrColumn(const TSWPCharIndex, BOOL)"}];
        [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineBalancingLayoutState.mm"), 224, @"Unexpected char index in final phase when layouting line balancing."}];
      }

      *(this + 182) = 0;
      result = *(this + 88);
      goto LABEL_29;
    case 2:
      v19 = *(this + 93);
      v20 = *(this + 92);
      if (*(this + 89) != v19 - v20 || *(this + 90) != a2)
      {
        result = *(this + 97);
        *(this + 96) = result;
        v33 = 3;
LABEL_37:
        *(this + 182) = v33;
        return result;
      }

      if (v20 == v19)
      {
        v27 = *(this + 96);
        v28 = 0.0;
        if (v27 >= 0.0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v21 = v20 + 1;
        v22 = *(this + 92);
        if (v20 + 1 != v19)
        {
          v23 = *v20;
          v22 = *(this + 92);
          v24 = v20 + 1;
          do
          {
            v25 = *v24++;
            v26 = v25;
            if (v23 < v25)
            {
              v23 = v26;
              v22 = v21;
            }

            v21 = v24;
          }

          while (v24 != v19);
        }

        v27 = *(this + 96);
        if (*v22 <= v27)
        {
          v28 = 0.0;
          v29 = *(this + 92);
          do
          {
            v30 = *v29++;
            v28 = v28 + v30 * v30;
          }

          while (v29 != v19);
LABEL_42:
          if (v28 < *(this + 98))
          {
            *(this + 97) = v27;
            *(this + 98) = v28;
          }

          goto LABEL_44;
        }
      }

      *(this + 95) = *(this + 95) + 1.0;
LABEL_44:
      result = 0.0;
      v35 = 0.0;
      if (v20 != v19)
      {
        v36 = v20 + 1;
        if (v20 + 1 != v19)
        {
          v37 = *v20;
          v38 = v20 + 1;
          do
          {
            v39 = *v38++;
            v40 = v39;
            if (v37 < v39)
            {
              v37 = v40;
              v20 = v36;
            }

            v36 = v38;
          }

          while (v38 != v19);
        }

        v35 = *v20;
      }

      v41 = v35 - *(this + 95);
      if (v41 >= 0.0)
      {
        result = v41;
      }

LABEL_29:
      *(this + 96) = result;
      return result;
    case 1:
      *(this + 95) = 0x3FF0000000000000;
      v6 = *(this + 92);
      v7 = *(this + 93);
      if (v6 == v7)
      {
        *(this + 97) = 0;
        v15 = 0.0;
        v18 = -1.0;
      }

      else
      {
        v8 = v6 + 1;
        v9 = *(this + 92);
        if (v6 + 1 != v7)
        {
          v10 = *v6;
          v9 = *(this + 92);
          v11 = v6 + 1;
          do
          {
            v12 = *v11++;
            v13 = v12;
            if (v10 < v12)
            {
              v10 = v13;
              v9 = v8;
            }

            v8 = v11;
          }

          while (v11 != v7);
        }

        v14 = *v9;
        *(this + 97) = *v9;
        v15 = 0.0;
        v16 = v6;
        do
        {
          v17 = *v16++;
          v15 = v15 + v17 * v17;
        }

        while (v16 != v7);
        v18 = v14 + -1.0;
      }

      *(this + 98) = v15;
      v34 = v7 - v6;
      *(this + 89) = v34 >> 3;
      *(this + 90) = a2;
      if (v34 != 8 && !a3)
      {
        result = 0.0;
        if (v18 >= 0.0)
        {
          result = v18;
        }

        *(this + 96) = result;
        v33 = 2;
        goto LABEL_37;
      }

      result = *(this + 88);
      *(this + 96) = result;
      *(this + 182) = 0;
      break;
  }

  return result;
}

BOOL FloatArraysEqual(double *a1, double *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = a1[v3];
    v6 = a2[v3];
    v7 = v5 == v6;
    v3 = v4++;
  }

  while (v5 == v6 && v3 < a3);
  return v7;
}

uint64_t TSWPLineFragmentArray::logicalLineCount(TSWPLineFragmentArray *this)
{
  v1 = *(this + 1);
  if (v1 == *this)
  {
    return 0;
  }

  else
  {
    return *(*(v1 - 16) + 552) + 1;
  }
}

uint64_t TSWPLineFragmentArray::lineFragmentRangeForLogicalLineIndex(TSWPLineFragmentArray *this, unint64_t a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this == v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  result = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = *(*v2 + 552);
    if (v7 == a2)
    {
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = v5;
      }

      ++v4;
    }

    else if (v7 > a2)
    {
      return result;
    }

    ++v5;
    v2 += 16;
  }

  while (v2 != v3);
  return result;
}

double TSWPLineFragmentArray::topOfCapForForLineFragmentRange(TSWPLineFragmentArray *this, _NSRange a2)
{
  if (a2.location == 0x7FFFFFFFFFFFFFFFLL || a2.length == 0)
  {
    return NAN;
  }

  length = a2.length;
  v5 = 16 * a2.location;
  v6 = NAN;
  do
  {
    TSWPLineFragment::topOfCap(*(*this + v5));
    v6 = fmin(v6, v7);
    v5 += 16;
    --length;
  }

  while (length);
  return v6;
}

double TSWPLineFragmentArray::topOfCapForLogicalLineIndex(TSWPLineFragmentArray *this, unint64_t a2)
{
  v3 = TSWPLineFragmentArray::lineFragmentRangeForLogicalLineIndex(this, a2);
  v5 = v4;
  v6.location = v3;
  v6.length = v5;

  return TSWPLineFragmentArray::topOfCapForForLineFragmentRange(this, v6);
}

uint64_t TSWPLineFragmentArray::objectAtIndex(TSWPLineFragmentArray *this, unint64_t a2)
{
  if (a2 >= (*(this + 1) - *this) >> 4)
  {
    return 0;
  }

  else
  {
    return *(*this + 16 * a2);
  }
}

TSWPLineFragmentArray *TSWPLineFragmentArray::disableClippingForObjectAtIndex(TSWPLineFragmentArray *this, unint64_t a2)
{
  if (a2 < (*(this + 1) - *this) >> 4)
  {
    *(*(*this + 16 * a2) + 24) |= 0x1000000u;
  }

  return this;
}

uint64_t TSWPLineFragmentArray::lastObject(TSWPLineFragmentArray *this)
{
  v1 = *(this + 1);
  if (v1 == *this)
  {
    return 0;
  }

  else
  {
    return *(v1 - 16);
  }
}

uint64_t TSWPLineFragmentArray::firstObject(TSWPLineFragmentArray *this)
{
  if (*(this + 1) == *this)
  {
    return 0;
  }

  else
  {
    return **this;
  }
}

void **TSWPLineFragmentArray::appendObject(void **result, __int128 *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *a2;
  *(*a2 + 552) = *(result + 12);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[1];
  v5 = result[2];
  if (v6 >= v5)
  {
    v8 = *result;
    v9 = v6 - *result;
    v10 = (v9 >> 4) + 1;
    if (v10 >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    v15[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSWPLineFragment>>>(result, v10);
    }

    v12 = (16 * (v9 >> 4));
    *v12 = v3;
    v7 = v12 + 1;
    memcpy(0, v8, v9);
    v13 = *v2;
    *v2 = 0;
    v2[1] = v7;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>>::~__split_buffer(v15);
  }

  else
  {
    *v6 = v4;
    *(v6 + 1) = *(&v3 + 1);
    v7 = v6 + 16;
  }

  v2[1] = v7;
  return result;
}

void sub_26C97885C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPLineFragmentArray::removeLastObject(TSWPLineFragmentArray *this)
{
  v2 = *(this + 1);
  v3 = *(v2 - 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 1) = v2 - 16;
  if (*this == v2 - 16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(v2 - 32) + 552);
  }

  *(this + 12) = v4;
}

uint64_t TSWPLineFragmentArray::removeObjectsInRange(TSWPLineFragmentArray *this, _NSRange a2)
{
  result = std::vector<std::shared_ptr<TSWPLineFragment>>::erase(this, *this + 16 * a2.location, (*this + 16 * (a2.location + a2.length)));
  *(this + 12) = 0;
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v9 = *v4;
      v4 += 2;
      v8 = v9;
      v10 = *(v9 + 552);
      if (v7 != v10)
      {
        ++v6;
      }

      *(v8 + 552) = v6 - 1;
      v7 = v10;
    }

    while (v4 != v5);
    *(this + 12) = v6;
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<TSWPLineFragment>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSWPLineFragment> *,std::shared_ptr<TSWPLineFragment> *,std::shared_ptr<TSWPLineFragment> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__n64 TSWPLineFragmentArray::boundsRect(TSWPLineFragmentArray *this)
{
  result.n64_u64[0] = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v3 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v5 = *this;
  v6 = *(this + 1);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    *result.n64_u64 = CGRectUnion(*result.n64_u64, *(v7 + 48));
  }

  return result;
}

double TSWPLineFragmentArray::erasableBounds(TSWPLineFragmentArray *this, char a2, TSWPStorage *a3)
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v8 = *this;
  v7 = *(this + 1);
  if (v7 != *this)
  {
    if ((a2 & 2) != 0)
    {
      v11 = *(v7 - 2);
      v7 -= 2;
      v36.origin.x = v11[10];
      v36.origin.y = v11[11];
      v36.size.width = v11[12];
      v36.size.height = v11[13] - v11[20];
      v29 = CGRectUnion(*MEMORY[0x277CBF398], v36);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v8 = *this;
    }

    while (v7 != v8)
    {
      v12 = *(v7 - 2);
      v7 -= 2;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectUnion(v30, *(v12 + 80));
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      v13 = *v7;
      if ((*(*v7 + 27) & 4) != 0)
      {
        v14 = *(v13 + 1);
        if (v14)
        {
          v15 = *v13;
          v27.location = *v13;
          v27.length = 1;
          v37.origin.x = TSWPLineFragment::glyphRectForLineRange(v13, v27, a3, 1);
          v37.origin.y = v16;
          v37.size.width = v17;
          v37.size.height = v18;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v37);
          v19 = v33.origin.x;
          v20 = v33.origin.y;
          v21 = v33.size.width;
          v22 = v33.size.height;
          v28.location = v14 + v15 - 1;
          v28.length = 1;
          v38.origin.x = TSWPLineFragment::glyphRectForLineRange(*v7, v28, a3, 1);
          v38.origin.y = v23;
          v38.size.width = v24;
          v38.size.height = v25;
          v34.origin.x = v19;
          v34.origin.y = v20;
          v34.size.width = v21;
          v34.size.height = v22;
          v35 = CGRectUnion(v34, v38);
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
        }
      }
    }
  }

  return x;
}