TSCEASTColonElement *sub_221464170(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v94 = objc_msgSend_mergeInfo(*(a1 + 200), a2, a3, a4, a5);
  v11 = objc_msgSend_mergeRegion(v94, v7, v8, v9, v10);
  v109._flags = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  TSCEASTColonElement::rangeReference(v5, a1, &v109, &coordinate, &v107);
  v106 = v107;
  if (!TSCERangeCoordinate::isValid(&v106))
  {
    goto LABEL_23;
  }

  v16 = objc_msgSend_tableUID(v11, v12, v13, v14, v15);
  if (v108 != __PAIR128__(v17, v16))
  {
    goto LABEL_23;
  }

  row = v106._topLeft.row;
  column = v106._topLeft.column;
  v23 = v106._bottomRight.row;
  v24 = v106._bottomRight.column;
  v25 = objc_msgSend_columnUids(v11, v17, v18, v19, v20);
  if (objc_msgSend_containsIndex_(v25, v26, column, v27, v28))
  {
    v33 = objc_msgSend_rowUids(v11, v29, v30, v31, v32);
    v93 = objc_msgSend_containsIndex_(v33, v34, row, v35, v36);
  }

  else
  {
    v93 = 0;
  }

  v41 = objc_msgSend_columnUids(v11, v37, v38, v39, v40);
  if ((objc_msgSend_containsIndex_(v41, v42, v24, v43, v44) & 1) == 0)
  {

    goto LABEL_16;
  }

  v49 = objc_msgSend_rowUids(v11, v45, v46, v47, v48);
  v53 = objc_msgSend_containsIndex_(v49, v50, v23, v51, v52);

  if ((v93 & v53) != 1)
  {
LABEL_16:
    v86 = TSCEASTElementWithChildren::child(v5, 0);
    coordinate = (*(*v86 + 40))(v86, a1);
    sub_2210CDD80((a1 + 208), &coordinate);
    v87 = TSCEASTElementWithChildren::child(v5, 1u);
    coordinate = (*(*v87 + 40))(v87, a1);
    sub_2210CDD80((a1 + 208), &coordinate);
    goto LABEL_23;
  }

  coordinate = 0;
  v104 = 0;
  v105 = 0;
  __p = 0;
  v101 = 0;
  for (i = 0; v24 >= column; LODWORD(column) = column + 1)
  {
    v58 = objc_msgSend_columnUids(v11, v54, v55, v56, v57);
    *&v98 = objc_msgSend_uidForIndex_(v58, v59, column, v60, v61);
    *(&v98 + 1) = v62;
    sub_221083454(&coordinate, &v98);
  }

  while (row <= v23)
  {
    v63 = objc_msgSend_rowUids(v11, v54, v55, v56, v57);
    *&v98 = objc_msgSend_uidForIndex_(v63, v64, row, v65, v66);
    *(&v98 + 1) = v67;
    sub_221083454(&__p, &v98);

    row = (row + 1);
  }

  v68 = [TSCEUndoTract alloc];
  v70 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v68, v69, &coordinate, &__p, 1);
  v71 = TSCEASTElement::mutableUndoTractList(v5, a1);
  objc_msgSend_setIsRangeRef_(v70, v72, 1, v73, v74);
  objc_msgSend_appendUidTract_(v71, v75, v70, v76, v77);
  v78 = *(a1 + 200);
  v79 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v80 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v97.coordinate = v79;
  v97._tableUID = v80->var0.var0._tableUID;
  if (v78)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(v78, v81, &v97, v83, v84);
    v85 = v98;
  }

  else
  {
    v85 = 0;
    v98 = 0uLL;
    v99 = 0;
  }

  v96 = v85;
  v97.coordinate = objc_msgSend_topLeftCellCoord(v11, v81, v82, v83, v84);
  v97._tableUID = v108;
  objc_msgSend_setPreserveFlags_(v71, v88, v109._flags, v89, v90);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v91 = TSCEASTIteratorBase::createReference(a1, &v97, &v109, &tableUID, &v96, v71);
  (*(*a1 + 24))(a1, v5);

  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  if (coordinate)
  {
    v104 = coordinate;
    operator delete(*&coordinate);
  }

  v5 = v91;
LABEL_23:

  return v5;
}

void sub_22146455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_221464628(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v152 = objc_msgSend_mergeInfo(*(a1 + 200), a2, a3, a4, a5);
  v11 = objc_msgSend_mergeRegion(v152, v7, v8, v9, v10);
  v15 = TSCEASTColonTractElement::relativeTractRef(v5, a1, v12, v13, v14);
  tableUID._lower = objc_msgSend_tableUID(v15, v16, v17, v18, v19);
  tableUID._upper = v20;
  if (!(tableUID._lower | v20))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v21 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v21->var0.var0._tableUID._lower;
  upper = v21->var0.var0._tableUID._upper;
  if (lower == objc_msgSend_tableUID(v11, v24, v25, v26, v27) && upper == v28)
  {
    v40 = 1;
  }

  else
  {
    v33 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v34 = v33->var0.var0._tableUID._lower;
    v35 = v33->var0.var0._tableUID._upper;
    v40 = v34 == objc_msgSend_condStyleOwnerUID(v11, v36, v37, v38, v39) && v35 == v28;
  }

  v43 = tableUID._lower == objc_msgSend_tableUID(v11, v28, v29, v30, v31) && tableUID._upper == v41;
  v44 = *(a1 + 200);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v46 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  *v175 = coordinate;
  *&v175[8] = v46->var0.var0._tableUID;
  if (v44)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(*&v44, v47, v175, v48, v49);
    v44 = v181;
  }

  else
  {
    v181 = 0;
    v182 = 0;
    v183 = 0;
  }

  v180 = v44;
  if (v40)
  {
    v50 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    if (v50.row != v44.row || ((*&v44 ^ *&v50) & 0x101FFFF00000000) != 0)
    {
      v168 = 0;
      v51 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v168 = (v51->var0.var0.coordinate.column - v44.column) | ((v51->var0.var0.coordinate.row - v44.row) << 32);
      objc_msgSend_adjustRelativeIndexesBy_(v15, v52, &v168, v53, v54);
      v55 = TSCEASTElement::mutableUndoTractList(v5, a1);
      *v175 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
      v56 = TSCEASTIteratorBase::undoTractForCellCoord(a1, &tableUID, v175, 1);
      v61 = objc_msgSend_preserveFlags(v15, v57, v58, v59, v60);
      objc_msgSend_setPreserveFlags_(v55, v62, v61, v63, v64);
      objc_msgSend_appendUidTract_(v55, v65, v56, v66, v67);
      *v175 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      TSCEASTIteratorBase::createColonTractRef(a1, v15, v55, v175);
    }
  }

  v68 = v5;
  if (v43)
  {
    *v175 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v72 = objc_msgSend_absoluteCellTractRefForHostCell_(v15, v69, v175, v70, v71);
    v77 = objc_msgSend_topLeft(v72, v73, v74, v75, v76);
    v82 = objc_msgSend_bottomRight(v72, v78, v79, v80, v81);
    v87 = objc_msgSend_columnUids(v11, v83, v84, v85, v86);
    if (objc_msgSend_containsIndex_(v87, v88, WORD2(v77), v89, v90))
    {
      v95 = objc_msgSend_rowUids(v11, v91, v92, v93, v94);
      v99 = objc_msgSend_containsIndex_(v95, v96, v77, v97, v98);
    }

    else
    {
      v99 = 0;
    }

    v104 = objc_msgSend_columnUids(v11, v100, v101, v102, v103);
    if (objc_msgSend_containsIndex_(v104, v105, WORD2(v82), v106, v107))
    {
      v112 = objc_msgSend_rowUids(v11, v108, v109, v110, v111);
      v116 = objc_msgSend_containsIndex_(v112, v113, v82, v114, v115);

      if ((v99 & v116) == 1)
      {
        *v175 = 0;
        *&v175[8] = v175;
        *&v175[16] = 0x4812000000;
        v176 = sub_221464D6C;
        v177 = sub_221464D90;
        v178 = 0u;
        v179 = 0u;
        v168 = 0;
        v169 = &v168;
        v170 = 0x4812000000;
        v171 = sub_221464D6C;
        v172 = sub_221464D90;
        v173 = 0u;
        v174 = 0u;
        objc_msgSend_columns(v72, v117, v118, v119, v120);
        v162 = MEMORY[0x277D85DD0];
        v163 = 3221225472;
        v164 = sub_221464DA8;
        v165 = &unk_278465858;
        v167 = v175;
        v166 = v11;
        TSUIndexSet::enumerateIndexesUsingBlock();
        objc_msgSend_rows(v72, v121, v122, v123, v124);
        v156 = MEMORY[0x277D85DD0];
        v157 = 3221225472;
        v158 = sub_221464E18;
        v159 = &unk_278465858;
        v161 = &v168;
        v160 = v166;
        TSUIndexSet::enumerateIndexesUsingBlock();
        v125 = [TSCEUndoTract alloc];
        v127 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v125, v126, *&v175[8] + 48, (v169 + 6), 1);
        v128 = TSCEASTElement::mutableUndoTractList(v5, a1);
        objc_msgSend_setIsRangeRef_(v127, v129, 1, v130, v131);
        objc_msgSend_appendUidTract_(v128, v132, v127, v133, v134);
        v155.coordinate = objc_msgSend_topLeftCellCoord(v160, v135, v136, v137, v138);
        v155._tableUID = tableUID;
        v143 = objc_msgSend_preserveFlags(v72, v139, v140, v141, v142);
        objc_msgSend_setPreserveFlags_(v128, v144, v143, v145, v146);
        v154._flags = objc_msgSend_preserveFlags(v72, v147, v148, v149, v150) & 3;
        v153 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v5 = TSCEASTIteratorBase::createReference(a1, &v155, &v154, &v153, &v180, v128);
        (*(*a1 + 24))(a1, v68);

        _Block_object_dispose(&v168, 8);
        if (*(&v173 + 1))
        {
          *&v174 = *(&v173 + 1);
          operator delete(*(&v173 + 1));
        }

        _Block_object_dispose(v175, 8);
        if (*(&v178 + 1))
        {
          *&v179 = *(&v178 + 1);
          operator delete(*(&v178 + 1));
        }
      }
    }

    else
    {
    }
  }

  return v5;
}

void sub_221464C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a39, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221464D6C(__n128 *a1, __n128 *a2)
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

void sub_221464D90(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221464DA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = objc_msgSend_columnUids(*(a1 + 32), a2, a3, a4, a5);
  *&v12 = objc_msgSend_uidForIndex_(v7, v8, v5, v9, v10);
  *(&v12 + 1) = v11;
  sub_221083454(v6 + 48, &v12);
}

void sub_221464E18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = objc_msgSend_rowUids(*(a1 + 32), a2, a3, a4, a5);
  *&v12 = objc_msgSend_uidForIndex_(v7, v8, a2, v9, v10);
  *(&v12 + 1) = v11;
  sub_221083454(v6 + 48, &v12);
}

TSCEASTRewriter *sub_221464E88(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A8518;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_221464F0C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5, v6);
  }

  else
  {
    v10 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v10->var0.var0._tableUID._lower;
    upper = v10->var0.var0._tableUID._upper;
  }

  v95._lower = lower;
  v95._upper = upper;
  v13 = objc_msgSend_mergeInfo(*(a1 + 200), upper, v7, v8, v9);
  v18 = objc_msgSend_mergeRegion(v13, v14, v15, v16, v17);
  if (v95._lower == objc_msgSend_tableUID(v18, v19, v20, v21, v22) && v95._upper == v23)
  {
    v25 = sub_221089E8C(a1);
    v29 = objc_msgSend_tableResolverForTableUID_(v25, v26, &v95, v27, v28);

    v30 = TSCEASTElement::mutableUndoTractList(v2, a1);
    v35 = v30;
    if (v30 && objc_msgSend_tractCount(v30, v31, v32, v33, v34))
    {
      v43 = objc_msgSend_tractCount(v35, v36, v37, v38, v39);
      while (1)
      {
        v44 = objc_msgSend_uidTractAtIndex_(v35, v40, --v43, v41, v42);
        if (objc_msgSend_purpose(v44, v45, v46, v47, v48) == 1)
        {
          v94._topLeft = 0;
          v94._bottomRight = 0;
          if (v29)
          {
            v94._topLeft = objc_msgSend_preMergeRangeFromUidTract_(v29, v49, v44, v50, v51);
          }

          else
          {
            v94._topLeft = 0x7FFF7FFFFFFFLL;
            v52 = 0x7FFF7FFFFFFFLL;
          }

          v94._bottomRight = v52;
          if (TSCERangeCoordinate::isValid(&v94))
          {
            break;
          }
        }

        if (!v43)
        {
          goto LABEL_30;
        }
      }

      v57 = objc_msgSend_preserveFlags(v35, v53, v54, v55, v56);
      coordinate = 0;
      coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
      if ((TSCEASTElement::refFlags(v2, a1) & 1) == 0)
      {
        v63 = *objc_msgSend_mergeSource(v13, v58, v59, v60, v61);
        if (v63 != 0x7FFFFFFF && (v63 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v64 = objc_msgSend_columnUids(v18, v58, v62, v60, v61);
          if (objc_msgSend_containsIndex_(v64, v65, coordinate.column, v66, v67))
          {
            v86 = objc_msgSend_rowUids(v18, v68, v69, v70, v71);
            v85 = objc_msgSend_containsIndex_(v86, v72, coordinate.row, v73, v74);

            if (v85)
            {
              coordinate = *objc_msgSend_mergeSource(v13, v58, v75, v60, v61);
            }
          }

          else
          {
          }
        }
      }

      objc_msgSend_pruneMergeUidTractsAtAndAboveIndex_(v35, v58, v43, v60, v61);
      if (!TSCERangeCoordinate::isSingleCell(&v94) || (v57 & 3) != ((v57 >> 2) & 3))
      {
        v92.coordinate = v94._topLeft;
        v92._tableUID = v95;
        v91.coordinate = v94._bottomRight;
        v91._tableUID = v95;
        v81 = objc_msgSend_preserveFlags(v35, v76, v77, v78, v79);
        v90._flags = v81 & 3;
        *&v89[0]._flags = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v82 = TSCEASTIteratorBase::createReference(a1, &v92, &v90, v89, &coordinate, 0);
        v88._flags = (v81 >> 2) & 3;
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v83 = TSCEASTIteratorBase::createReference(a1, &v91, &v88, &tableUID, &coordinate, 0);
        TSCEASTRewriter::createColonWithUidTractList(a1, v35, v82, v83);
      }

      v92.coordinate = v94._topLeft;
      v92._tableUID = v95;
      v89[0]._flags = v57 & 3;
      *&v91.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v80 = TSCEASTIteratorBase::createReference(a1, &v92, v89, &v91, &coordinate, v35);
      (*(*a1 + 24))(a1, v2);
      v2 = v80;
    }

LABEL_30:
  }

  return v2;
}

void sub_22146536C(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2214653C8(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221465438(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_221465474(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221465894()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = qword_27CFB5610;
  qword_27CFB5610 = v0;

  operator new();
}

void sub_221465BA4(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_22146700C(a1, v6, a3);
  }
}

void sub_221466814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);
  _Unwind_Resume(a1);
}

void *sub_22146688C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221466908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22146691C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
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

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2214669FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_22146700C(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    *(v5 + 8) = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
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

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_221467120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221467864(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  objc_msgSend_setStroke_(*(a1 + 32), a2, a2, a4, a5);
  result = objc_msgSend_setRange_(*(a1 + 32), v10, a3, a4, v11);
  *a6 = 1;
  return result;
}

void sub_22146820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_22146A490(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_baseHeaderColumnsForCell_(v6, a2, a2, a4, a5);
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_msgSend_baseHeaderRowsForCell_(v8, a2, a2, a4, a5);
      goto LABEL_6;
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v40 = 0u;
  v41 = 0u;
LABEL_6:
  v9 = objc_msgSend_calcEngine(*(a1 + 40), a2, a3, a4, a5);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v9, v10, &v42, v11, v12);

  if (IsValidIncludingSheet)
  {
    v18 = *(a1 + 40);
    v32 = 1;
    v33 = v42;
    v34 = v43;
    v35 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    objc_msgSend_addCalculatedPrecedent_(v18, v14, &v32, v16, v17);

    objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v19, *(a1 + 40), &v42, v20);
  }

  v21 = objc_msgSend_calcEngine(*(a1 + 40), v14, v15, v16, v17);
  v25 = objc_msgSend_referenceIsValidIncludingSheet_(v21, v22, &v40, v23, v24);

  if (v25)
  {
    v29 = *(a1 + 40);
    v32 = 1;
    v33 = v40;
    v34 = v41;
    v35 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    objc_msgSend_addCalculatedPrecedent_(v29, v26, &v32, v27, v28);

    objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v30, *(a1 + 40), &v40, v31);
  }
}

uint64_t sub_22146A608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v25.range = *a2;
  v25._tableUID = v3;
  topLeft = v25.range._topLeft;
  v24 = *(a2 + 16);
  if (TSCERangeRef::isSpanningAllRows(&v25))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_msgSend_baseHeaderRowsForCell_(v7, v4, &topLeft, v5, v6);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    result = TSCERangeRef::isSpanningAllColumns(&v25);
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      objc_msgSend_baseHeaderColumnsForCell_(v9, v4, &topLeft, v5, v6);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }
  }

  v10 = *(a1 + 40);
  v13 = 1;
  v14 = v21;
  v15 = v22;
  v16 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  objc_msgSend_addCalculatedPrecedent_(v10, v4, &v13, v5, v6);

  return objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v11, *(a1 + 40), &v21, v12);
}

void sub_22146A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_calcEngine(*(a1 + 32), a2, a3, a4, a5);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v7, v8, a2, v9, v10);

  if (IsValidIncludingSheet)
  {
    v15 = *(a1 + 32);
    v17 = 1;
    v16 = *(a2 + 16);
    v18 = *a2;
    v19 = v16;
    v20 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    objc_msgSend_addCalculatedPrecedent_(v15, v12, &v17, v13, v14);
  }
}

void sub_22146B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_22146BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  v30 = v22;

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_22146C8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_22146DD80(uint64_t a1, const TSCECellRef *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  TSCERangeRef::TSCERangeRef(&v7, a2);
  v8 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  objc_msgSend_addCalculatedPrecedent_(v2, v3, &v6, v4, v5);
}

void sub_22146EB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v17 = *(v15 - 120);
  if (v17)
  {
    *(v15 - 112) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

id sub_22146EC88(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
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

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22146ED68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22146F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39)
{
  v43 = *(v41 - 112);
  if (v43)
  {
    *(v41 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_221470A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39)
{
  v44 = *(v42 - 152);
  if (v44)
  {
    *(v42 - 144) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221471680(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 != 0x7FFFFFFF && (a1 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (a2 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      LODWORD(v2) = WORD2(a1) <= WORD2(a2);
      if (a1 > a2)
      {
        LODWORD(v2) = 0;
      }

      if (WORD2(a1) != WORD2(a2))
      {
        LODWORD(v2) = 0;
      }

      if (a1 != a2)
      {
        LODWORD(v2) = 0;
      }

      if ((a2 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }
  }

  return v2;
}

void sub_2214719C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22147259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, TSUIndexSet *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  TSUIndexSet::~TSUIndexSet((v27 - 184));
  TSUIndexSet::~TSUIndexSet((v27 - 216));
  _Unwind_Resume(a1);
}

void sub_221472920(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v6 = objc_msgSend_valueForCellCoord_fetchRichTextAttributesIfPlainText_(*(a1 + 32), a2, &v25, 0, a5);
  if (objc_msgSend_deepType_(v6, v7, *(a1 + 40), v8, v9) != 9)
  {
    v12 = *(a1 + 40);
    v24 = 0;
    v13 = objc_msgSend_asString_outError_(v6, v10, v12, &v24, v11);
    v17 = v24;
    if (!v17)
    {
      v18 = *(a1 + 48);
      if (v18)
      {
        objc_msgSend_nameFragmentPrecedentsForReferenceString_(v18, v14, v13, v15, v16);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_221472A80;
      v19[3] = &unk_27845FBD8;
      v20 = *(a1 + 40);
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v21, v19);

      sub_22107C800(&v21, v22);
    }
  }
}

void sub_221472A80(uint64_t a1, const TSCECellRef *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  TSCERangeRef::TSCERangeRef(&v7, a2);
  v8 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  objc_msgSend_addCalculatedPrecedent_(v2, v3, &v6, v4, v5);
}

void sub_221474BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, void *a59, uint64_t a60, char a61)
{
  sub_22107C800(&a58, a59);
  a47 = &a61;
  sub_22107C2C0(&a47);
  _Block_object_dispose((v64 - 256), 8);
  v66 = *(v64 - 208);
  if (v66)
  {
    *(v64 - 200) = v66;
    operator delete(v66);
  }

  sub_22107C800(v64 - 168, *(v64 - 160));

  v67 = *(v64 - 120);
  if (v67)
  {
    *(v64 - 112) = v67;
    operator delete(v67);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221474F04(__n128 *a1, __n128 *a2)
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

void sub_221474F28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221474F40(uint64_t a1, __int128 *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v8 = v3[6];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 3);
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
      sub_2210CDBC0((v3 + 6), v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    v7 = 24 * v9 + 24;
    v15 = v3[6];
    v16 = v3[7] - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = v3[6];
    v3[6] = v17;
    v3[7] = v7;
    v3[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  v3[7] = v7;
}

void sub_221475BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40)
{
  v48 = *(v46 - 120);
  if (v48)
  {
    *(v46 - 112) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_221477368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_2214778EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a14 = &a24;
  sub_22107C2C0(&a14);

  _Unwind_Resume(a1);
}

uint64_t sub_221478AC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_221478B40(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_22147964C(a3, a2 - 24, v10))
      {
LABEL_77:
        v122 = *(v10 + 16);
        v98 = *v10;
        v70 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_221479908(v10, a2, a3);
      }

      else
      {

        sub_2214799F4(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_22147A1C4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = sub_22147964C(a3, v10 + 24 * v15, v10);
      v18 = sub_22147964C(a3, a2 - 24, a1 + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 8);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = *(v16 + 16);
        *a1 = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (sub_22147964C(a3, a2 - 24, a1 + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (sub_22147964C(a3, a1 + 24 * v15, a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = *(v16 + 16);
          *a1 = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_22147964C(a3, v29, a1 + 24);
      v31 = sub_22147964C(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 32);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_22147964C(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (sub_22147964C(a3, v29, a1 + 24))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_22147964C(a3, v41 + 24, a1 + 48);
      v43 = sub_22147964C(a3, a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 56);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_22147964C(a3, a2 - 72, v41 + 24))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (sub_22147964C(a3, v41 + 24, a1 + 48))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_22147964C(a3, v16, v29);
      v52 = sub_22147964C(a3, v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (sub_22147964C(a3, v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_22147964C(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_22147964C(a3, v10, v10 + 24 * v15);
    v21 = sub_22147964C(a3, a2 - 24, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_58;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *a1;
      *(v16 + 16) = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_22147964C(a3, a2 - 24, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 8);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 8);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (sub_22147964C(a3, a1, a1 + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *a1;
        *(v16 + 16) = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_22147964C(a3, a1 - 24, a1))
    {
      v10 = sub_221479AC4(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_221479C24(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_221479D84(a1, v54, a3);
    v10 = v54 + 24;
    if (sub_221479D84(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_221478B40(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_221479728(v10, v10 + 24, v10 + 48, a2 - 24, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_221479728(v10, v10 + 24, v10 + 48, v10 + 72, a3);
      if (!sub_22147964C(a3, a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 88);
      v63 = *(v10 + 72);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *v8 = v63;
      *(a2 - 8) = v62;
      if (!sub_22147964C(a3, v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!sub_22147964C(a3, v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_22147964C(a3, v10 + 24, v10);
  v58 = sub_22147964C(a3, v8, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 40);
    v72 = *(v10 + 24);
    v73 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *v8 = v72;
    *(v8 + 16) = v71;
LABEL_92:
    if (sub_22147964C(a3, v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (sub_22147964C(a3, v8, v10 + 24))
  {
    v59 = *(v10 + 40);
    v60 = *(v10 + 24);
    v61 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *v8 = v60;
LABEL_78:
    *(v8 + 16) = v59;
  }
}

BOOL sub_22147964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (*(a2 + 8) == *(a3 + 8) && v4 == *(a3 + 16))
  {
    v11 = *(a2 + 4);
    v12 = *(a3 + 4);
    if (v11 >= v12)
    {
      return v11 <= v12 && *a2 < *a3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v15._lower = *(a2 + 8);
    v15._upper = v4;
    v16 = TSKUIDStruct::CFUUIDBytes(&v15);
    v17 = v6;
    v14 = *(a3 + 8);
    v15._lower = TSKUIDStruct::CFUUIDBytes(&v14);
    v15._upper = v7;
    v8 = bswap64(v16);
    v9 = bswap64(v15._lower);
    if (v8 == v9 && (v8 = bswap64(v17), v9 = bswap64(v15._upper), v8 == v9))
    {
      v10 = 0;
    }

    else if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    return v10 >> 31;
  }
}

__n128 sub_221479728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22147964C(a5, a2, a1);
  v11 = sub_22147964C(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *(a1 + 16);
      v13 = *a1;
      v14 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v14;
LABEL_9:
      *a3 = v13;
      *(a3 + 16) = v12;
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v22 = *a1;
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *a2 = v22;
    *(a2 + 16) = v21;
    if (sub_22147964C(a5, a3, a2))
    {
      v12 = *(a2 + 16);
      v13 = *a2;
      v24 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = *(a2 + 16);
    v16 = *a2;
    v17 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v17;
    *a3 = v16;
    *(a3 + 16) = v15;
    if (sub_22147964C(a5, a2, a1))
    {
      v18 = *(a1 + 16);
      v19 = *a1;
      v20 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v20;
      *a2 = v19;
      *(a2 + 16) = v18;
    }
  }

LABEL_10:
  if (sub_22147964C(a5, a4, a3))
  {
    v26 = *(a3 + 16);
    v27 = *a3;
    v28 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v28;
    *a4 = v27;
    *(a4 + 16) = v26;
    if (sub_22147964C(a5, a3, a2))
    {
      v29 = *(a2 + 16);
      v30 = *a2;
      v31 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v31;
      *a3 = v30;
      *(a3 + 16) = v29;
      if (sub_22147964C(a5, a2, a1))
      {
        v32 = *(a1 + 16);
        result = *a1;
        v33 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v33;
        *a2 = result;
        *(a2 + 16) = v32;
      }
    }
  }

  return result;
}

uint64_t sub_221479908(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = sub_22147964C(a3, v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = sub_22147964C(a3, &v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_2214799F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = sub_22147964C(a3, v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = sub_22147964C(a3, &v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

unint64_t sub_221479AC4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 16);
  if (sub_22147964C(a3, &v16, a2 - 24))
  {
    v6 = a1;
    do
    {
      v6 += 24;
    }

    while (!sub_22147964C(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 24;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_22147964C(a3, &v16, v7);
      v7 = v6 + 24;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_22147964C(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 16);
    v18 = v9;
    v10 = *v4;
    *(v6 + 16) = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 24;
    }

    while (!sub_22147964C(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_22147964C(a3, &v16, v4));
  }

  v12 = (v6 - 24);
  if (v6 - 24 != a1)
  {
    v13 = *v12;
    *(a1 + 16) = *(v6 - 8);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 8) = v17;
  *v12 = v14;
  return v6;
}

uint64_t sub_221479C24(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (sub_22147964C(a3, a1 + v6, &v17));
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!sub_22147964C(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!sub_22147964C(a3, a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = a1 + v6;
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 16);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 16) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (sub_22147964C(a3, v9, &v17));
      do
      {
        v10 -= 24;
      }

      while (!sub_22147964C(a3, v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL sub_221479D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_22147964C(a3, a1 + 24, a1);
        v17 = sub_22147964C(a3, v7, a1 + 24);
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_22147964C(a3, v7, a1 + 24))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_221479728(a1, a1 + 24, a1 + 48, a2 - 24, a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_221479728(a1, a1 + 24, a1 + 48, a1 + 72, a3);
        if (!sub_22147964C(a3, v8, a1 + 72))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_22147964C(a3, a1 + 72, a1 + 48))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_22147964C(a3, a1 + 48, a1 + 24))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_22147964C(a3, a1 + 24, a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_22147964C(a3, a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_22147964C(a3, a1 + 24, a1);
  v23 = sub_22147964C(a3, a1 + 48, a1 + 24);
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_22147964C(a3, a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_22147964C(a3, a1 + 24, a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_22147964C(a3, v40, v21))
    {
      v47 = *v40;
      v48 = *(v40 + 16);
      v43 = v41;
      while (1)
      {
        v44 = a1 + v43;
        *(v44 + 72) = *(a1 + v43 + 48);
        *(v44 + 88) = *(a1 + v43 + 64);
        if (v43 == -48)
        {
          break;
        }

        v43 -= 24;
        if (!sub_22147964C(a3, &v47, v44 + 24))
        {
          v45 = a1 + v43 + 72;
          goto LABEL_41;
        }
      }

      v45 = a1;
LABEL_41:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_22147A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_22147A37C(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_22147964C(a4, v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_22147A37C(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = sub_22147A4E8(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 2) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 16);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 16) = v24;
          sub_22147A5A8(a1, v19 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_22147A37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_22147964C(a2, a1 + 24 * v12, v13 + 24))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_22147964C(a2, v13, v7))
      {
        v20 = *v7;
        v21 = *(v7 + 16);
        do
        {
          v16 = v13;
          v17 = *v13;
          *(v7 + 16) = *(v13 + 16);
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_22147964C(a2, a1 + 24 * v18, v13 + 24))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
        }

        while (!sub_22147964C(a2, v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_22147A4E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 48);
      if (sub_22147964C(a2, v8 + 24, v8 + 48))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_22147A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 24 * v8;
    v10 = a2 - 24;
    if (sub_22147964C(a3, v9, a2 - 24))
    {
      v14 = *v10;
      v15 = *(v10 + 16);
      do
      {
        v12 = v9;
        v13 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v13;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 24 * v8;
        v10 = v12;
      }

      while (sub_22147964C(a3, v9, &v14));
      result = *&v14;
      *v12 = v14;
      *(v12 + 16) = v15;
    }
  }

  return result;
}

void sub_22147A67C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  sub_22147A6AC(a1, a2, a3, v4, 1);
}

void sub_22147A6AC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_22147B1B8(a3, a2 - 24, v10))
      {
LABEL_77:
        v122 = *(v10 + 16);
        v98 = *v10;
        v70 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_22147B474(v10, a2, a3);
      }

      else
      {

        sub_22147B560(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_22147BD30(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = sub_22147B1B8(a3, v10 + 24 * v15, v10);
      v18 = sub_22147B1B8(a3, a2 - 24, a1 + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 8);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = *(v16 + 16);
        *a1 = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (sub_22147B1B8(a3, a2 - 24, a1 + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (sub_22147B1B8(a3, a1 + 24 * v15, a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = *(v16 + 16);
          *a1 = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_22147B1B8(a3, v29, a1 + 24);
      v31 = sub_22147B1B8(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 32);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_22147B1B8(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (sub_22147B1B8(a3, v29, a1 + 24))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_22147B1B8(a3, v41 + 24, a1 + 48);
      v43 = sub_22147B1B8(a3, a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 56);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_22147B1B8(a3, a2 - 72, v41 + 24))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (sub_22147B1B8(a3, v41 + 24, a1 + 48))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_22147B1B8(a3, v16, v29);
      v52 = sub_22147B1B8(a3, v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (sub_22147B1B8(a3, v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_22147B1B8(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_22147B1B8(a3, v10, v10 + 24 * v15);
    v21 = sub_22147B1B8(a3, a2 - 24, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_58;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *a1;
      *(v16 + 16) = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_22147B1B8(a3, a2 - 24, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 8);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 8);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (sub_22147B1B8(a3, a1, a1 + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *a1;
        *(v16 + 16) = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_22147B1B8(a3, a1 - 24, a1))
    {
      v10 = sub_22147B630(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_22147B790(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_22147B8F0(a1, v54, a3);
    v10 = v54 + 24;
    if (sub_22147B8F0(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_22147A6AC(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_22147B294(v10, v10 + 24, v10 + 48, a2 - 24, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_22147B294(v10, v10 + 24, v10 + 48, v10 + 72, a3);
      if (!sub_22147B1B8(a3, a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 88);
      v63 = *(v10 + 72);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *v8 = v63;
      *(a2 - 8) = v62;
      if (!sub_22147B1B8(a3, v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!sub_22147B1B8(a3, v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_22147B1B8(a3, v10 + 24, v10);
  v58 = sub_22147B1B8(a3, v8, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 40);
    v72 = *(v10 + 24);
    v73 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *v8 = v72;
    *(v8 + 16) = v71;
LABEL_92:
    if (sub_22147B1B8(a3, v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (sub_22147B1B8(a3, v8, v10 + 24))
  {
    v59 = *(v10 + 40);
    v60 = *(v10 + 24);
    v61 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *v8 = v60;
LABEL_78:
    *(v8 + 16) = v59;
  }
}

BOOL sub_22147B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (*(a2 + 8) == *(a3 + 8) && v4 == *(a3 + 16))
  {
    if (*a2 >= *a3)
    {
      return *a2 <= *a3 && *(a2 + 4) < *(a3 + 4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13._lower = *(a2 + 8);
    v13._upper = v4;
    v14 = TSKUIDStruct::CFUUIDBytes(&v13);
    v15 = v6;
    v12 = *(a3 + 8);
    v13._lower = TSKUIDStruct::CFUUIDBytes(&v12);
    v13._upper = v7;
    v8 = bswap64(v14);
    v9 = bswap64(v13._lower);
    if (v8 == v9 && (v8 = bswap64(v15), v9 = bswap64(v13._upper), v8 == v9))
    {
      v10 = 0;
    }

    else if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    return v10 >> 31;
  }
}

__n128 sub_22147B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22147B1B8(a5, a2, a1);
  v11 = sub_22147B1B8(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *(a1 + 16);
      v13 = *a1;
      v14 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v14;
LABEL_9:
      *a3 = v13;
      *(a3 + 16) = v12;
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v22 = *a1;
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *a2 = v22;
    *(a2 + 16) = v21;
    if (sub_22147B1B8(a5, a3, a2))
    {
      v12 = *(a2 + 16);
      v13 = *a2;
      v24 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = *(a2 + 16);
    v16 = *a2;
    v17 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v17;
    *a3 = v16;
    *(a3 + 16) = v15;
    if (sub_22147B1B8(a5, a2, a1))
    {
      v18 = *(a1 + 16);
      v19 = *a1;
      v20 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v20;
      *a2 = v19;
      *(a2 + 16) = v18;
    }
  }

LABEL_10:
  if (sub_22147B1B8(a5, a4, a3))
  {
    v26 = *(a3 + 16);
    v27 = *a3;
    v28 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v28;
    *a4 = v27;
    *(a4 + 16) = v26;
    if (sub_22147B1B8(a5, a3, a2))
    {
      v29 = *(a2 + 16);
      v30 = *a2;
      v31 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v31;
      *a3 = v30;
      *(a3 + 16) = v29;
      if (sub_22147B1B8(a5, a2, a1))
      {
        v32 = *(a1 + 16);
        result = *a1;
        v33 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v33;
        *a2 = result;
        *(a2 + 16) = v32;
      }
    }
  }

  return result;
}

uint64_t sub_22147B474(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = sub_22147B1B8(a3, v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = sub_22147B1B8(a3, &v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_22147B560(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = sub_22147B1B8(a3, v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = sub_22147B1B8(a3, &v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

unint64_t sub_22147B630(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 16);
  if (sub_22147B1B8(a3, &v16, a2 - 24))
  {
    v6 = a1;
    do
    {
      v6 += 24;
    }

    while (!sub_22147B1B8(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 24;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_22147B1B8(a3, &v16, v7);
      v7 = v6 + 24;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_22147B1B8(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 16);
    v18 = v9;
    v10 = *v4;
    *(v6 + 16) = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 24;
    }

    while (!sub_22147B1B8(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_22147B1B8(a3, &v16, v4));
  }

  v12 = (v6 - 24);
  if (v6 - 24 != a1)
  {
    v13 = *v12;
    *(a1 + 16) = *(v6 - 8);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 8) = v17;
  *v12 = v14;
  return v6;
}

uint64_t sub_22147B790(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (sub_22147B1B8(a3, a1 + v6, &v17));
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!sub_22147B1B8(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!sub_22147B1B8(a3, a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = a1 + v6;
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 16);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 16) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (sub_22147B1B8(a3, v9, &v17));
      do
      {
        v10 -= 24;
      }

      while (!sub_22147B1B8(a3, v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL sub_22147B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_22147B1B8(a3, a1 + 24, a1);
        v17 = sub_22147B1B8(a3, v7, a1 + 24);
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_22147B1B8(a3, v7, a1 + 24))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_22147B294(a1, a1 + 24, a1 + 48, a2 - 24, a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_22147B294(a1, a1 + 24, a1 + 48, a1 + 72, a3);
        if (!sub_22147B1B8(a3, v8, a1 + 72))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_22147B1B8(a3, a1 + 72, a1 + 48))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_22147B1B8(a3, a1 + 48, a1 + 24))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_22147B1B8(a3, a1 + 24, a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_22147B1B8(a3, a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_22147B1B8(a3, a1 + 24, a1);
  v23 = sub_22147B1B8(a3, a1 + 48, a1 + 24);
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_22147B1B8(a3, a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_22147B1B8(a3, a1 + 24, a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_22147B1B8(a3, v40, v21))
    {
      v47 = *v40;
      v48 = *(v40 + 16);
      v43 = v41;
      while (1)
      {
        v44 = a1 + v43;
        *(v44 + 72) = *(a1 + v43 + 48);
        *(v44 + 88) = *(a1 + v43 + 64);
        if (v43 == -48)
        {
          break;
        }

        v43 -= 24;
        if (!sub_22147B1B8(a3, &v47, v44 + 24))
        {
          v45 = a1 + v43 + 72;
          goto LABEL_41;
        }
      }

      v45 = a1;
LABEL_41:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_22147BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_22147BEE8(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_22147B1B8(a4, v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_22147BEE8(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = sub_22147C054(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 2) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 16);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 16) = v24;
          sub_22147C114(a1, v19 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_22147BEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_22147B1B8(a2, a1 + 24 * v12, v13 + 24))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_22147B1B8(a2, v13, v7))
      {
        v20 = *v7;
        v21 = *(v7 + 16);
        do
        {
          v16 = v13;
          v17 = *v13;
          *(v7 + 16) = *(v13 + 16);
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_22147B1B8(a2, a1 + 24 * v18, v13 + 24))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
        }

        while (!sub_22147B1B8(a2, v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_22147C054(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 48);
      if (sub_22147B1B8(a2, v8 + 24, v8 + 48))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_22147C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 24 * v8;
    v10 = a2 - 24;
    if (sub_22147B1B8(a3, v9, a2 - 24))
    {
      v14 = *v10;
      v15 = *(v10 + 16);
      do
      {
        v12 = v9;
        v13 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v13;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 24 * v8;
        v10 = v12;
      }

      while (sub_22147B1B8(a3, v9, &v14));
      result = *&v14;
      *v12 = v14;
      *(v12 + 16) = v15;
    }
  }

  return result;
}

void sub_22147C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

void sub_22147C7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

TSCEReferenceSet *sub_22147C7F0(uint64_t a1, const TSCEInternalCellReference *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = TSCEReferenceSet::insertRef(*(a1 + 40), a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void *sub_22147CC24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = sub_22147D360((v2 + 48), a2);
  TSKMakeUIDStructCoord();
  return sub_22147D60C(v3 + 4, &v5);
}

void sub_22147D01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_22141E4F8(va);
  _Unwind_Resume(a1);
}

void *sub_22147D0A0(void *a1, void *a2)
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

void sub_22147D300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22147D314(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22147D314(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22141E4F8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_22147D360(void *a1, uint64_t *a2)
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

void sub_22147D5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

void *sub_22147D60C(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[1];
  v5 = v3 ^ v2 ^ *a2 ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ v2 ^ *a2 ^ v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v10[4] != v2 || v10[5] != v3 || v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_20;
  }

  return v10;
}

uint64_t *sub_22147D86C(void *a1, void *a2)
{
  result = sub_221280960(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_22147D8A4(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22147D314(v4);
    return 1;
  }

  return result;
}

uint64_t **sub_22147D8F0(void *a1, uint64_t *a2)
{
  result = sub_221123474(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22141E170(v4);
    return 1;
  }

  return result;
}

void sub_22147D93C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 1) = *(v4 + 1);
        sub_2212DFCA0((v8 + 4), (v4 + 4));
        v10 = *v8;
        v11 = v8[3] ^ v8[2];
        v8[1] = v11;
        v12 = sub_2211F2A14(a1, v11, v8 + 2);
        sub_2210BD408(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_22141E534(a1, v10);
  }

  if (v4 != a3)
  {
    sub_22147DA5C();
  }
}

void sub_22147DA2C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_22141E534(v1, v2);
  __cxa_rethrow();
}

void sub_22147DACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22141DE78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22147DB74(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22147DBEC(a1, i + 2);
  }

  return a1;
}

void *sub_22147DBEC(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[1];
  v5 = v3 ^ v2 ^ *a2 ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ v2 ^ *a2 ^ v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v10[4] != v2 || v10[5] != v3 || v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_20;
  }

  return v10;
}

uint64_t sub_22147DE4C(uint64_t a1)
{
  sub_22147DE88(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22147DE88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22141E4F8((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22147FF8C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_221480084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22148024C(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v11 = a3;
  if (a1)
  {
    v12 = objc_msgSend_init(a1, v7, v8, v9, v10);
    a1 = v12;
    if (v12)
    {
      *(v12 + 32) = *(a2 + 44);
      *(v12 + 8) = *(a2 + 48);
      *(v12 + 12) = *(a2 + 52);
      v13 = *(a2 + 16);
      if (v13)
      {
        v14 = *(a2 + 24);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_221480440;
        v25[3] = &unk_27845DF50;
        v26 = v12;
        v15 = v11;
        v16 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v25);

        v13 = *(a2 + 16);
      }

      if ((v13 & 2) != 0)
      {
        v18 = *(a2 + 32);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_22148044C;
        v23[3] = &unk_27845DF78;
        v24 = a1;
        v19 = v11;
        v20 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v21, v18, v20, 0, v23);
      }
    }

    if (a4)
    {
      *a4 = *(a2 + 40);
    }
  }

  return a1;
}

void sub_221480458(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a3;
  if (a1)
  {
    v9 = *(a2 + 16);
    *(a2 + 40) = a4;
    v10 = *(a1 + 32);
    *(a2 + 16) = v9 | 0xC;
    *(a2 + 44) = v10;
    v11 = *(a1 + 8);
    *(a2 + 16) = v9 | 0x1C;
    *(a2 + 48) = v11;
    v12 = *(a1 + 12);
    *(a2 + 16) = v9 | 0x3C;
    *(a2 + 52) = v12;
    v13 = *(a1 + 16);
    if (v13)
    {
      *(a2 + 16) = v9 | 0x3D;
      v14 = *(a2 + 24);
      if (!v14)
      {
        v15 = *(a2 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0390](v15);
        *(a2 + 24) = v14;
      }

      objc_msgSend_setStrongReference_message_(v19, v7, v13, v14, v8);
    }

    v16 = *(a1 + 24);
    if (v16)
    {
      *(a2 + 16) |= 2u;
      v17 = *(a2 + 32);
      if (!v17)
      {
        v18 = *(a2 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x223DA0390](v18);
        *(a2 + 32) = v17;
      }

      objc_msgSend_setStrongReference_message_(v19, v7, v16, v17, v8);
    }
  }
}

void sub_221480590(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v21 = v3;
    objc_msgSend_size(v3, v4, v5, v6, v7);
    a1[4] = v8;
    v13 = objc_msgSend_textStyle(v21, v9, v10, v11, v12);
    v14 = a1[3];
    a1[3] = v13;

    v19 = objc_msgSend_cellStyle(v21, v15, v16, v17, v18);
    v20 = a1[2];
    a1[2] = v19;

    v3 = v21;
  }
}

void sub_221480CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id a14)
{
  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_221481850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214818D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214818F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v7)
  {
    objc_msgSend_appendString_(v7, a2, @" | ", a4, a5);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (*a2 - 1 >= 2)
  {
    v16 = *(*(*(a1 + 32) + 8) + 40);
    if (*a2)
    {
      v23 = TSCEAnyRef::description(a2);
      objc_msgSend_appendFormat_(v16, v20, @"Unexpected refType: %@", v21, v22, v23);
    }

    else
    {
      v23 = NSStringFromTSUCellCoord();
      objc_msgSend_appendString_(v16, v17, v23, v18, v19);
    }
  }

  else
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v23 = NSStringFromTSUCellCoord();
    v12 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v11, v13, @"%@:%@", v14, v15, v23, v12);
  }
}

void sub_221483250(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2214842D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221484658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214846C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214846DC(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(*(*(*(a1 + 40) + 8) + 40), v5, v16, a3, *(a1 + 56));
  if (objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v6, v7, v8, v9) >= *(a1 + 48))
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, *(*(*(a1 + 40) + 8) + 40), v11, v12);
    v13 = objc_opt_new();
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_221484C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 152), 8);

  _Unwind_Resume(a1);
}

__n128 sub_221484CC0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_221484CD0(uint64_t a1, void *a2, uint64_t *a3)
{
  v37 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (!v6 || (v7 = *(*(a1 + 48) + 8), *(v7 + 48) != a3[1]) || *(v7 + 56) != a3[2])
  {
    v8 = *(a1 + 64);
    v9 = *(v8 + 32);
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *(v8 + 24);
    v11 = *v9;
    if (v10 < *v9)
    {
      *(v8 + 24) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
LABEL_11:
      *(*(*(a1 + 40) + 8) + 24) = v12;
      v15 = *(*(*(a1 + 40) + 8) + 24);
      v16 = *(a1 + 72);
      *(v15 + 16) |= 2u;
      *(v15 + 56) = v16;
      *(*(*(a1 + 48) + 8) + 48) = *(a3 + 1);
      v17 = *(*(a1 + 48) + 8);
      v18 = *(*(*(a1 + 40) + 8) + 24);
      *(v18 + 16) |= 1u;
      v19 = *(v18 + 48);
      if (!v19)
      {
        v20 = *(v18 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x223DA0360](v20);
        *(v18 + 48) = v19;
      }

      TSKUIDStruct::saveToMessage(v17 + 3, v19);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      goto LABEL_16;
    }

    if (v11 == *(v8 + 28))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 16));
      v9 = *(v8 + 32);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaCoordPairsByOwnerArchive>(*(v8 + 16));
    v13 = *(v8 + 24);
    v14 = *(v8 + 32) + 8 * v13;
    *(v8 + 24) = v13 + 1;
    *(v14 + 8) = v12;
    goto LABEL_11;
  }

LABEL_16:
  v21 = *(v6 + 40);
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = *(v6 + 32);
  v23 = *v21;
  if (v22 < *v21)
  {
    *(v6 + 32) = v22 + 1;
    v24 = *&v21[2 * v22 + 2];
    goto LABEL_23;
  }

  if (v23 == *(v6 + 36))
  {
LABEL_21:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v21 = *(v6 + 40);
    v23 = *v21;
  }

  *v21 = v23 + 1;
  v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaAtCoordArchive>(*(v6 + 24));
  v25 = *(v6 + 32);
  v26 = *(v6 + 40) + 8 * v25;
  *(v6 + 32) = v25 + 1;
  *(v26 + 8) = v24;
LABEL_23:
  v27 = *(a3 + 2);
  v28 = *(v24 + 16);
  *(v24 + 16) = v28 | 2;
  *(v24 + 32) = v27;
  v29 = *a3;
  *(v24 + 16) = v28 | 6;
  *(v24 + 36) = v29;
  if (v37)
  {
    v30 = *(*(a1 + 56) + 8);
    v32 = *(v30 + 40);
    v31 = (v30 + 40);
    if (v32 == v37)
    {
      *(v24 + 16) = v28 | 0xE;
      *(v24 + 40) = 1;
    }

    else
    {
      objc_storeStrong(v31, a2);
      *(v24 + 16) |= 1u;
      v35 = *(v24 + 24);
      if (!v35)
      {
        v36 = *(v24 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v36);
        *(v24 + 24) = v35;
      }

      objc_msgSend_encodeToArchive_archiver_(v37, v33, v35, *(a1 + 32), v34);
    }
  }
}

void sub_2214850DC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *(v4 + 1);
        *(v8 + 32) = v4[4];
        *(v8 + 16) = v11;
        objc_storeStrong((v8 + 40), v4[5]);
        v10 = *v8;
        sub_2214851E4(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v12 = v4 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    sub_221159784(a1, v10);
  }

  if (v4 != a3)
  {
    sub_221485670();
  }
}

void sub_2214851B8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_221159784(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_2214851E4(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 32) ^ *(a2 + 24) ^ (*(a2 + 20) + (*(a2 + 16) << 15));
  *(a2 + 8) = v5;
  v6 = sub_221485240(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

void *sub_221485240(uint64_t a1, unint64_t a2, uint64_t *a3)
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

    sub_2214853D0(a1, v13);
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
  v18 = *a3;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v20 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v21 = v16[1];
      if (v20 >= v6)
      {
        v21 = v20 % v6;
      }
    }

    else
    {
      v21 = v20 & (v6 - 1);
    }

    if (v21 != v15)
    {
      break;
    }

    v23 = v20 == a2 && (v22 = v16[2], v22 == v18) && ((v18 ^ v22) & 0x101FFFF00000000) == 0 && v16[3] == a3[1] && v16[4] == a3[2];
    v24 = v23 != (v17 & 1);
    v25 = v17 & v24;
    v17 |= v24;
  }

  while (v25 != 1);
  return result;
}

void sub_2214853D0(uint64_t a1, size_t __n)
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

      sub_2214854C0(a1, prime);
    }
  }
}

void sub_2214854C0(uint64_t a1, unint64_t a2)
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

void sub_2214856C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

void sub_221485768(void *a1, uint64_t *a2, uint64_t *a3)
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
        v9 = *(a2 + 1);
        v8[4] = a2[4];
        *(v8 + 1) = v9;
        v10 = *v8;
        sub_2214851E4(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221485868();
  }
}

void sub_221485834(void *a1)
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

void *sub_2214858FC(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_25;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_25:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_25;
    }

LABEL_24:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14 || v9[3] != v2 || v9[4] != v3)
  {
    goto LABEL_24;
  }

  return v9;
}

void *sub_221485B74(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_25;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_25:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_25;
    }

LABEL_24:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14 || v9[3] != v2 || v9[4] != v3)
  {
    goto LABEL_24;
  }

  return v9;
}

void sub_221485E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_221485E1C(void *a1, unsigned __int16 *a2)
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

void sub_221486070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_221486084(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_25;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_25:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_25;
    }

LABEL_24:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14 || v9[3] != v2 || v9[4] != v3)
  {
    goto LABEL_24;
  }

  return v9;
}

void sub_221486318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22148632C(void *a1, uint64_t *a2)
{
  result = sub_221244B44(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221159A40(v4);
    return 1;
  }

  return result;
}

void *sub_221486FA4(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
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
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void TSCEDurationFormat::TSCEDurationFormat(TSCEDurationFormat *this, TSKDurationFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = *this & 0xC080 | 0x421;
  *(this + 2) = *(this + 2) & 0xF8 | 1;
  if (a2)
  {
    *this = *this & 0xFFFE | objc_msgSend_useAutomaticUnits(a2, a2, a3, a4, a5);
    *this = *this & 0xFF81 | (2 * (objc_msgSend_durationUnitSmallest(a2, v7, v8, v9, v10) & 0x3F));
    *this = *this & 0xC0FF | ((objc_msgSend_durationUnitLargest(a2, v11, v12, v13, v14) & 0x3F) << 8);
    *(this + 2) = *(this + 2) & 0xF8 | objc_msgSend_durationStyle(a2, v15, v16, v17, v18) & 7;
  }
}

id TSCEDurationFormat::asTSKDurationFormat(TSCEDurationFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80678]);
  v4 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v2, v3, *this & 1, (*this >> 1) & 0x3F, HIBYTE(*this) & 0x3F, *(this + 2) & 7);

  return v4;
}

BOOL TSCEDurationFormat::isEqualIgnoringAuto(TSCEDurationFormat *this, const TSCEDurationFormat *a2)
{
  v2 = *this;
  v3 = *a2;
  return ((v2 >> 1) & 0x3F) == ((v3 >> 1) & 0x3F) && ((v3 ^ v2) & 0x3F00) == 0 && ((*(a2 + 2) ^ *(this + 2)) & 7) == 0;
}

uint64_t TSCENumberFormat::TSCENumberFormat(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = -3;
  *(a1 + 1) &= 0xE0u;
  *(a1 + 2) = 0;
  if (a2)
  {
    *a1 = objc_msgSend_decimalPlaces(a2, a2, a3, a4, a5);
    *(a1 + 1) = *(a1 + 1) & 0xF8 | objc_msgSend_negativeStyle(a2, v7, v8, v9, v10) & 7;
    if (objc_msgSend_showThousandsSeparator(a2, v11, v12, v13, v14))
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xF7 | v15;
  }

  return a1;
}

{
  *a1 = -3;
  *(a1 + 1) &= 0xE0u;
  *(a1 + 2) = 0;
  if (a2)
  {
    v7 = objc_msgSend_currencyCode(a2, a2, a3, a4, a5);
    *(a1 + 2) = TSUCurrencyCodeIndexForCode();

    *a1 = objc_msgSend_decimalPlaces(a2, v8, v9, v10, v11);
    *(a1 + 1) = *(a1 + 1) & 0xF8 | objc_msgSend_negativeStyle(a2, v12, v13, v14, v15) & 7;
    if (objc_msgSend_showThousandsSeparator(a2, v16, v17, v18, v19))
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xF7 | v24;
    if (objc_msgSend_accountingStyle(a2, v20, v21, v22, v23))
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xEF | v25;
  }

  return a1;
}

id TSCENumberFormat::asTSKNumberFormat(unsigned __int8 *a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277D806A0]);
  v6 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v4, v5, a2, *a1, a1[1] & 7, (a1[1] >> 3) & 1);

  return v6;
}

id TSCENumberFormat::asTSKCurrencyFormat(TSCENumberFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80640]);
  decimalPlaces = this->decimalPlaces;
  v4 = *(this + 1);
  v5 = TSUCurrencyCodeForIndex();
  v7 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v2, v6, decimalPlaces, v4 & 7, (v4 >> 3) & 1, (v4 >> 4) & 1, v5);

  return v7;
}

uint64_t TSCENumberFormat::defaultNumberFormatForCurrency(TSCENumberFormat *this, TSULocale *a2)
{
  v6 = this;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "static TSCENumberFormat TSCENumberFormat::defaultNumberFormatForCurrency(TSULocale *__strong)", v4, v5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 99, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_cfLocale(v6, v2, v3, v4, v5);
  v19 = CFLocaleGetValue(v18, *MEMORY[0x277CBEEA0]);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"USD";
  }

  defaultFractionDigits = 0;
  DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v20, &defaultFractionDigits, 0);
  v22 = TSUCurrencyCodeIndexForCode();
  v23 = defaultFractionDigits;

  if (DecimalInfoForCurrencyCode)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2;
  }

  return v24 | (v22 << 16);
}

_BYTE *TSCEFractionFormat::TSCEFractionFormat(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = -3;
  if (a2)
  {
    *a1 = objc_msgSend_fractionAccuracy(a2, a2, a3, a4, a5);
  }

  return a1;
}

{
  *a1 = -3;
  if (a2)
  {
    *a1 = objc_msgSend_fractionAccuracy(a2, a2, a3, a4, a5);
  }

  return a1;
}

id TSCEFractionFormat::asTSKFractionFormat(TSCEFractionFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80688]);
  v6 = objc_msgSend_initWithFractionAccuracy_(v2, v3, this->fractionAccuracy, v4, v5);

  return v6;
}

uint64_t TSCEBaseFormat::TSCEBaseFormat(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 10;
  *(a1 + 2) = 1;
  if (a2)
  {
    *a1 = objc_msgSend_base(a2, a2, a3, a4, a5);
    *(a1 + 1) = objc_msgSend_basePlaces(a2, v7, v8, v9, v10);
    *(a1 + 2) = objc_msgSend_baseUseMinusSign(a2, v11, v12, v13, v14);
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "TSCEBaseFormat::TSCEBaseFormat(TSKBaseFormat *__unsafe_unretained)", a4, a5);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 139, 0, "TSCEBaseFormat has no defaults for nil TSKBaseFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return a1;
}

id TSCEBaseFormat::asTSKBaseFormat(TSCEBaseFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80620]);
  v4 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v2, v3, this->base, this->basePlaces, this->baseUseMinusSign);

  return v4;
}

uint64_t TSCEFormat::isMergableWithFormatType(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0xFFFFFFFC) == 0x100)
  {
    v3 = (a2 & 0xFFFFFFFC) == 256;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t TSCEFormat::TSCEFormat(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  if (((a2 - 254) > 6 || ((1 << (a2 + 2)) & 0x75) == 0) && a2 != 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormat::TSCEFormat(const TSUFormatType)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 190, 0, "This TSCEFormat constructor not supported for this type: %d", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  return a1;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, TSKFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  this->_tskFormat = a2;
  v8 = objc_msgSend_formatType(a2, a2, a3, a4, a5);
  durationFormat = this->_durationFormat;
  this->_formatType = v8;
  this->_formatState = v5;
  *&this->_durationFormat = durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  if (v8 == 257)
  {
    v14 = objc_msgSend_asCurrencyFormat(a2, v9, v10, v11, v12);
    TSCENumberFormat::TSCENumberFormat(&v56, v14, v15, v16, v17);
    v18 = v56;
LABEL_5:
    this->_numberFormat = v18;
    return;
  }

  if ((v8 & 0xFFFFFFFC) == 0x100)
  {
    v19 = objc_msgSend_asNumberFormat(a2, v9, v10, v11, v12);
    TSCENumberFormat::TSCENumberFormat(&v55, v19, v20, v21, v22);
    v18 = v55;
    goto LABEL_5;
  }

  if (v8 > 267)
  {
    if (v8 == 269)
    {
      v43 = objc_msgSend_asBaseFormat(a2, v9, v10, v11, v12);
      TSCEBaseFormat::TSCEBaseFormat(&v52, v43, v44, v45, v46);
      *&this->_baseFormat.base = v52;
      this->_baseFormat.baseUseMinusSign = v53;
      return;
    }

    if (v8 == 268)
    {
      v28 = objc_msgSend_asDurationFormat(a2, v9, v10, v11, v12);
      TSCEDurationFormat::TSCEDurationFormat(&v54, v28, v30, v31, v32);
      this->_durationFormat = v54;
LABEL_20:
    }
  }

  else
  {
    if (v8 == 1)
    {
      v33 = objc_msgSend_asBooleanFormat(a2, v9, v10, v11, v12);
      v38 = objc_msgSend_trueString(v33, v34, v35, v36, v37);
      if (!v38)
      {
        v47 = objc_msgSend_falseString(v33, v39, v40, v41, v42);

        if (v47)
        {
          return;
        }

        v38 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v48, v49, v50, v51);
        this->_tskFormat = v38;
      }

      return;
    }

    if (v8 == 262)
    {
      v23 = objc_msgSend_asFractionFormat(a2, v9, v10, v11, v12);
      v28 = v23;
      if (v23)
      {
        v29 = objc_msgSend_fractionAccuracy(v23, v24, v25, v26, v27);
      }

      else
      {
        v29 = -3;
      }

      this->_fractionFormat.fractionAccuracy = v29;
      goto LABEL_20;
    }
  }
}

void TSCEFormat::createDefaultCurrencyUsingLocale(TSCEFormat *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *(a2 + 20) = -50266102;
  *(a2 + 24) = -3;
  *(a2 + 25) &= 0xE0u;
  *(a2 + 26) = 0;
  if (!v4)
  {
    v8 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "static TSCEFormat TSCEFormat::createDefaultCurrencyUsingLocale(TSULocale *__strong)", v6, v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v22, v12, 230, 0, "For currency, use the constructor that passes in a locale, and use the document locale.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    v4 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v18, v19, v20, v21);
  }

  *(a2 + 8) = 257;
  v23 = v4;
  *(a2 + 24) = TSCENumberFormat::defaultNumberFormatForCurrency(v4, v5);
}

double TSCEFormat::createCurrencyUsingNumberFormat@<D0>(TSCEFormat *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *&result = 4244701194;
  *(a2 + 20) = -50266102;
  *(a2 + 8) = 257;
  *(a2 + 24) = this->_tskFormat;
  return result;
}

uint64_t TSCEFormat::setFormatType(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  if ((a2 & 0xFFFFFFFC) == 0x100 && (*(result + 8) & 0xFFFFFFFC) == 0x100)
  {
    *(result + 8) = a2;
    *result = 0;
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEFormat::setFormatType(TSUFormatType)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 259, 0, "setFormatType() not allowed in general, type change attempted: %d -> %d", *(v6 + 8), a2);

    v18 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v18, v14, v15, v16, v17);
  }

  return result;
}

uint64_t TSCEFormat::TSCEFormat(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  *(a1 + 24) = *a3;
  if ((a2 & 0xFFFFFFFC) != 0x100)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormat::TSCEFormat(const TSUFormatType, const TSCENumberFormat &)", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 268, 0, "Creating a non-number formatType but initializing the numberFormat iVar.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return a1;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEFractionFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 262;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  this->_fractionFormat = a2->fractionAccuracy;
}

{
  this->_tskFormat = 0;
  this->_formatType = 262;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  this->_fractionFormat = a2->fractionAccuracy;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEBaseFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 269;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *&a2->base;
  this->_baseFormat.baseUseMinusSign = a2->baseUseMinusSign;
  *&this->_baseFormat.base = v2;
}

{
  this->_tskFormat = 0;
  this->_formatType = 269;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *&a2->base;
  this->_baseFormat.baseUseMinusSign = a2->baseUseMinusSign;
  *&this->_baseFormat.base = v2;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEDurationFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 268;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *a2;
  *(&this->_durationFormat + 2) = *(a2 + 2);
  *&this->_durationFormat = v2;
}

{
  this->_tskFormat = 0;
  this->_formatType = 268;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *a2;
  *(&this->_durationFormat + 2) = *(a2 + 2);
  *&this->_durationFormat = v2;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 0;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  if (this != a2)
  {
    this->_formatType = a2->_formatType;
    this->_tskFormat = a2->_tskFormat;
    this->_formatState = a2->_formatState;
    this->_fractionFormat.fractionAccuracy = a2->_fractionFormat.fractionAccuracy;
    v2 = *&a2->_baseFormat.base;
    this->_baseFormat.baseUseMinusSign = a2->_baseFormat.baseUseMinusSign;
    *&this->_baseFormat.base = v2;
    durationFormat = a2->_durationFormat;
    *(&this->_durationFormat + 2) = *(&a2->_durationFormat + 2);
    *&this->_durationFormat = durationFormat;
    this->_numberFormat = a2->_numberFormat;
  }
}

uint64_t TSCEFormat::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
    *result = *a2;
    *(result + 12) = *(a2 + 12);
    *(result + 23) = *(a2 + 23);
    v2 = *(a2 + 20);
    *(result + 22) = *(a2 + 22);
    *(result + 20) = v2;
    v3 = *(a2 + 16);
    *(result + 18) = *(a2 + 18);
    *(result + 16) = v3;
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

BOOL TSCEFormat::dateTimeFormatHasTimePortion(TSCEFormat *this, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], a2, this, a4, a5);
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9) != 0;

  return v10;
}

BOOL TSCEFormat::dateTimeFormatHasDatePortion(TSCEFormat *this, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], a2, this, a4, a5);
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9) != 0;

  return v10;
}

void TSCEFormat::formatByMergingWithFormat(TSCEFormat *this@<X0>, TSCEFormat *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  formatType = this->_formatType;
  if (formatType == 254)
  {
    goto LABEL_3;
  }

  v9 = a2->_formatType;
  if (v9 == 254)
  {
    goto LABEL_3;
  }

  if (formatType)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  if ((formatType & 0xFFFFFFFC) != 0x100)
  {
    if (formatType == v9)
    {
      goto LABEL_9;
    }

LABEL_3:
    *a6 = 0;
    *(a6 + 8) = 254;
    *(a6 + 12) = 0;
    *(a6 + 16) = *(a6 + 16) & 0xC080 | 0x421;
    *(a6 + 18) = *(a6 + 18) & 0xF8 | 1;
    *(a6 + 20) = -50266102;
    *(a6 + 24) = -3;
    *(a6 + 25) &= 0xE0u;
    *(a6 + 26) = 0;
    return;
  }

  if ((v9 & 0xFFFFFFFC) != 0x100)
  {
    goto LABEL_3;
  }

LABEL_9:
  formatState = this->_formatState;
  v13 = a2->_formatState;
  if (!TSCEFormat::isEqual(this, a2, a3, a4, a5))
  {
    if (!formatState && v13)
    {
      v14 = a6;
      v15 = a2;
      goto LABEL_17;
    }

    if (!formatState || v13)
    {
      sub_221489CB0(a6);
      v20 = this->_formatType;
      v21 = a2->_formatType;
      if (!v20)
      {
        if (v21 != 271)
        {
          if (a6 != a2)
          {
            *(a6 + 8) = v21;
            *a6 = a2->_tskFormat;
            *(a6 + 16) = a2->_durationFormat;
            *(a6 + 18) = *(&a2->_durationFormat + 2);
            v26 = *&a2->_baseFormat.base;
            numberFormat = a2->_numberFormat;
LABEL_93:
            *(a6 + 20) = v26;
            *(a6 + 24) = numberFormat;
            goto LABEL_94;
          }

          goto LABEL_94;
        }

        *(a6 + 8) = 260;
        *a6 = 0;
        goto LABEL_37;
      }

      if (v21)
      {
        if ((v20 & 0xFFFFFFFC) == 0x100)
        {
          if (v20 == v21)
          {
            v22 = v20;
          }

          else
          {
            v22 = 256;
          }

          decimalPlaces = this->_numberFormat.decimalPlaces;
          v24 = a2->_numberFormat.decimalPlaces;
          if (decimalPlaces == 254)
          {
            LOBYTE(v109) = a2->_numberFormat.decimalPlaces;
          }

          else
          {
            if (v24 != 254 && decimalPlaces != v24)
            {
              LOBYTE(decimalPlaces) = -1;
            }

            LOBYTE(v109) = decimalPlaces;
          }

          v28 = *(&this->_numberFormat + 1);
          v29 = v28 & 7;
          v30 = *(&a2->_numberFormat + 1);
          if ((v28 & 7) != (v30 & 7))
          {
            v29 = 0;
          }

          if (((v28 >> 3) & 1) == ((v30 >> 3) & 1))
          {
            v31 = 8 * ((v28 & 8) != 0);
          }

          else
          {
            v31 = 0;
          }

          v32 = v29 | v31;
          currencyCodeIndex = this->_numberFormat.currencyCodeIndex;
          if (currencyCodeIndex != a2->_numberFormat.currencyCodeIndex)
          {
            LOWORD(currencyCodeIndex) = 0;
          }

          HIWORD(v109) = currencyCodeIndex;
          v34 = (v28 >> 4) & 1;
          if (v34 == ((v30 >> 4) & 1))
          {
            v35 = 16 * v34;
          }

          else
          {
            v35 = 0;
          }

          BYTE1(v109) = v32 | v35;
          TSCEFormat::TSCEFormat(&v108, v22, &v109, v18, v19);
          if (&v108 == a6)
          {
            goto LABEL_94;
          }

          *(a6 + 8) = v108._formatType;
          *a6 = v108._tskFormat;
          *(a6 + 12) = v108._formatState;
          *(a6 + 16) = v108._durationFormat;
          v26 = *&v108._baseFormat.base;
          numberFormat = v108._numberFormat;
          goto LABEL_93;
        }

        if (v20 <= 268)
        {
          if (v20 > 261)
          {
            if (v20 != 262)
            {
              if (v20 != 268)
              {
                goto LABEL_91;
              }

              durationFormat = this->_durationFormat;
              v59 = a2->_durationFormat;
              v60 = (*&v59 >> 8) & 0x3F;
              if (((*&durationFormat >> 8) & 0x3F) < v60)
              {
                LOWORD(v60) = HIBYTE(*&this->_durationFormat) & 0x3F;
              }

              v61 = (*&v59 >> 8) & 0x3F;
              if (!v61)
              {
                LOWORD(v60) = HIBYTE(*&this->_durationFormat) & 0x3F;
              }

              if (((*&durationFormat >> 8) & 0x3F) == 0)
              {
                LOWORD(v60) = v61;
              }

              v62 = (*&v59 >> 1) & 0x3F;
              if (((*&durationFormat >> 1) & 0x3F) > v62)
              {
                v62 = (*&durationFormat >> 1) & 0x3F;
              }

              v63 = (*&v59 >> 1) & 0x3F;
              if (!v63)
              {
                v62 = (*&durationFormat >> 1) & 0x3F;
              }

              if (((*&durationFormat >> 1) & 0x3F) != 0)
              {
                v64 = v62;
              }

              else
              {
                v64 = v63;
              }

              v65 = *(&this->_durationFormat + 2) & 7;
              if (v65 != (*(&a2->_durationFormat + 2) & 7))
              {
                LOBYTE(v65) = 1;
              }

              *(a6 + 8) = 268;
              *a6 = 0;
              *(a6 + 12) = 0;
              *(a6 + 20) = -50266102;
              *(a6 + 16) = *&durationFormat & *&v59 & 1 | (2 * v64) | (v60 << 8);
              *(a6 + 18) = v65;
LABEL_39:
              *(a6 + 24) = 253;
              goto LABEL_94;
            }

            fractionAccuracy = this->_fractionFormat.fractionAccuracy;
            if (fractionAccuracy != a2->_fractionFormat.fractionAccuracy)
            {
              LOBYTE(fractionAccuracy) = 0;
            }

            *(a6 + 8) = 262;
            *a6 = 0;
            *(a6 + 12) = 0;
            *(a6 + 23) = fractionAccuracy;
            *(a6 + 20) = 10;
            *(a6 + 22) = 1;
          }

          else
          {
            if (v20 != 1)
            {
              if (v20 == 261)
              {
                v36 = TSCEFormat::dateTimeFormat(this, v16, v17, v18, v19);
                v41 = objc_msgSend_formatString(v36, v37, v38, v39, v40);
                v46 = TSCEFormat::dateTimeFormat(a2, v42, v43, v44, v45);
                v55 = objc_msgSend_formatString(v46, v47, v48, v49, v50);
                if (v41 == v55)
                {
                  v57 = objc_msgSend_formatString(v36, v51, v52, v53, v54);
                }

                else
                {
                  v56 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v51, v52, v53, v54);
                  v57 = TSUDefaultDateTimeFormat();
                }

                v100 = objc_alloc(MEMORY[0x277D80658]);
                v104 = objc_msgSend_initWithFormatString_(v100, v101, v57, v102, v103);
                TSCEFormat::TSCEFormat(&v108, v104, 0, v105, v106);
                if (&v108 != a6)
                {
                  *(a6 + 8) = v108._formatType;
                  *a6 = v108._tskFormat;
                  *(a6 + 12) = v108._formatState;
                  *(a6 + 16) = v108._durationFormat;
                  v107 = v108._numberFormat;
                  *(a6 + 20) = *&v108._baseFormat.base;
                  *(a6 + 24) = v107;
                }

                goto LABEL_94;
              }

LABEL_91:
              if (a6 != this)
              {
                goto LABEL_92;
              }

              goto LABEL_94;
            }

            v86 = TSCEFormat::BOOLeanFormat(this, v16, v17, v18, v19);
            v91 = TSCEFormat::BOOLeanFormat(a2, v87, v88, v89, v90);
            if (v86 && v91 && (objc_msgSend_isEqual_(v86, v92, v91, v93, v94) & 1) != 0)
            {
LABEL_89:
              if (a6 != this)
              {
                v20 = this->_formatType;
LABEL_92:
                *(a6 + 8) = v20;
                *a6 = this->_tskFormat;
                *(a6 + 12) = this->_formatState;
                *(a6 + 16) = this->_durationFormat;
                *(a6 + 18) = *(&this->_durationFormat + 2);
                v26 = *&this->_baseFormat.base;
                numberFormat = this->_numberFormat;
                goto LABEL_93;
              }

LABEL_94:
              *(a6 + 12) = 2 * (formatState != 0);
              return;
            }

            *(a6 + 8) = 1;
            *a6 = 0;
            *(a6 + 12) = 0;
            *(a6 + 20) = -50266102;
          }

          *(a6 + 16) = 1057;
LABEL_38:
          *(a6 + 18) = 1;
          goto LABEL_39;
        }

        if (v20 <= 270)
        {
          if (v20 == 269)
          {
            base = this->_baseFormat.base;
            if (base != a2->_baseFormat.base)
            {
              LOBYTE(base) = -1;
            }

            if (this->_baseFormat.basePlaces == a2->_baseFormat.basePlaces)
            {
              basePlaces = this->_baseFormat.basePlaces;
            }

            else
            {
              basePlaces = -1;
            }

            baseUseMinusSign = this->_baseFormat.baseUseMinusSign;
            v99 = a2->_baseFormat.baseUseMinusSign != baseUseMinusSign;
            *(a6 + 8) = 269;
            *a6 = 0;
            *(a6 + 12) = 0;
            *(a6 + 23) = -3;
            *(a6 + 20) = base;
            *(a6 + 21) = basePlaces;
            *(a6 + 22) = v99 || baseUseMinusSign;
            *(a6 + 16) = 1057;
            *(a6 + 18) = 1;
            *(a6 + 24) = 253;
            goto LABEL_94;
          }

LABEL_88:
          v66 = TSCEFormat::customFormat(this, v16, v17, v18, v19);
          v71 = objc_msgSend_customFormatKey(v66, v67, v68, v69, v70);
          v76 = TSCEFormat::customFormat(a2, v72, v73, v74, v75);
          v81 = objc_msgSend_customFormatKey(v76, v77, v78, v79, v80);
          isEqual = objc_msgSend_isEqual_(v71, v82, v81, v83, v84);

          if (isEqual)
          {
            goto LABEL_89;
          }

          v25 = 254;
          goto LABEL_36;
        }

        if (v20 != 271)
        {
          if (v20 != 272 && v20 != 274)
          {
            goto LABEL_91;
          }

          goto LABEL_88;
        }
      }

      else if (v20 != 271)
      {
        goto LABEL_91;
      }

      v25 = 260;
LABEL_36:
      *(a6 + 8) = v25;
      *a6 = 0;
      *(a6 + 12) = 0;
LABEL_37:
      *(a6 + 20) = -50266102;
      *(a6 + 16) = 1057;
      goto LABEL_38;
    }
  }

  v14 = a6;
  v15 = this;
LABEL_17:

  TSCEFormat::TSCEFormat(v14, v15);
}

BOOL TSCEFormat::isEqual(TSCEFormat *this, TSCEFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((this->_formatState == 1) != (a2->_formatState == 1))
  {
    return 0;
  }

  if (this->_tskFormat)
  {
    v6 = this->_tskFormat == a2->_tskFormat;
  }

  else
  {
    v6 = 0;
  }

  return v6 || TSCEFormat::isEqualNotCountingExplicitness(this, a2, a3, a4, a5);
}

uint64_t TSCEFormat::dateTimeFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->_formatType != 261)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKDateTimeFormat *TSCEFormat::dateTimeFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 603, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asDateTimeFormat(tskFormat, a2, a3, a4, a5);
}

uint64_t TSCEFormat::customFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = this->_formatType - 270;
  if (v6 > 4 || v6 == 3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKCustomFormatWrapper *TSCEFormat::customFormat() const", a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 608, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asCustomFormatWrapper(tskFormat, a2, a3, a4, a5);
}

uint64_t TSCEFormat::BOOLeanFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->_formatType != 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKBooleanFormat *TSCEFormat::BOOLeanFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 613, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asBooleanFormat(tskFormat, a2, a3, a4, a5);
}

void TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(TSCEFormat *this@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, TSCEFormat *a4@<X8>)
{
  formatType = this->_formatType;
  if ((formatType & 0xFFFFFFFC) == 0x100)
  {
    v8 = v4;
    v9 = v5;
    numberFormat = this->_numberFormat;
    numberFormat.decimalPlaces = -2;
    TSCEFormat::TSCEFormat(a4, formatType, &numberFormat, a2, a3);
  }

  else
  {

    TSCEFormat::TSCEFormat(a4, this);
  }
}

void TSCEFormat::formatBySmashingConflicts(TSCEFormat *this@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  formatType = this->_formatType;
  if (formatType == 254)
  {
    goto LABEL_2;
  }

  if ((formatType & 0xFFFFFFFC) == 0x100)
  {
    if (formatType == 257)
    {
      if (!this->_numberFormat.currencyCodeIndex)
      {
LABEL_2:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 12) = 0;
        *(a4 + 16) = *(a4 + 16) & 0xC080 | 0x421;
        *(a4 + 18) = *(a4 + 18) & 0xF8 | 1;
        *(a4 + 20) = -50266102;
LABEL_3:
        *(a4 + 24) = -3;
        *(a4 + 25) &= 0xE0u;
        *(a4 + 26) = 0;
        return;
      }

      if (this->_numberFormat.decimalPlaces > 0xFDu)
      {
        numberFormat = this->_numberFormat;
        v7 = MEMORY[0x277D81228];
        v8 = TSUCurrencyCodeForIndex();
        numberFormat.decimalPlaces = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(v7, v9, v8, v10, v11);

        formatType = this->_formatType;
LABEL_15:
        TSCEFormat::TSCEFormat(a4, formatType, &numberFormat, a2, a3);
        return;
      }
    }

    else if (this->_numberFormat.decimalPlaces > 0xFDu)
    {
      numberFormat = this->_numberFormat;
      numberFormat.decimalPlaces = -3;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (formatType != 269)
  {
    if (formatType == 262 && !this->_fractionFormat.fractionAccuracy)
    {
      *a4 = 0;
      *(a4 + 8) = 262;
      *(a4 + 12) = 0;
      *(a4 + 16) = *(a4 + 16) & 0xC080 | 0x421;
      *(a4 + 18) = *(a4 + 18) & 0xF8 | 1;
      *(a4 + 20) = -50266102;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  base = this->_baseFormat.base;
  basePlaces = this->_baseFormat.basePlaces;
  if (base != 255 && basePlaces != 255)
  {
LABEL_18:

    TSCEFormat::TSCEFormat(a4, this);
    return;
  }

  baseUseMinusSign = this->_baseFormat.baseUseMinusSign;
  if (base == 255)
  {
    LOBYTE(base) = 10;
  }

  if (basePlaces == 255)
  {
    LOBYTE(basePlaces) = 0;
  }

  *a4 = 0;
  *(a4 + 8) = 269;
  *(a4 + 12) = 0;
  *(a4 + 16) = *(a4 + 16) & 0xC080 | 0x421;
  *(a4 + 18) = *(a4 + 18) & 0xF8 | 1;
  *(a4 + 23) = -515;
  *(a4 + 25) &= 0xE0u;
  *(a4 + 26) = 0;
  *(a4 + 20) = base;
  *(a4 + 21) = basePlaces;
  *(a4 + 22) = baseUseMinusSign;
}

BOOL TSCEFormat::isEqualNotCountingExplicitness(TSCEFormat *this, TSCEFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  formatType = this->_formatType;
  if (formatType == a2->_formatType)
  {
    v7 = 1;
    switch(formatType)
    {
      case 0xFEu:
      case 0x104u:
      case 0x107u:
      case 0x10Bu:
        return v7;
      case 0xFFu:
      case 0x108u:
      case 0x109u:
      case 0x10Au:
      case 0x111u:
        goto LABEL_5;
      case 0x100u:
      case 0x102u:
        goto LABEL_11;
      case 0x101u:
        if (this->_numberFormat.currencyCodeIndex != a2->_numberFormat.currencyCodeIndex || ((*(&a2->_numberFormat + 1) ^ *(&this->_numberFormat + 1)) & 0x10) != 0)
        {
          return 0;
        }

LABEL_11:
        if (((*(&a2->_numberFormat + 1) ^ *(&this->_numberFormat + 1)) & 0xF) == 0)
        {
          goto LABEL_12;
        }

        return 0;
      case 0x103u:
LABEL_12:
        if (this->_numberFormat.decimalPlaces != a2->_numberFormat.decimalPlaces)
        {
          return 0;
        }

        return v7;
      case 0x105u:
        v9 = TSCEFormat::dateTimeFormat(this, a2, a3, a4, a5);
        v14 = objc_msgSend_formatString(v9, v45, v46, v47, v48);
        v19 = TSCEFormat::dateTimeFormat(a2, v49, v50, v51, v52);
        v24 = objc_msgSend_formatString(v19, v53, v54, v55, v56);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v57, v24, v58, v59);
        goto LABEL_19;
      case 0x106u:
        fractionAccuracy = this->_fractionFormat.fractionAccuracy;
        baseUseMinusSign = a2->_fractionFormat.fractionAccuracy;
        return fractionAccuracy == baseUseMinusSign;
      case 0x10Cu:
        p_durationFormat = &this->_durationFormat;
        v44 = &a2->_durationFormat;

        return TSCEDurationFormat::isEqualIgnoringAuto(p_durationFormat, v44);
      case 0x10Du:
        if (this->_baseFormat.base != a2->_baseFormat.base || this->_baseFormat.basePlaces != a2->_baseFormat.basePlaces)
        {
          return 0;
        }

        fractionAccuracy = this->_baseFormat.baseUseMinusSign;
        baseUseMinusSign = a2->_baseFormat.baseUseMinusSign;
        return fractionAccuracy == baseUseMinusSign;
      case 0x10Eu:
      case 0x10Fu:
      case 0x110u:
      case 0x112u:
        v9 = TSCEFormat::customFormat(this, a2, a3, a4, a5);
        v14 = objc_msgSend_customFormatKey(v9, v10, v11, v12, v13);
        v19 = TSCEFormat::customFormat(a2, v15, v16, v17, v18);
        v24 = objc_msgSend_customFormatKey(v19, v20, v21, v22, v23);
        isEqualToString = objc_msgSend_isEqual_(v14, v25, v24, v26, v27);
LABEL_19:
        v7 = isEqualToString;

        return v7;
      default:
        if (formatType < 2)
        {
          return v7;
        }

LABEL_5:
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSCEFormat::isEqualNotCountingExplicitness(const TSCEFormat &) const", a4, a5);
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v32, v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 573, 0, "Trying to compare unexpected type %d.", this->_formatType);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
        return 0;
    }
  }

  return 0;
}

void sub_221489484(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

uint64_t TSCEFormat::numberFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((this->_formatType & 0xFFFFFFFC) != 0x100)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCENumberFormat TSCEFormat::numberFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 583, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return this->_numberFormat;
}

uint64_t TSCEFormat::fractionFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->_formatType != 262)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFractionFormat TSCEFormat::fractionFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 588, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return this->_fractionFormat.fractionAccuracy;
}

uint64_t TSCEFormat::baseFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->_formatType != 269)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEBaseFormat TSCEFormat::baseFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 593, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return *&this->_baseFormat.base | (this->_baseFormat.baseUseMinusSign << 16);
}

uint64_t TSCEFormat::durationFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this->_formatType != 268)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEDurationFormat TSCEFormat::durationFormat() const", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 598, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return this->_durationFormat;
}

id TSCEFormat::tskFormat(TSCEFormat *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  tskFormat = this->_tskFormat;
  if (this->_tskFormat)
  {
    goto LABEL_24;
  }

  formatType = this->_formatType;
  if (formatType > 261)
  {
    if (formatType <= 266)
    {
      if (formatType == 262)
      {
        v12 = objc_alloc(MEMORY[0x277D80688]);
        v8 = objc_msgSend_initWithFractionAccuracy_(v12, v13, this->_fractionFormat.fractionAccuracy, v14, v15);
        goto LABEL_23;
      }

      if (formatType != 263)
      {
        goto LABEL_24;
      }
    }

    else if (formatType != 267)
    {
      if (formatType == 268)
      {
        v16 = TSCEFormat::durationFormat(this, formatType, a3, a4, a5);
        *&v21 = v16;
        *(&v21 + 2) = BYTE2(v16);
        v8 = TSCEDurationFormat::asTSKDurationFormat(&v21);
      }

      else
      {
        if (formatType != 269)
        {
          goto LABEL_24;
        }

        v9 = TSCEFormat::baseFormat(this, formatType, a3, a4, a5);
        v10 = objc_alloc(MEMORY[0x277D80620]);
        v8 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v10, v11, v9, BYTE1(v9), HIWORD(v9) & 1);
      }

      goto LABEL_23;
    }

LABEL_19:
    objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], formatType, formatType, 0, a5);
    v8 = LABEL_20:;
    goto LABEL_23;
  }

  if (formatType > 257)
  {
    if ((formatType - 258) < 2)
    {
LABEL_14:
      v8 = TSCENumberFormat::asTSKNumberFormat(&this->_numberFormat.decimalPlaces, formatType);
LABEL_23:
      this->_tskFormat = v8;

      tskFormat = this->_tskFormat;
      goto LABEL_24;
    }

    if (formatType != 260)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (formatType != 1)
  {
    if (formatType != 256)
    {
      if (formatType != 257)
      {
        goto LABEL_24;
      }

      v8 = TSCENumberFormat::asTSKCurrencyFormat(&this->_numberFormat);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  tskFormat = TSCEFormat::BOOLeanFormat(this, formatType, a3, a4, a5);

  if (!tskFormat)
  {
    objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v19, 1, 0, v20);
    goto LABEL_20;
  }

LABEL_24:
  v17 = tskFormat;

  return v17;
}

void TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(TSCEFormat *this@<X0>, TSCEFormat *a2@<X1>, TSCENumberValue *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  TSCEFormat::TSCEFormat(a4, this);
  if (objc_msgSend_hasUnits(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_dimension(v8, v14, v15, v16, v17);
    v19 = v18 == 4;
    v21 = (a4 + 8);
    v20 = *(a4 + 8);
    if (v20 != 274)
    {
      v22 = 0;
      if (v18 != 4)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (v20 != 257)
      {
        if ((v20 & 0xFFFFFFFC) == 0x100)
        {
          v43 = TSCEFormat::numberFormat(a4, v14, v15, v16, v17);
          *(a4 + 8) = 257;
          *a4 = 0;
          *(a4 + 12) = 0;
          *(a4 + 20) = -50266102;
          *(a4 + 16) = 1057;
          *(a4 + 18) = 1;
          *(a4 + 24) = v43;
        }

        else
        {
          TSCEFormat::createDefaultCurrencyUsingLocale(v9, &v62);
          *(a4 + 8) = v62._formatType;
          *a4 = v62._tskFormat;
          *(a4 + 12) = v62._formatState;
          *(a4 + 16) = v62._durationFormat;
          numberFormat = v62._numberFormat;
          *(a4 + 20) = *&v62._baseFormat.base;
          *(a4 + 24) = numberFormat;
        }
      }

      if ((*v21 & 0xFFFFFFFC) == 0x100)
      {
        v46 = TSCEFormat::numberFormat(a4, v14, v15, v16, v17);
      }

      else
      {
        TSCEFormat::createDefaultCurrencyUsingLocale(v9, &v62);
        v46 = TSCEFormat::numberFormat(&v62, v51, v52, v53, v54);
      }

      v55 = v46;
      v56 = objc_msgSend_unit(v8, v47, v48, v49, v50);
      v60 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v57, v56, v58, v59);
      v61 = TSUCurrencyCodeIndexForCode();

      v44 = v55 | (v61 << 16);
      *v21 = 257;
      goto LABEL_24;
    }
  }

  else
  {
    v21 = (a4 + 8);
    v20 = *(a4 + 8);
    if (v20 != 274)
    {
      v22 = 0;
      goto LABEL_16;
    }

    v19 = 0;
  }

  v23 = TSCEFormat::tskFormat(a4, v14, v15, v16, v17);
  v28 = objc_msgSend_asCustomFormatWrapper(v23, v24, v25, v26, v27);
  v62._tskFormat = objc_msgSend_decimalRepresentation(v8, v29, v30, v31, v32);
  *&v62._formatType = v33;
  TSUDecimal::doubleValue(&v62);
  v22 = objc_msgSend_currencyCodeForValue_(v28, v34, v35, v36, v37);

  if (v19)
  {
    if (v22)
    {
      v38 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v14, v22, v16, v17);
      if (v38 == objc_msgSend_unit(v8, v39, v40, v41, v42))
      {
        goto LABEL_25;
      }
    }

    v20 = *v21;
    goto LABEL_11;
  }

  v20 = *v21;
LABEL_16:
  if (v20 == 257 || v22)
  {
    *v21 = 0;
    v44 = 253;
LABEL_24:
    *a4 = 0;
    *(a4 + 12) = 0;
    *(a4 + 20) = -50266102;
    *(a4 + 16) = 1057;
    *(a4 + 18) = 1;
    *(a4 + 24) = v44;
  }

LABEL_25:
}

double sub_221489CB0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *&result = 4244701194;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  return result;
}

id sub_22148AE2C(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221089E98(a2, a3, *(a1 + 32));

  return v3;
}

id sub_22148AE74(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_2214D559C(a2, a3);

  return v3;
}

id sub_22148AEB4(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_2214D5950(a2, a3);

  return v3;
}

id sub_22148B52C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(a2, a2, a3, a4, a5);

  return v5;
}

id sub_22148B6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(a2, a2, a3, *(a1 + 32), a5);

  return v5;
}

uint64_t sub_22148C95C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22148C984(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = a2;
  objc_msgSend_setAllowsMissingPropertiesWithNoParentStyleForUpgrade_(*(*(*(a1 + 32) + 8) + 40), v4, 1, v5, v6);
}

void sub_22148CA04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setCellStyle_textStyle_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40), a5);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_22148CA88(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = a2;
  objc_msgSend_setAllowsMissingPropertiesWithNoParentStyleForUpgrade_(*(*(*(a1 + 32) + 8) + 40), v4, 1, v5, v6);
}

void sub_22148CB08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setCellStyle_textStyle_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40), a5);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_22148D98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22148EB9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_nilValue(TSCENilValue, a2, a3, a4, a5);
  v6 = qword_27CFB5638;
  qword_27CFB5638 = v5;
}

void sub_221490014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCETrackedReference;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_221490850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_221490874(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

__n128 sub_22149088C(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = *a2;
  v3[4].n128_u64[0] = a2[1].n128_u64[0];
  v3[3] = result;
  *a3 = 1;
  return result;
}

__n128 sub_221491114(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, __n128 *a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  v5->n128_u64[0] = &unk_2834A8738;
  v5[8].n128_u8[8] = 0;
  result = *a4;
  v5[9] = *a4;
  return result;
}

uint64_t sub_221491160(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) || *(a1 + 152))
  {
    (*(*a2 + 144))(a2, a1 + 144, a1);
  }

  *(a1 + 136) = 1;
  return a2;
}

void sub_2214911D4(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_221491480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);

  _Unwind_Resume(a1);
}

double sub_2214914C4(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 96);
  v3 = *(a1 + 72) * *(a1 + 80);
  v4 = **(a1 + 64);
  *(v4 + 8 * v2) = v3;
  v5 = **(a1 + 88);
  v6 = *(v5 + 8 * v2);
  if (v3 < v6)
  {
    *(v4 + 8 * v2) = v6;
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - *(v5 + 8 * v2);
    --*(*(*(a1 + 48) + 8) + 24);
    v3 = *(v4 + 8 * v2);
  }

  v7 = *(*(a1 + 56) + 8);
  result = v3 - *(a1 + 72) + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

void sub_22149166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221491688(uint64_t result, int a2)
{
  v2 = a2 - *(result + 64);
  v3 = **(result + 40);
  v4 = *(v3 + 8 * v2);
  v5 = *(**(result + 56) + 8 * v2);
  if (*(result + 48) >= v5)
  {
    v5 = *(result + 48);
  }

  *(v3 + 8 * v2) = v5;
  if (v5 != v4)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_221491A58(void *a1, TSCEFormulaRewriteContext *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    v9 = v7;
    v18 = v9;
    if ((objc_msgSend_translationFlags(v9, v10, v11, v12, v13) & 0x40) != 0)
    {
      v19 = a2->var0;
      var0 = TSCEFormulaRewriteContext::containingCell(a2)->var0.var0;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v41, v19, &var0);

      v18 = objc_msgSend_copyByConvertingColonToColonTract_(v9, v20, &v41, v21, v22);
    }

    v23 = objc_msgSend_astNodeArrayCopy(v18, v14, v15, v16, v17);
    sub_221491C74(&v41, v23, a2, v8, a4);
    TSCEASTStreamIterator::rewrite(&v41, v24, v25, v26, v27);
    if (v41.var2.var4)
    {
      v28 = v42;
      v42 = 0;
      v29 = [TSCEFormulaObject alloc];
      v34 = objc_msgSend_translationFlags(v18, v30, v31, v32, v33);
      v37 = objc_msgSend_initWithNodeArray_translationFlags_(v29, v35, v28, v34, v36);

      TSCEASTNodeArray::freeNodeArray(v28, v38);
    }

    else
    {
      v37 = v9;
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v41, v39);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void sub_221491C38(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

TSCEASTStreamIterator *sub_221491C74(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A88A8;
  *(a1 + 17) = v9;
  *(a1 + 18) = a5;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_221491CFC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
    upper = v13;
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  v14 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v8, v9, v10);
  v51._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v18 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, v14, &v51, v16, v17);
  v19 = *(a1 + 136);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v20 = sub_221089E8C(a1);
  v23 = objc_msgSend_coordMapperForTableUID_calcEngine_(v19, v21, &tableUID, v20, v22);

  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = lower;
    tableUID._upper = upper;
    v28 = *(a1 + 136);
    v29 = sub_221089E8C(a1);
    v27 = objc_msgSend_coordMapperForTableUID_calcEngine_(v28, v30, &tableUID, v29, v31);

    if (!v27)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v27 = v23;
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  v32 = *(a1 + 144);
  if (v32 == 1)
  {
    v33 = objc_msgSend_viewCellCoordForBaseCellCoord_(v27, v24, v18, v25, v26);
    v34 = *(a1 + 8);
    if (v23)
    {
      v40 = TSCEFormulaRewriteContext::containingCell(v34);
      v39 = objc_msgSend_viewCellCoordForBaseCellCoord_(v23, v41, *v40, v42, v43);
      goto LABEL_15;
    }

LABEL_14:
    v39 = TSCEFormulaRewriteContext::containingCell(v34)->var0.var0.coordinate;
    goto LABEL_15;
  }

  if (v32 == 2)
  {
    v33 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v27, v24, v18, v25, v26);
    v34 = *(a1 + 8);
    if (v23)
    {
      v35 = TSCEFormulaRewriteContext::containingCell(v34);
      v39 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v23, v36, *v35, v37, v38);
LABEL_15:
      TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v44 = &v51;
      v45 = v33;
      tableUID._lower = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v39, v45, v44, v46);
      TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &tableUID, a1, v47, v48);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_16:

  return a2;
}

TSCEASTColonTractElement *sub_221491F8C(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  lower = 0;
  v62 = 0;
  if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
  {
    lower = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
  }

  else
  {
    v17 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    upper = v17->var0.var0._tableUID._upper;
    lower = v17->var0.var0._tableUID._lower;
  }

  v62 = upper;
  tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v21 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v18, &tableUID, v19, v20);
  if (objc_msgSend_isValid(v21, v22, v23, v24, v25))
  {
    v26 = a1[17];
    v27 = sub_221089E8C(a1);
    v30 = objc_msgSend_coordMapperForTableUID_calcEngine_(v26, v28, &lower, v27, v29);

    v31 = a1[17];
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v32 = sub_221089E8C(a1);
    v35 = objc_msgSend_coordMapperForTableUID_calcEngine_(v31, v33, &tableUID, v32, v34);

    v40 = a1[18];
    if (v40 == 1)
    {
      if (v30)
      {
        v42 = objc_msgSend_viewTractRefForBaseTractRef_(v30, v36, v21, v38, v39);
      }

      else
      {
        v42 = objc_msgSend_copy(v21, v36, v37, v38, v39);
      }

      v43 = v42;
      coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      if (v35)
      {
        coordinate = objc_msgSend_viewCellCoordForBaseCellCoord_(v35, v52, coordinate, v53, v54);
      }

      TSCEFormulaRewriteContext::containingCell(a1[1]);
      v56 = [TSCERelativeTractRef alloc];
      tableUID._lower = coordinate;
      v51 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v56, v57, v43, &tableUID, v58);
      if (!v51)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v40 != 2)
      {
LABEL_22:

        goto LABEL_23;
      }

      if (v30)
      {
        v41 = objc_msgSend_chromeTractRefForBaseTractRef_(v30, v36, v21, v38, v39);
      }

      else
      {
        v41 = objc_msgSend_copy(v21, v36, v37, v38, v39);
      }

      v43 = v41;
      v47 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      if (v35)
      {
        v47 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v35, v44, v47, v45, v46);
      }

      TSCEFormulaRewriteContext::containingCell(a1[1]);
      v48 = [TSCERelativeTractRef alloc];
      tableUID._lower = v47;
      v51 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v48, v49, v43, &tableUID, v50);
      if (!v51)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    TSCEASTColonTractElement::setRelativeTractRef(this, v51, v7, a1, 0);
    goto LABEL_21;
  }

LABEL_23:

  return this;
}

void sub_221492290(TSCEFormulaRewriteContext *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v7 = a3;
  v8 = TSCEFormulaRewriteContext::containingCell(a1);
  *a4 = *&v8->var0.var0.coordinate.row;
  *(a4 + 2) = v8->var0.var0._tableUID._upper;
  tableUID = v8->var0.var0._tableUID;
  v13 = objc_msgSend_srcCoordMapper(v7, v9, v10, v11, v12);
  v17 = v13;
  if (!v13)
  {
    v18 = a1->var0;
    v24 = objc_msgSend_coordMapperForTableUID_calcEngine_(v7, v19, &tableUID, v18, v20);
    if (!v24)
    {
      if (!v18 || (objc_msgSend_tableOrLinkedResolverForTableUID_(v18, v21, &tableUID, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), (v27 = v25) == 0) || (objc_msgSend_coordMapper(v25, v21, v26, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v27, !v24))
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "static TSCECellRef TSTConvertFormulasToBaseForCategoriesRewriter::convertedContainingCellRefForColonTractRewrites(TSCEFormulaRewriteContext &, TSTFormulaCoordinateSpace, TSTFormulaRewriteSpec *__strong)", v22, v23);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v31, v32);
        v34 = TSKUIDStruct::description(&tableUID);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v29, v33, 245, 0, "convertedContainingCellRefForColonTractRewrites: No coordMapper found for tableUID: %@", v34);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
LABEL_18:

        goto LABEL_19;
      }
    }

    v42 = *a4;
    v43 = *(a4 + 2);
    if (a2 == 2)
    {
      objc_msgSend_chromeCellRefForBaseCellRef_(v24, v21, &v42, v22, v23);
    }

    else
    {
      if (a2 != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      objc_msgSend_viewCellRefForBaseCellRef_(v24, v21, &v42, v22, v23);
    }

    *a4 = v40;
    *(a4 + 2) = v41;
    goto LABEL_17;
  }

  v42 = *a4;
  v43 = *(a4 + 2);
  if (a2 == 2)
  {
    objc_msgSend_chromeCellRefForBaseCellRef_(v13, v14, &v42, v15, v16);
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    objc_msgSend_viewCellRefForBaseCellRef_(v13, v14, &v42, v15, v16);
LABEL_10:
    *a4 = v40;
    *(a4 + 2) = v41;
  }

LABEL_19:
}

id sub_22149252C(void *a1, TSCEFormulaRewriteContext *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = a3;
  if (v9)
  {
    v11 = v9;
    v12 = a2->var0;
    v21 = v11;
    if ((objc_msgSend_translationFlags(v11, v13, v14, v15, v16) & 0x40) != 0)
    {
      sub_221492290(a2, a4, v10, &v49);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v44, v12, &v49);
      v21 = objc_msgSend_copyByConvertingColonToColonTract_(v11, v22, &v44, v23, v24);
    }

    v25 = objc_msgSend_astNodeArrayCopy(v21, v17, v18, v19, v20);
    sub_22149296C(&v44, v25, a2, v10, a4);
    v47 = a5 & 1;
    v26 = *&vshl_u16((*&vdup_n_s16(a5) & 0xFF00FF00FF00FFLL), 0xFFFDFFFCFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    v48 = vuzp1_s8(v26, v26).u32[0];
    TSCEASTStreamIterator::rewrite(&v44, v27, v28, v29, v30);
    if (v44.var2.var4)
    {
      v31 = v45;
      v45 = 0;
      v32 = [TSCEFormulaObject alloc];
      v37 = objc_msgSend_translationFlags(v21, v33, v34, v35, v36);
      v40 = objc_msgSend_initWithNodeArray_translationFlags_(v32, v38, v31, v37, v39);

      TSCEASTNodeArray::freeNodeArray(v31, v41);
    }

    else
    {
      v40 = v11;
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v44, v42);
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

void sub_221492740(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22149277C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_boundingRange(v5, v7, v8, v9, v10);
  v41 = v11;
  v42 = v12;
  if (*(a1 + 144) == 2)
  {
    v40 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v6, v11, v12, v13, v14);
    v18 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v6, v15, *&v41, v16, v17);
  }

  else
  {
    v40 = objc_msgSend_viewCellCoordForBaseCellCoord_(v6, v11, v12, v13, v14);
    v18 = objc_msgSend_viewCellCoordForBaseCellCoord_(v6, v20, *&v41, v21, v22);
  }

  v39 = v18;
  v23 = TSUCellCoord::offsetBetween(&v39, &v40, v19);
  if (v23 == TSUCellCoord::offsetBetween(&v41, &v42, v24))
  {
    TSUIndexSet::TSUIndexSet(&v38);
    TSUIndexSet::TSUIndexSet(&v37);
    for (i = v42.row; i <= v41.row; ++i)
    {
      TSUIndexSet::addIndex(&v38);
    }

    column = v42.column;
    if (v42.column <= v41.column)
    {
      do
      {
        TSUIndexSet::addIndex(&v37);
        ++column;
      }

      while (v41.column >= column);
    }

    v27 = TSUIndexSet::asNSIndexSet(&v38);
    v31 = objc_msgSend_fillInRowGapsUsingIndexes_(v5, v28, v27, v29, v30);

    v32 = TSUIndexSet::asNSIndexSet(&v37);
    v36 = objc_msgSend_fillInColumnGapsUsingIndexes_(v5, v33, v32, v34, v35);

    TSUIndexSet::~TSUIndexSet(&v37);
    TSUIndexSet::~TSUIndexSet(&v38);
  }
}

void sub_221492900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, TSUIndexSet *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v15;

  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_22149296C(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A8A00;
  *(a1 + 136) = v9;
  *(a1 + 144) = a5;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  return a1;
}

void sub_2214929FC(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  if ((~objc_msgSend_preserveFlags(v5, v6, v7, v8, v9) & 5) != 0)
  {
    v34._begin = objc_msgSend_relativeBoundingRangeWithContainingCell_(v5, v10, a2, v11, v12) << 16 >> 48;
    v34._end = v13 << 16 >> 48;
    v27 = 0;
    v28 = &v27;
    v29 = 0x5012000000;
    v30 = sub_221492BF4;
    v31 = sub_221492C18;
    v32 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v33, &v34);
    v14 = v28;
    v19 = objc_msgSend_relativeColumns(v5, v15, v16, v17, v18);
    TSUIndexSet::removeIndexes((v14 + 6), v19);
    objc_msgSend_columns(v5, v20, v21, v22, v23);
    *&v26 = -1;
    *&v24.f64[0] = 0x8000000080000000;
    *&v24.f64[1] = 0x8000000080000000;
    v26._singleRange = vnegq_f64(v24);
    v26._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::enumerateIndexesUsingBlock();
    *a3 |= 3u;
    *&v25.f64[0] = 0x8000000080000000;
    *&v25.f64[1] = 0x8000000080000000;
    *(a3 + 8) = vnegq_f64(v25);
    *(a3 + 24) = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v26);
    _Block_object_dispose(&v27, 8);
    TSUIndexSet::~TSUIndexSet(&v33);
  }

  else
  {
    TSUIndexSet::TSUIndexSet(a3);
  }
}

uint64_t sub_221492BF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *v1 = v2 | 3;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v1 + 8) = vnegq_f64(v3);
  *(v1 + 24) = 0;
  return TSUIndexSet::operator=();
}

void sub_221492C3C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  if ((~objc_msgSend_preserveFlags(v5, v6, v7, v8, v9) & 0xA) != 0)
  {
    v34._begin = objc_msgSend_relativeBoundingRangeWithContainingCell_(v5, v10, a2, v11, v12);
    v34._end = v13;
    v27 = 0;
    v28 = &v27;
    v29 = 0x5012000000;
    v30 = sub_221492BF4;
    v31 = sub_221492C18;
    v32 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v33, &v34);
    objc_msgSend_relativeRows(v5, v14, v15, v16, v17);
    *&v26 = -1;
    *&v18.f64[0] = 0x8000000080000000;
    *&v18.f64[1] = 0x8000000080000000;
    v26._singleRange = vnegq_f64(v18);
    v26._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::removeIndexes((v28 + 6), &v26);
    objc_msgSend_rows(v5, v19, v20, v21, v22);
    *&v25 = -1;
    *&v23.f64[0] = 0x8000000080000000;
    *&v23.f64[1] = 0x8000000080000000;
    v25._singleRange = vnegq_f64(v23);
    v25._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::enumerateIndexesUsingBlock();
    *a3 |= 3u;
    *&v24.f64[0] = 0x8000000080000000;
    *&v24.f64[1] = 0x8000000080000000;
    *(a3 + 8) = vnegq_f64(v24);
    *(a3 + 24) = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v25);
    TSUIndexSet::~TSUIndexSet(&v26);
    _Block_object_dispose(&v27, 8);
    TSUIndexSet::~TSUIndexSet(&v33);
  }

  else
  {
    TSUIndexSet::TSUIndexSet(a3);
  }
}

void sub_221492E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, TSUIndexSet *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  TSUIndexSet::~TSUIndexSet(va);
  _Block_object_dispose(va1, 8);
  TSUIndexSet::~TSUIndexSet((v19 + 48));

  _Unwind_Resume(a1);
}

void sub_221492E8C(void *a1@<X1>, TSUIndexSet *a2@<X8>)
{
  v3 = a1;
  TSUIndexSet::TSUIndexSet(a2);
  if ((~objc_msgSend_preserveFlags(v3, v4, v5, v6, v7) & 0xA) == 0)
  {
    v12 = objc_msgSend_rows(v3, v8, v9, v10, v11);
    if (TSUIndexSet::count(v12))
    {
      v13._begin = TSUIndexSet::firstIndex(v12);
      v13._end = TSUIndexSet::lastIndex(v12);
      TSUIndexSet::TSUIndexSet(&v14, &v13);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v14);
      TSUIndexSet::removeIndexes(a2, v12);
    }
  }
}

void sub_221492F3C(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);
  TSUIndexSet::~TSUIndexSet(v12);

  _Unwind_Resume(a1);
}

void sub_221492F74(void *a1@<X1>, TSUIndexSet *a2@<X8>)
{
  v3 = a1;
  TSUIndexSet::TSUIndexSet(a2);
  if ((~objc_msgSend_preserveFlags(v3, v4, v5, v6, v7) & 5) == 0)
  {
    v12 = objc_msgSend_columns(v3, v8, v9, v10, v11);
    if (TSUIndexSet::count(v12))
    {
      v13._begin = TSUIndexSet::firstIndex(v12);
      v13._end = TSUIndexSet::lastIndex(v12);
      TSUIndexSet::TSUIndexSet(&v14, &v13);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v14);
      TSUIndexSet::removeIndexes(a2, v12);
    }
  }
}

void sub_221493024(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);
  TSUIndexSet::~TSUIndexSet(v12);

  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_22149305C(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v303 = 0;
  v304 = 0;
  if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
  {
    lower = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
  }

  else
  {
    v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    lower = v20->var0.var1._tableUID._lower;
    upper = v20->var0.var1._tableUID._upper;
  }

  v303 = lower;
  v304 = upper;
  if (!(lower | upper))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], upper, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v18, v19);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 440, 0, "How did this happen? refTableUID is invalid in TSTConvertFormulasFromChromeToBaseForCategoriesRewriter::colonTractNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = *(a1 + 17);
  v33 = sub_221089E8C(a1);
  v36 = objc_msgSend_coordMapperForTableUID_calcEngine_(v32, v34, &v303, v33, v35);

  v37 = *(a1 + 17);
  *&v301 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
  v38 = sub_221089E8C(a1);
  v41 = objc_msgSend_coordMapperForTableUID_calcEngine_(v37, v39, &v301, v38, v40);

  if (objc_msgSend_isRectangularRange(v7, v42, v43, v44, v45))
  {
    v46 = *(a1 + 154) ^ 1;
    if (!v36)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v46 = 0;
    if (!v36)
    {
      goto LABEL_62;
    }
  }

  coordinate = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v50 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
  v51 = *(a1 + 18);
  if (v51 == 1)
  {
    if (v41)
    {
      v50 = objc_msgSend_viewCellCoordForBaseCellCoord_(v41, v47, v50, v48, v49);
    }

    v64 = coordinate;
    v65 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v67 = v65->var0.var0._tableUID._lower;
    v66 = v65->var0.var0._tableUID._upper;
    v68 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v67 == v68->var0.var1._tableUID._lower && v66 == v68->var0.var1._tableUID._upper)
    {
      v64 = objc_msgSend_viewCellCoordForBaseCellCoord_(v41, v69, coordinate, v71, v72);
    }

    else
    {
      v92 = objc_msgSend_srcCoordMapper(*(a1 + 17), v69, v70, v71, v72);
      if (v92 || (v93 = *(a1 + 17), *&v301 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID, sub_221089E8C(a1), v94 = objc_claimAutoreleasedReturnValue(), objc_msgSend_coordMapperForTableUID_calcEngine_(v93, v95, &v301, v94, v96), v92 = objc_claimAutoreleasedReturnValue(), v94, v92))
      {
        v64 = objc_msgSend_viewCellCoordForBaseCellCoord_(v92, v89, coordinate, v90, v91);
      }

      else
      {
        v292 = MEMORY[0x277D81150];
        v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v90, v91);
        v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v213, v214);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v292, v216, v211, v215, 587, 0, "invalid nil value for '%{public}s'", "srcCoordMapper");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v217, v218, v219, v220);
        v92 = 0;
      }
    }

    *&v301 = v64;
    v97 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v73, &v301, v74, v75);
    if (!objc_msgSend_isValid(v97, v98, v99, v100, v101) || (*(a1 + 154) & 1) != 0 || (*(a1 + 155) & 1) != 0)
    {
      v106 = 0;
    }

    else
    {
      *&v300 = v64;
      sub_221492C3C(v7, &v300, &v301);
      *&v299 = v64;
      sub_2214929FC(v7, &v299, &v300);
      sub_221492E8C(v7, &v299);
      sub_221492F74(v7, &v298);
      v297._flags = objc_msgSend_preserveFlags(v97, v174, v175, v176, v177);
      v296._topLeft = objc_msgSend_boundingRange(v97, v178, v179, v180, v181);
      v296._bottomRight = v182;
      TSCERangeCoordinate::fixInversions(&v296, &v297);
      TSCERangeCoordinate::setPreserveFlags(&v296, &v297);
      v295._topLeft = 0;
      v295._bottomRight = 0;
      *&v294 = v64;
      *&v293 = v50;
      v295._topLeft = TSCERangeCoordinate::slideRangeTo(&v296, &v294, &v293, 1);
      v295._bottomRight = v183;
      v184 = [TSCECellTractRef alloc];
      v189 = objc_msgSend_tableUID(v97, v185, v186, v187, v188);
      *&v294 = v295;
      v294._singleRange._end = v189;
      v294._multipleRanges = v190;
      v193 = objc_msgSend_initWithRangeRef_(v184, v190, &v294, v191, v192);
      v194 = TSCERangeCoordinate::preserveFlags(&v295);
      objc_msgSend_setPreserveFlags_(v193, v195, v194, v196, v197);
      if (v46)
      {
        v106 = objc_msgSend_baseTractRefForViewTractRef_(v36, v198, v193, v199, v200);
      }

      else
      {
        v256 = [TSCERelativeTractRef alloc];
        *&v294 = v50;
        v259 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v256, v257, v97, &v294, v258);
        objc_msgSend_rows(v259, v260, v261, v262, v263);
        *&v294 |= 3u;
        *&v264.f64[0] = 0x8000000080000000;
        *&v264.f64[1] = 0x8000000080000000;
        v294._singleRange = vnegq_f64(v264);
        v294._multipleRanges = 0;
        TSUIndexSet::operator=();
        objc_msgSend_columns(v259, v265, v266, v267, v268);
        *&v293 |= 3u;
        *&v269.f64[0] = 0x8000000080000000;
        *&v269.f64[1] = 0x8000000080000000;
        v293._singleRange = vnegq_f64(v269);
        v293._multipleRanges = 0;
        TSUIndexSet::operator=();
        TSUIndexSet::shiftAllIndexesBy(&v301);
        objc_msgSend_removeRows_(v193, v270, &v301, v271, v272);
        objc_msgSend_addRows_(v193, v273, &v294, v274, v275);
        objc_msgSend_removeRows_(v193, v276, &v299, v277, v278);
        TSUIndexSet::shiftAllIndexesBy(&v300);
        objc_msgSend_removeColumns_(v193, v279, &v300, v280, v281);
        objc_msgSend_addColumns_(v193, v282, &v293, v283, v284);
        objc_msgSend_removeColumns_(v193, v285, &v298, v286, v287);
        v106 = objc_msgSend_baseTractRefForViewTractRef_(v36, v288, v193, v289, v290);
        TSUIndexSet::~TSUIndexSet(&v293);
        TSUIndexSet::~TSUIndexSet(&v294);
      }

      TSUIndexSet::~TSUIndexSet(&v298);
      TSUIndexSet::~TSUIndexSet(&v299);
      TSUIndexSet::~TSUIndexSet(&v300);
      TSUIndexSet::~TSUIndexSet(&v301);
    }

    if (objc_msgSend_isValid(v106, v102, v103, v104, v105))
    {
      v111 = *(a1 + 17);
      if (v111)
      {
        if (*(a1 + 152) == 1)
        {
          v112 = sub_221089E8C(a1);
          *&v301 = objc_msgSend_tableRangeForTable_calcEngine_(v111, v113, &v303, v112, v114);
          v301._singleRange._begin = v115;

          if (TSUCellRect::isValid(&v301))
          {
            objc_msgSend_intersectWithCellRectIgnoringSpanning_(v106, v107, &v301, v109, v110);
          }
        }
      }
    }

    if (!objc_msgSend_isValid(v106, v107, v108, v109, v110))
    {
      TSCEASTIteratorBase::createReferenceError(a1, v116, v117, v118, v119);
    }

    goto LABEL_60;
  }

  if (v51 == 2)
  {
    if (v41)
    {
      v50 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v41, v47, v50, v48, v49);
    }

    v52 = coordinate;
    v53 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v55 = v53->var0.var0._tableUID._lower;
    v54 = v53->var0.var0._tableUID._upper;
    v56 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v55 == v56->var0.var1._tableUID._lower && v54 == v56->var0.var1._tableUID._upper)
    {
      v52 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v41, v57, coordinate, v59, v60);
    }

    else
    {
      v79 = objc_msgSend_srcCoordMapper(*(a1 + 17), v57, v58, v59, v60);
      if (v79 || (v80 = *(a1 + 17), *&v301 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID, sub_221089E8C(a1), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend_coordMapperForTableUID_calcEngine_(v80, v82, &v301, v81, v83), v79 = objc_claimAutoreleasedReturnValue(), v81, v79))
      {
        v52 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v79, v76, coordinate, v77, v78);
      }

      else
      {
        v291 = MEMORY[0x277D81150];
        v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v77, v78);
        v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v203, v204);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v291, v206, v201, v205, 468, 0, "invalid nil value for '%{public}s'", "srcCoordMapper");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v207, v208, v209, v210);
        v79 = 0;
      }
    }

    if (*(a1 + 156) == 1)
    {
      *&v301 = v50;
      v84 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v61, &v301, v62, v63);
    }

    else if ((*(a1 + 154) & 1) != 0 || *(a1 + 155) == 1)
    {
      v84 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v61, &coordinate, v62, v63);
    }

    else
    {
      *&v301 = v52;
      v84 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v61, &v301, v62, v63);
    }

    v97 = v84;
    if (objc_msgSend_isValid(v84, v85, v86, v87, v88))
    {
      if (*(a1 + 154) & 1) != 0 || (*(a1 + 155))
      {
        v106 = objc_msgSend_baseTractRefForChromeTractRef_(v36, v120, v97, v122, v123);
        isValid = objc_msgSend_isValid(v106, v124, v125, v126, v127);
        goto LABEL_54;
      }

      *&v300 = v52;
      sub_221492C3C(v7, &v300, &v301);
      *&v299 = v52;
      sub_2214929FC(v7, &v299, &v300);
      sub_221492E8C(v7, &v299);
      sub_221492F74(v7, &v298);
      v297._flags = objc_msgSend_preserveFlags(v97, v147, v148, v149, v150);
      v296._topLeft = objc_msgSend_boundingRange(v97, v151, v152, v153, v154);
      v296._bottomRight = v155;
      TSCERangeCoordinate::fixInversions(&v296, &v297);
      TSCERangeCoordinate::setPreserveFlags(&v296, &v297);
      v295._topLeft = 0;
      v295._bottomRight = 0;
      *&v294 = v52;
      *&v293 = v50;
      v295._topLeft = TSCERangeCoordinate::slideRangeTo(&v296, &v294, &v293, 1);
      v295._bottomRight = v156;
      v157 = [TSCECellTractRef alloc];
      v162 = objc_msgSend_tableUID(v97, v158, v159, v160, v161);
      *&v294 = v295;
      v294._singleRange._end = v162;
      v294._multipleRanges = v163;
      v166 = objc_msgSend_initWithRangeRef_(v157, v163, &v294, v164, v165);
      v167 = TSCERangeCoordinate::preserveFlags(&v295);
      objc_msgSend_setPreserveFlags_(v166, v168, v167, v169, v170);
      if (v46)
      {
        v106 = objc_msgSend_baseTractRefForChromeTractRef_(v36, v171, v166, v172, v173);
      }

      else
      {
        v221 = [TSCERelativeTractRef alloc];
        *&v294 = v50;
        v224 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v221, v222, v97, &v294, v223);
        objc_msgSend_rows(v224, v225, v226, v227, v228);
        *&v294 |= 3u;
        *&v229.f64[0] = 0x8000000080000000;
        *&v229.f64[1] = 0x8000000080000000;
        v294._singleRange = vnegq_f64(v229);
        v294._multipleRanges = 0;
        TSUIndexSet::operator=();
        objc_msgSend_columns(v224, v230, v231, v232, v233);
        *&v293 |= 3u;
        *&v234.f64[0] = 0x8000000080000000;
        *&v234.f64[1] = 0x8000000080000000;
        v293._singleRange = vnegq_f64(v234);
        v293._multipleRanges = 0;
        TSUIndexSet::operator=();
        TSUIndexSet::shiftAllIndexesBy(&v301);
        objc_msgSend_removeRows_(v166, v235, &v301, v236, v237);
        objc_msgSend_addRows_(v166, v238, &v294, v239, v240);
        objc_msgSend_removeRows_(v166, v241, &v299, v242, v243);
        TSUIndexSet::shiftAllIndexesBy(&v300);
        objc_msgSend_removeColumns_(v166, v244, &v300, v245, v246);
        objc_msgSend_addColumns_(v166, v247, &v293, v248, v249);
        objc_msgSend_removeColumns_(v166, v250, &v298, v251, v252);
        v106 = objc_msgSend_baseTractRefForChromeTractRef_(v36, v253, v166, v254, v255);
        TSUIndexSet::~TSUIndexSet(&v293);
        TSUIndexSet::~TSUIndexSet(&v294);
      }

      TSUIndexSet::~TSUIndexSet(&v298);
      TSUIndexSet::~TSUIndexSet(&v299);
      TSUIndexSet::~TSUIndexSet(&v300);
      TSUIndexSet::~TSUIndexSet(&v301);
    }

    else
    {
      v106 = 0;
    }

    isValid = objc_msgSend_isValid(v106, v120, v121, v122, v123);
LABEL_54:
    if (isValid)
    {
      v133 = *(a1 + 17);
      if (v133)
      {
        if (*(a1 + 152) == 1)
        {
          v134 = sub_221089E8C(a1);
          *&v301 = objc_msgSend_tableRangeForTable_calcEngine_(v133, v135, &v303, v134, v136);
          v301._singleRange._begin = v137;

          if (TSUCellRect::isValid(&v301))
          {
            objc_msgSend_intersectWithCellRectIgnoringSpanning_(v106, v129, &v301, v131, v132);
          }
        }
      }
    }

    if (!objc_msgSend_isValid(v106, v129, v130, v131, v132))
    {
      TSCEASTIteratorBase::createReferenceError(a1, v138, v139, v140, v141);
    }

LABEL_60:
    v142 = [TSCERelativeTractRef alloc];
    *&v301 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
    v145 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v142, v143, v106, &v301, v144);
    TSCEASTColonTractElement::setRelativeTractRef(this, v145, v7, a1, 0);
  }

LABEL_62:

  return this;
}

void sub_221493B94(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, TSUIndexSet *a11, TSUIndexSet *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  TSUIndexSet::~TSUIndexSet(&a25);
  TSUIndexSet::~TSUIndexSet(&a29);
  TSUIndexSet::~TSUIndexSet((v34 - 176));
  TSUIndexSet::~TSUIndexSet((v34 - 144));

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *sub_221493D74(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = sub_221089E8C(a1);
  if (v4)
  {
    *&v100[0]._row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    v8 = objc_msgSend_tableOrLinkedResolverForTableUID_(v4, v5, v100, v6, v7);
    v13 = v8;
    if (v8)
    {
      v14 = objc_msgSend_tableModel(v8, v9, v10, v11, v12);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = TSCEASTElement::refFlags(a2, a1);
  v20 = objc_msgSend_tableInfo(v14, v16, v17, v18, v19);
  isCategorized = objc_msgSend_isCategorized(v20, v21, v22, v23, v24);

  if ((isCategorized & 1) != 0 || (v15 & 1) != 0 && ((v50 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v27, v28, v29), v52 = v51, v50 != objc_msgSend_tableUID(v14, v51, v53, v54, v55)) || v52 != v26))
  {
    v30 = 0;
    if (*(a1 + 153) == 1 && (v15 & 1) != 0)
    {
      v31 = objc_msgSend_fromTableUID(*(a1 + 136), v26, v27, v28, v29);
      v33 = v32;
      v30 = v31 == TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v34, v35, v36) && v33 == v37;
    }

    v38 = *(a1 + 136);
    *&v100[0]._row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    v39 = sub_221089E8C(a1);
    v42 = objc_msgSend_coordMapperForTableUID_calcEngine_(v38, v40, v100, v39, v41);

    if ((v15 & 1) == 0 || v30)
    {
      v49 = v42;
    }

    else
    {
      v100[0] = 0;
      v100[1] = 0;
      v100[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v43, v44, v45);
      v100[1] = v67;
      v68 = *(a1 + 136);
      v69 = sub_221089E8C(a1);
      v49 = objc_msgSend_coordMapperForTableUID_calcEngine_(v68, v70, v100, v69, v71);
    }

    v72 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v46, v47, v48);
    v99._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v73 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    coordinate = v73->var0.var1.coordinate;
    v78 = *(a1 + 144);
    if (v78 == 1)
    {
      v88 = v73->var0.var1.coordinate;
      if (v42)
      {
        v88 = objc_msgSend_viewCellCoordForBaseCellCoord_(v42, v74, coordinate, v75, v76);
      }

      v89 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v88, v72, &v99, v75, v76);
      if (!v49)
      {
        goto LABEL_35;
      }

      v84 = objc_msgSend_baseCellCoordForViewCellCoord_(v49, v90, v89, v91, v92);
      if ((*&v84 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        TSCEASTIteratorBase::createReferenceError(a1, *&v84, v93, v86, v94);
      }
    }

    else
    {
      if (v78 != 2)
      {
        goto LABEL_35;
      }

      v79 = v73->var0.var1.coordinate;
      if (v42)
      {
        v79 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v42, v74, coordinate, v75, v76);
      }

      v80 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v79, v72, &v99, v75, v76);
      if (!v49)
      {
        goto LABEL_35;
      }

      v84 = objc_msgSend_baseCellCoordForChromeCellCoord_(v49, v81, v80, v82, v83);
      if ((*&v84 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        TSCEASTIteratorBase::createReferenceError(a1, *&v84, v85, v86, v87);
      }
    }

    v95 = &v99;
    v100[0] = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(coordinate, v84, v95, v86);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, v100, a1, v96, v97);
LABEL_35:

    goto LABEL_36;
  }

  if (*(a1 + 136))
  {
    if (*(a1 + 152) == 1)
    {
      v56 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v27, v28, v29);
      v99._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      v57 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
      v60 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v57, v56, &v99, v58, v59);
      v61 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v62 = &v99;
      v63 = v60;
      v100[0] = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&v61->var0.var1.coordinate, v63, v62, v64);
      if (v100[0] != v56)
      {
        TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, v100, a1, v65, v66);
      }
    }
  }

LABEL_36:

  return a2;
}

void sub_2214941E0(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_221494230(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_221494550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);

  _Unwind_Resume(a1);
}

double sub_221494594(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 96);
  v3 = **(a1 + 72);
  v4 = *(v3 + 8 * v2) * *(a1 + 80);
  v5 = **(a1 + 64);
  *(v5 + 8 * v2) = v4;
  v6 = **(a1 + 88);
  v7 = *(v6 + 8 * v2);
  if (v4 < v7)
  {
    *(v5 + 8 * v2) = v7;
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - *(v3 + 8 * v2);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - *(v6 + 8 * v2);
    --*(*(*(a1 + 48) + 8) + 24);
    v4 = *(v5 + 8 * v2);
  }

  v8 = v4 - *(v3 + 8 * v2);
  v9 = *(*(a1 + 56) + 8);
  result = v8 + *(v9 + 24);
  *(v9 + 24) = result;
  return result;
}

void sub_221494948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221494998(TSCEPartialEvalRewriter *a1, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(a1, a2, a3, a4);
  *v4 = &unk_2834A8B90;
  *(v4 + 152) = 1;
}

TSCEASTFunctionElement *sub_2214949D4(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  v8 = (*(*this + 48))(this, a1);
  if (v7 == 373)
  {
    TSCEASTFunctionElement::setFunctionIndex(this, 0x130, a1, v10, v11);
  }

  else
  {
    v12 = v8;
    if (v7 == 280)
    {
      v13 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v9, 280, v10, v11);
      TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v12, v13, 0);
    }

    else if (v7 == 344 && v8 >= 4 && (v8 & 1) == 0)
    {
      TSUDecimal::operator=();
      TSCEASTIteratorBase::createNumber(a1, &v19, v15, v16, v17);
    }
  }

  return this;
}

TSCEASTArrayElement *sub_221494B10(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTArrayElement::numColumns(this, a1, a3, a4, a5);
  v11 = TSCEASTArrayElement::numRows(this, a1, v8, v9, v10);
  TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v11 * v7, 0, 1);
  return this;
}

void sub_221494B78(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

TSUCellCoord __C(TSUCellCoord *a1, TSUCellCoord *a2)
{
  v2 = *a2;
  v5._topLeft = *a1;
  v5._bottomRight = v2;
  v4._flags = 0;
  TSCERangeCoordinate::fixInversions(&v5, &v4);
  return v5._topLeft;
}

uint64_t TSUCellRectToTSCERangeCoordinate(uint64_t a1, uint64_t a2)
{
  if (!(HIDWORD(a2) * a2))
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return result;
}

BOOL TSCERangeCoordinate::isSpanning(TSCERangeCoordinate *this)
{
  v1 = *&this->_topLeft;
  v2 = *&this->_topLeft & 0xFFFF00000000;
  v3 = 0x7FFF00000000;
  v4 = 0x7FFFFFFFLL;
  if (v1 != 0x7FFFFFFF || v2 == 0x7FFF00000000)
  {
    if (v2 != 0x7FFF00000000 || v1 == 0x7FFFFFFF)
    {
      return 0;
    }

    v9 = 0xFFFF00000000;
    v3 = 0x7FFFFFFFLL;
    v8 = 0xFFFFFFFFLL;
    v4 = 0x7FFF00000000;
  }

  else
  {
    v8 = 0xFFFF00000000;
    v9 = 0xFFFFFFFFLL;
  }

  bottomRight = this->_bottomRight;
  return (*&bottomRight & v9) == v4 && (*&bottomRight & v8) != v3;
}

BOOL TSCERangeCoordinate::spansAllRows(TSCERangeCoordinate *this)
{
  if (*&this->_topLeft != 0x7FFFFFFF || (*&this->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  return bottomRight.row == 0x7FFFFFFF && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000;
}

BOOL TSCERangeCoordinate::spansAllColumns(TSCERangeCoordinate *this)
{
  if ((*&this->_topLeft & 0xFFFF00000000) != 0x7FFF00000000 || *&this->_topLeft == 0x7FFFFFFFLL)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  return (*&bottomRight & 0xFFFF00000000) == 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFF;
}

BOOL TSCERangeCoordinate::isSingleCell(TSCERangeCoordinate *this)
{
  topLeft = this->_topLeft;
  if (*&this->_topLeft == 0x7FFFFFFF || (*&this->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  if (bottomRight.row == 0x7FFFFFFF || (*&bottomRight & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  v6 = WORD2(*&this->_topLeft) <= bottomRight.column;
  if (topLeft.row > bottomRight.row)
  {
    v6 = 0;
  }

  if (topLeft.column != bottomRight.column)
  {
    v6 = 0;
  }

  return topLeft.row == bottomRight.row && v6;
}

BOOL TSCERangeCoordinate::operator==(void *a1, void *a2)
{
  if (*a1 == *a2 && ((v2 = a1[1], v3 = a2[1], ((*a2 ^ *a1) & 0xFFFF00000000) == 0) ? (v4 = v2 == v3) : (v4 = 0), v4))
  {
    return ((v3 ^ v2) & 0xFFFF00000000) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __C(TSUCellCoord a1, $925F2A0F20B28CD67DCCD182188DAC27 a2)
{
  v7.origin = a1;
  v7.size = a2;
  v2 = *&a1 & 0xFFFFFFFFFFFFLL;
  result = 0x7FFF7FFFFFFFLL;
  if (v2 != 0x7FFF7FFFFFFFLL && a2.numberOfColumns != 0 && HIDWORD(*&a2) != 0)
  {
    if (TSUCellRect::spansAllColumns(&v7))
    {
      return v7.origin.row | 0x7FFF00000000;
    }

    else if (TSUCellRect::spansAllRows(&v7))
    {
      return (v7.origin.column << 32) | 0x7FFFFFFF;
    }

    else
    {
      return v7.origin.row | (v7.origin.column << 32);
    }
  }

  return result;
}

uint64_t sub_221494F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < a3)
  {
    return -1;
  }

  if (a1 > a3)
  {
    return 1;
  }

  if (WORD2(a1) < WORD2(a3))
  {
    return -1;
  }

  if (WORD2(a1) > WORD2(a3))
  {
    return 1;
  }

  if (a2 < a4)
  {
    return -1;
  }

  if (a2 > a4)
  {
    return 1;
  }

  if (WORD2(a2) >= WORD2(a4))
  {
    return WORD2(a2) > WORD2(a4);
  }

  else
  {
    return -1;
  }
}

unint64_t sub_221494F70(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = a2 & 0xFFFF00000000;
  v10 = a1 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL && v10 == 0x7FFF00000000 && v9 == 0x7FFF00000000)
  {
    v11 = 0;
    v12 = a2 != 0x7FFFFFFF;
  }

  else
  {
    v12 = 0;
    v11 = v10 != 0x7FFF00000000 && v9 != 0x7FFF00000000 && a1 == 0x7FFFFFFFLL && a2 == 0x7FFFFFFFLL;
  }

  v16 = a4 & 0xFFFF00000000;
  v17 = a3 & 0xFFFF00000000;
  if (a3 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v16 == 0x7FFF00000000)
  {
    v18 = 0;
    v19 = a4 != 0x7FFFFFFF;
  }

  else
  {
    v19 = 0;
    v18 = v17 != 0x7FFF00000000 && v16 != 0x7FFF00000000 && a3 == 0x7FFFFFFFLL && a4 == 0x7FFFFFFFLL;
  }

  v23 = 0x7FFFFFFF;
  LOWORD(v24) = 0x7FFF;
  if (v12 == v19 && ((v11 ^ v18) & 1) == 0)
  {
    *a7 = 0;
    *a8 = 0;
    if (v12)
    {
      v25 = 0;
      LOWORD(v24) = 0x7FFF;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (WORD2(a2) <= WORD2(a4))
      {
        v29 = a6;
      }

      else
      {
        v29 = a5;
      }

      if (WORD2(a1) <= WORD2(a3))
      {
        v30 = a5;
      }

      else
      {
        v30 = a6;
      }

      if (WORD2(a1) <= WORD2(a3))
      {
        v24 = HIDWORD(a1);
      }

      else
      {
        v24 = HIDWORD(a3);
      }

      *a7 |= v30 & 5;
      v25 = WORD2(a1) > WORD2(a3) || WORD2(a2) > WORD2(a4);
      *a8 |= v29 & 5;
      if (!v11)
      {
LABEL_37:
        if (a2 > a4)
        {
          v26 = a5;
        }

        else
        {
          v26 = a6;
        }

        if (a1 <= a3)
        {
          v27 = a5;
        }

        else
        {
          v27 = a6;
        }

        if (a1 >= a3)
        {
          v23 = a3;
        }

        else
        {
          v23 = a1;
        }

        *a7 |= v27 & 0xA;
        v28 = a1 > a3 || a2 > a4;
        v25 |= v28;
        *a8 |= v26 & 0xA;
        if (!a9)
        {
          return v23 | (v24 << 32);
        }

LABEL_65:
        *a9 = v25 & 1;
        return v23 | (v24 << 32);
      }
    }

    v23 = 0x7FFFFFFF;
    if (!a9)
    {
      return v23 | (v24 << 32);
    }

    goto LABEL_65;
  }

  return v23 | (v24 << 32);
}

uint64_t sub_2214951C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v18._topLeft = __C(v5, v6);
  v18._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v18);
  if (result)
  {
    *&v17 = v18._topLeft.column | (v18._topLeft.row << 32);
    *(&v17 + 1) = v18._bottomRight.column | (v18._bottomRight.row << 32);
    return sub_2214986CC(a1, &v17, a3, (a1 + 8), 0, v9, v10, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_22149524C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v13._topLeft = __C(v5, v6);
  v13._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v13);
  if (result)
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    return sub_2214995E4(a1, &column, a3, (a1 + 8));
  }

  return result;
}

void sub_221495334(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v13._topLeft = __C(v6, v7);
  v13._bottomRight = v8;
  if (TSCERangeCoordinate::isValid(&v13))
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    sub_22149993C(a1, *(a1 + 8), &column, v5);
  }
}

void sub_221495828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221495868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_221495880(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (!v9 || objc_msgSend_internalOwnerID(v9, a2, a3, a4, a5) != a3)
  {
    v10 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, a3, a4, a5);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v14 = *(*(a1 + 32) + 16);
    v15 = *a2 & 0xFFFFFFFFFFFFLL;
    v16 = v14;
    return objc_msgSend_RTreeRemove_fromCellRef_(result, a2, a4, &v15, a5);
  }

  return result;
}

void sub_221495A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *sub_221495A40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (!v9 || objc_msgSend_internalOwnerID(v9, a2, a3, a4, a5) != a3)
  {
    v10 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, a3, a4, a5);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v14 = *(*(a1 + 32) + 16);
    v15 = *a2 & 0xFFFFFFFFFFFFLL;
    v16 = v14;
    return objc_msgSend_RTreeRemove_fromCellRef_(result, a2, a4, &v15, a5);
  }

  return result;
}

uint64_t sub_221495CB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    v8 = objc_msgSend_internalOwnerID(v7, a2, a3, a4, a5);
    v9 = *(a3 + 8);
    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v10 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v9, a4, a5);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_6:
  v13 = *(*(*(a1 + 48) + 8) + 40);
  if (!v13 || (result = objc_msgSend_isCellInACycle_(v13, a2, a3, a4, a5), (result & 1) == 0))
  {
    v15 = *(a1 + 40);
    v16 = *(*(a1 + 32) + 16);
    v17 = **(a1 + 56) & 0xFFFFFFFFFFFFLL;
    v18 = v16;
    return objc_msgSend_addCellRef_fromCellRef_(v15, a2, a3, &v17, a5);
  }

  return result;
}

void sub_221495F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == *(a1 + 40))
  {
    v3 = *(a1 + 32);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = (v5 - *v3) >> 3;
      if ((v7 + 1) >> 61)
      {
        sub_22107C148();
      }

      v8 = v4 - *v3;
      v9 = v8 >> 2;
      if (v8 >> 2 <= (v7 + 1))
      {
        v9 = v7 + 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        sub_2210874C4(*(a1 + 32), v10);
      }

      v11 = (8 * v7);
      *v11 = *a3;
      v6 = 8 * v7 + 8;
      v12 = *(v3 + 8) - *v3;
      v13 = v11 - v12;
      memcpy(v11 - v12, *v3, v12);
      v14 = *v3;
      *v3 = v13;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5 = *a3;
      v6 = (v5 + 1);
    }

    *(v3 + 8) = v6;
  }
}

void sub_221496164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221496190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 48);
  v9 = v7 == *a3;
  v8 = (*a3 ^ v7) & 0x101FFFF00000000;
  v9 = v9 && v8 == 0;
  if (v9 && *(a1 + 56) == *(a3 + 8))
  {
    return;
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v10)
  {
    v11 = objc_msgSend_internalOwnerID(v10, a2, a3, a4, a5);
    v12 = *(a3 + 8);
    if (v11 == v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v12, a4, a5);
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_10:
  v16 = *(*(*(a1 + 40) + 8) + 40);
  if (v16)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v16, a2, a3, 1, a5);
    if (CellRecord_willModifyOnTile)
    {
      v21 = CellRecord_willModifyOnTile;
      v22 = *(CellRecord_willModifyOnTile + 38);
      if ((v22 & 0x100) == 0 && ((v22 & 2) == 0 || (*(a1 + 60) & 1) == 0))
      {
        if (*(CellRecord_willModifyOnTile + 16))
        {
          objc_msgSend_decrDirtySelfPlusPrecedentsCount_(*(*(*(a1 + 40) + 8) + 40), v18, CellRecord_willModifyOnTile, v19, v20);
        }

        else
        {
          v23 = *(*(a1 + 32) + 8);
          v24 = *(a3 + 8);
          v25 = MEMORY[0x277CCACA8];
          v26 = NSStringFromTSUCellCoord();
          v38._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), v27, *(a3 + 8), v28, v29);
          v38._upper = v30;
          v31 = TSKUIDStruct::description(&v38);
          v35 = objc_msgSend_stringWithFormat_(v25, v32, @"dirty precedents count consistency error - cell: %@ in table: %@", v33, v34, v26, v31);
          objc_msgSend_assertForInconsistentDependGraph_assertMessage_(v23, v36, v24, v35, v37);
        }
      }

      if (*(v21 + 16) == 1)
      {
        objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(a1 + 32) + 8), v18, a3, v21, 0);
      }
    }
  }
}

uint64_t sub_221496444(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_221496638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose((v23 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221496664(uint64_t a1, const TSUCellRect *a2, uint64_t a3, TSCERangeCoordinate *this)
{
  v15 = TSCERangeCoordinate::rangeCoordFromCellRect(this, a2);
  v16 = v6;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (!v10 || objc_msgSend_internalOwnerID(v10, v6, v7, v8, v9, v15, v16) != a3)
  {
    v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), v6, a3, v8, v9, v15, v16);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (*(a1 + 56))
    {
      result = objc_msgSend_countRecordsInRange_cellRestrictions_(result, v6, &v15, 6, v9);
    }

    else
    {
      result = objc_msgSend_countRecordsInRange_cellRestrictions_(result, v6, &v15, 2, v9);
    }

    *(*(*(a1 + 48) + 8) + 24) += result;
  }

  return result;
}