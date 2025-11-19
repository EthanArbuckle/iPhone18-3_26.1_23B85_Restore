@interface TSTLayoutSpaceBundle
- (BOOL)enumerateFrozenLayoutSpacesUsingBlock:(id)a3;
- (BOOL)enumerateRepeatLayoutSpacesUsingBlock:(id)a3;
- (TSTLayout)layout;
- (TSTLayoutSpaceBundle)initWithLayout:(id)a3;
- (id)getSpaceContainingCellID:(TSUCellCoord)a3;
- (int)validateLayoutSpaces;
- (void)enumerateLayoutSpacesUsingBlock:(id)a3;
- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)a3;
- (void)invalidateCoordinatesAfterRow:(unsigned int)a3;
- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)a3;
@end

@implementation TSTLayoutSpaceBundle

- (TSTLayoutSpaceBundle)initWithLayout:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSTLayoutSpaceBundle;
  v5 = [(TSTLayoutSpaceBundle *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
    v7 = [TSTLayoutSpace alloc];
    v10 = objc_msgSend_initWithLayoutSpaceBundle_type_(v7, v8, v6, 0, v9);
    space = v6->_space;
    v6->_space = v10;
  }

  return v6;
}

- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213BA334;
  v5[3] = &unk_278464190;
  v6 = a3;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v5, v3, v4);
}

- (void)invalidateCoordinatesAfterRow:(unsigned int)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213BA3AC;
  v5[3] = &unk_2784641B0;
  v6 = a3;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v5, v3, v4);
}

- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213BA438;
  v5[3] = &unk_278460A98;
  v5[4] = a3;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(self, a2, v5, v3, v4);
}

- (id)getSpaceContainingCellID:(TSUCellCoord)a3
{
  p_space = &self->_space;
  v8 = objc_msgSend_cellRange(self->_space, a2, *&a3, v3, v4);
  if (v9 >> 32)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_31;
  }

  v14 = v8 & 0xFFFF00000000;
  if (v8 != 0x7FFFFFFFLL || v14 == 0x7FFF00000000)
  {
    v17 = v8 == 0x7FFFFFFF && v14 != 0x7FFF00000000;
    if (v8 > a3.row && !v17)
    {
      goto LABEL_31;
    }

    v18 = v8 + HIDWORD(v9) - 1;
    if (v8 == 0x7FFFFFFF)
    {
      v18 = 0x7FFFFFFF;
    }

    if (v18 < a3.row)
    {
      goto LABEL_31;
    }

    if (v8 != 0x7FFFFFFFLL && v14 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v8) <= a3.column)
  {
    v19 = WORD2(v8) == 0x7FFF || v9 == 0;
    v20 = v19 ? 0x7FFF : v9 + WORD2(v8) - 1;
    if (v20 >= a3.column)
    {
      goto LABEL_118;
    }
  }

LABEL_31:
  p_space = &self->_repeatHeaderCornerSpace;
  v21 = objc_msgSend_cellRange(self->_repeatHeaderCornerSpace, v9, v10, v11, v12);
  if (v22 >> 32)
  {
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    goto LABEL_61;
  }

  v27 = v21 & 0xFFFF00000000;
  if (v21 != 0x7FFFFFFFLL || v27 == 0x7FFF00000000)
  {
    v30 = v21 == 0x7FFFFFFF && v27 != 0x7FFF00000000;
    if (v21 > a3.row && !v30)
    {
      goto LABEL_61;
    }

    v31 = v21 + HIDWORD(v22) - 1;
    if (v21 == 0x7FFFFFFF)
    {
      v31 = 0x7FFFFFFF;
    }

    if (v31 < a3.row)
    {
      goto LABEL_61;
    }

    if (v21 != 0x7FFFFFFFLL && v27 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v21) <= a3.column)
  {
    v32 = WORD2(v21) == 0x7FFF || v22 == 0;
    v33 = v32 ? 0x7FFF : v22 + WORD2(v21) - 1;
    if (v33 >= a3.column)
    {
      goto LABEL_118;
    }
  }

LABEL_61:
  p_space = &self->_repeatHeaderColumnsSpace;
  v34 = objc_msgSend_cellRange(self->_repeatHeaderColumnsSpace, v22, v23, v24, v25);
  if (v35 >> 32)
  {
    v39 = v35 == 0;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_87;
  }

  v40 = v34 & 0xFFFF00000000;
  if (v34 != 0x7FFFFFFFLL || v40 == 0x7FFF00000000)
  {
    v44 = v34 == 0x7FFFFFFF && v40 != 0x7FFF00000000;
    if (v34 > a3.row && !v44)
    {
      goto LABEL_87;
    }

    v45 = v34 + HIDWORD(v35) - 1;
    if (v34 == 0x7FFFFFFF)
    {
      v45 = 0x7FFFFFFF;
    }

    if (v45 < a3.row)
    {
      goto LABEL_87;
    }

    if (v34 != 0x7FFFFFFFLL && v40 == 0x7FFF00000000)
    {
      goto LABEL_118;
    }
  }

  if (WORD2(v34) <= a3.column)
  {
    v41 = WORD2(v34) == 0x7FFF || v35 == 0;
    v42 = v41 ? 0x7FFF : v35 + WORD2(v34) - 1;
    if (v42 >= a3.column)
    {
      goto LABEL_118;
    }
  }

LABEL_87:
  repeatHeaderRowsSpace = self->_repeatHeaderRowsSpace;
  p_repeatHeaderRowsSpace = &self->_repeatHeaderRowsSpace;
  v48 = objc_msgSend_cellRange(repeatHeaderRowsSpace, v35, v36, v37, v38);
  v50 = 0;
  if (HIDWORD(v49) && v49)
  {
    v51 = v48 & 0xFFFF00000000;
    if (v48 == 0x7FFFFFFFLL && v51 != 0x7FFF00000000)
    {
      goto LABEL_124;
    }

    v55 = v48 == 0x7FFFFFFF && v51 != 0x7FFF00000000;
    if (v48 > a3.row && !v55)
    {
      goto LABEL_111;
    }

    v56 = v48 + HIDWORD(v49) - 1;
    if (v48 == 0x7FFFFFFF)
    {
      v56 = 0x7FFFFFFF;
    }

    if (v56 < a3.row)
    {
      goto LABEL_111;
    }

    if (v48 == 0x7FFFFFFFLL || v51 != 0x7FFF00000000)
    {
LABEL_124:
      if (WORD2(v48) <= a3.column)
      {
        v52 = WORD2(v48) == 0x7FFF || v49 == 0;
        v53 = v52 ? 0x7FFF : v49 + WORD2(v48) - 1;
        p_space = p_repeatHeaderRowsSpace;
        if (v53 >= a3.column)
        {
          goto LABEL_118;
        }
      }

LABEL_111:
      v50 = 0;
      goto LABEL_119;
    }

    p_space = p_repeatHeaderRowsSpace;
LABEL_118:
    v50 = *p_space;
  }

LABEL_119:

  return v50;
}

- (int)validateLayoutSpaces
{
  v5 = objc_msgSend_validate_(self->_space, a2, 0, v2, v3);
  v9 = objc_msgSend_validate_(self->_frozenHeaderColumnsSpace, v6, self->_space, v7, v8) | v5;
  v13 = objc_msgSend_validate_(self->_frozenHeaderRowsSpace, v10, self->_space, v11, v12);
  v17 = v9 | v13 | objc_msgSend_validate_(self->_frozenHeaderCornerSpace, v14, self->_space, v15, v16);
  v21 = objc_msgSend_validate_(self->_repeatHeaderColumnsSpace, v18, self->_space, v19, v20);
  v25 = v21 | objc_msgSend_validate_(self->_repeatHeaderRowsSpace, v22, self->_space, v23, v24);
  v33 = v17 | v25 | objc_msgSend_validate_(self->_repeatHeaderCornerSpace, v26, self->_space, v27, v28);
  if (v33)
  {
    objc_msgSend_validateCoordinateDirection(self->_space, v29, v30, v31, v32);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderColumnsSpace, v34, v35, v36, v37);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderRowsSpace, v38, v39, v40, v41);
    objc_msgSend_validateCoordinateDirection(self->_frozenHeaderCornerSpace, v42, v43, v44, v45);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderColumnsSpace, v46, v47, v48, v49);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderRowsSpace, v50, v51, v52, v53);
    objc_msgSend_validateCoordinateDirection(self->_repeatHeaderCornerSpace, v54, v55, v56, v57);
  }

  return v33;
}

- (void)enumerateLayoutSpacesUsingBlock:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_enumerateFrozenLayoutSpacesUsingBlock_(self, v5, v4, v6, v7) & 1) == 0)
  {
    v12 = objc_msgSend_enumerateRepeatLayoutSpacesUsingBlock_(self, v8, v4, v9, v10);
    if ((v12 & 1) == 0)
    {
      space = self->_space;
      if (space)
      {
        v4[2](v4, space, &v12);
      }
    }
  }
}

- (BOOL)enumerateFrozenLayoutSpacesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  frozenHeaderCornerSpace = self->_frozenHeaderCornerSpace;
  if (frozenHeaderCornerSpace && ((*(v4 + 2))(v4, frozenHeaderCornerSpace, &v11), (v11 & 1) != 0) || (frozenHeaderRowsSpace = self->_frozenHeaderRowsSpace) != 0 && ((v5)[2](v5, frozenHeaderRowsSpace, &v11), (v11 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    frozenHeaderColumnsSpace = self->_frozenHeaderColumnsSpace;
    if (frozenHeaderColumnsSpace)
    {
      (v5)[2](v5, frozenHeaderColumnsSpace, &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (BOOL)enumerateRepeatLayoutSpacesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  repeatHeaderCornerSpace = self->_repeatHeaderCornerSpace;
  if (repeatHeaderCornerSpace && ((*(v4 + 2))(v4, repeatHeaderCornerSpace, &v11), (v11 & 1) != 0) || (repeatHeaderRowsSpace = self->_repeatHeaderRowsSpace) != 0 && ((v5)[2](v5, repeatHeaderRowsSpace, &v11), (v11 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    repeatHeaderColumnsSpace = self->_repeatHeaderColumnsSpace;
    if (repeatHeaderColumnsSpace)
    {
      (v5)[2](v5, repeatHeaderColumnsSpace, &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (TSTLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end