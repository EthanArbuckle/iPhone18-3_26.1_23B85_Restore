@interface TNSheetUIState
+ (int64_t)currentDeviceIdiom;
- (BOOL)isEqual:(id)a3;
- (CGPoint)previousScrollPosition;
- (CGPoint)scrollPosition;
- (CGRect)previousVisibleRect;
- (CGRect)visibleRect;
- (TNSheetUIState)init;
- (TNSheetUIState)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_persistableSelectionPathFromSelectionPath:(id)a3;
- (void)clearPreviousVisibleRect;
- (void)clearVisibleRect;
- (void)saveToArchive:(void *)a3 archiver:(id)a4 context:(id)a5;
- (void)setPreviousVisibleRect:(CGRect)a3;
- (void)setSelectionPath:(id)a3;
- (void)setVisibleRect:(CGRect)a3;
- (void)updateForCurrentDeviceIdiomIfNecessaryWithDefaultViewScale:(float)a3;
@end

@implementation TNSheetUIState

- (TNSheetUIState)init
{
  v6.receiver = self;
  v6.super_class = TNSheetUIState;
  v4 = [(TNSheetUIState *)&v6 init];
  if (v4)
  {
    v4->_archivedDeviceIdiom = objc_msgSend_currentDeviceIdiom(TNSheetUIState, v2, v3);
  }

  return v4;
}

+ (int64_t)currentDeviceIdiom
{
  if (objc_msgSend_tsk_padUI(MEMORY[0x277D75418], a2, v2))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setVisibleRect:(CGRect)a3
{
  self->_hasVisibleRect = 1;
  self->_visibleRect = a3;
  self->_archivedDeviceIdiom = objc_msgSend_currentDeviceIdiom(TNSheetUIState, a2, v3);
}

- (void)clearVisibleRect
{
  self->_hasVisibleRect = 0;
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_visibleRect.origin = *MEMORY[0x277CBF3A0];
  self->_visibleRect.size = v2;
}

- (void)setPreviousVisibleRect:(CGRect)a3
{
  self->_hasPreviousVisibleRect = 1;
  self->_previousVisibleRect = a3;
  self->_archivedDeviceIdiom = objc_msgSend_currentDeviceIdiom(TNSheetUIState, a2, v3);
}

- (void)clearPreviousVisibleRect
{
  self->_hasPreviousVisibleRect = 0;
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_previousVisibleRect.origin = *MEMORY[0x277CBF3A0];
  self->_previousVisibleRect.size = v2;
}

- (CGPoint)scrollPosition
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousScrollPosition
{
  x = self->_previousVisibleRect.origin.x;
  y = self->_previousVisibleRect.origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)updateForCurrentDeviceIdiomIfNecessaryWithDefaultViewScale:(float)a3
{
  archivedDeviceIdiom = self->_archivedDeviceIdiom;
  if (archivedDeviceIdiom != objc_msgSend_currentDeviceIdiom(TNSheetUIState, a2, v3))
  {
    objc_msgSend_clearVisibleRect(self, v7, v8);
    objc_msgSend_clearPreviousVisibleRect(self, v9, v10);
    self->_archivedDeviceIdiom = objc_msgSend_currentDeviceIdiom(TNSheetUIState, v11, v12);
    self->_viewScale = a3;
    self->_previousViewScale = a3;
  }
}

- (TNSheetUIState)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_init(self, v7, v8);
  if (v11)
  {
    if (objc_msgSend_preUFFVersion(v6, v9, v10) >= 0x2CBE9CBCDLL)
    {
      v14 = *(a3 + 4);
      if ((v14 & 4) != 0)
      {
        v15 = *(a3 + 5);
        v16 = *(a3 + 3);
        if (!v16)
        {
          v16 = MEMORY[0x277D809F0];
        }

        *(v11 + 40) = vcvtq_f64_f32(v16[3]);
        *(v11 + 56) = vcvtq_f64_f32(v15[3]);
      }

      if ((~v14 & 0xA) != 0)
      {
        *(v11 + 72) = *(v11 + 40);
        *(v11 + 88) = *(v11 + 56);
        v14 = *(a3 + 4);
        if ((v14 & 0x200) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v17 = *(a3 + 6);
        *(v11 + 72) = vcvtq_f64_f32(*(*(a3 + 4) + 24));
        *(v11 + 88) = vcvtq_f64_f32(v17[3]);
        if ((v14 & 0x200) == 0)
        {
          goto LABEL_16;
        }
      }

      if (*(a3 + 81) == 1)
      {
        v24 = (v14 >> 2) & 1;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      *(v11 + 8) = v24;
LABEL_16:
      if ((v14 & 0x400) != 0)
      {
        if (*(a3 + 82) == 1)
        {
          v25 = (v14 >> 3) & 1;
        }

        else
        {
          LOBYTE(v25) = 0;
        }

        *(v11 + 9) = v25;
      }

      v26 = *(a3 + 18);
      if ((v14 & 0x40) == 0)
      {
        v26 = 1.0;
      }

      *(v11 + 12) = v26;
      v27 = *(a3 + 19);
      if ((v14 & 0x80) == 0)
      {
        v27 = 1.0;
      }

      *(v11 + 16) = v27;
      if ((v14 & 0x800) != 0)
      {
        *(v11 + 24) = *(a3 + 21);
        if ((v14 & 0x10) == 0)
        {
LABEL_33:
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = sub_275F311E0;
          v34[3] = &unk_27A6A2868;
          v35 = v11;
          objc_msgSend_addFinalizeHandler_(v6, v32, v34);

          goto LABEL_34;
        }
      }

      else
      {
        *(v11 + 24) = objc_msgSend_currentDeviceIdiom(TNSheetUIState, v12, v13);
        if ((*(a3 + 4) & 0x10) == 0)
        {
          goto LABEL_33;
        }
      }

      v28 = objc_alloc(MEMORY[0x277D806C8]);
      if (*(a3 + 7))
      {
        v30 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, *(a3 + 7), v6);
      }

      else
      {
        v30 = objc_msgSend_initWithArchive_unarchiver_(v28, v29, MEMORY[0x277D80750], v6);
      }

      v31 = *(v11 + 32);
      *(v11 + 32) = v30;

      goto LABEL_33;
    }

    _Q0 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    *(v11 + 40) = *MEMORY[0x277CBF3A0];
    *(v11 + 56) = v19;
    *(v11 + 72) = _Q0;
    *(v11 + 88) = v19;
    *(v11 + 8) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v11 + 12) = _Q0;
    *(v11 + 24) = objc_msgSend_currentDeviceIdiom(TNSheetUIState, v12, v13);
  }

LABEL_34:

  return v11;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4 context:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = UnsafePointer();
  objc_msgSend_saveToArchive_archiver_context_beforeVersion_(self, v10, a3, v11, v8, v9);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TNSheetUIState);
  origin = self->_visibleRect.origin;
  v4->_visibleRect.size = self->_visibleRect.size;
  v4->_visibleRect.origin = origin;
  v6 = self->_previousVisibleRect.origin;
  v4->_previousVisibleRect.size = self->_previousVisibleRect.size;
  v4->_previousVisibleRect.origin = v6;
  v4->_hasVisibleRect = self->_hasVisibleRect;
  v4->_hasPreviousVisibleRect = self->_hasPreviousVisibleRect;
  v4->_viewScale = self->_viewScale;
  v4->_previousViewScale = self->_previousViewScale;
  v4->_archivedDeviceIdiom = self->_archivedDeviceIdiom;
  v9 = objc_msgSend_copy(self->_selectionPath, v7, v8);
  selectionPath = v4->_selectionPath;
  v4->_selectionPath = v9;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v7 = v6;
  if (v6 && CGRectEqualToRect(self->_visibleRect, *(v6 + 40)) && CGRectEqualToRect(self->_previousVisibleRect, *(v7 + 72)) && self->_hasVisibleRect == *(v7 + 8) && self->_hasPreviousVisibleRect == *(v7 + 9) && self->_viewScale == *(v7 + 12) && self->_previousViewScale == *(v7 + 16) && self->_archivedDeviceIdiom == *(v7 + 24))
  {
    selectionPath = self->_selectionPath;
    v11 = selectionPath;
    if (!selectionPath)
    {
      v3 = objc_msgSend_selectionPath(v7, v8, v9);
      if (!v3)
      {
        isEqual = 1;
LABEL_17:

        goto LABEL_15;
      }

      v11 = self->_selectionPath;
    }

    isEqual = objc_msgSend_isEqual_(v11, v8, *(v7 + 32));
    if (!selectionPath)
    {
      goto LABEL_17;
    }
  }

  else
  {
    isEqual = 0;
  }

LABEL_15:

  return isEqual;
}

- (id)p_persistableSelectionPathFromSelectionPath:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_chartSelection(v4, v5, v6);
  if (v7)
  {

LABEL_4:
    v13 = self->_selectionPath;
    goto LABEL_5;
  }

  v10 = objc_msgSend_formulaSelection(v4, v8, v9);

  if (v10)
  {
    goto LABEL_4;
  }

  v13 = objc_msgSend_selectionPathForUIState(v4, v11, v12);
LABEL_5:
  v14 = v13;

  return v14;
}

- (void)setSelectionPath:(id)a3
{
  v11 = a3;
  v5 = objc_msgSend_p_persistableSelectionPathFromSelectionPath_(self, v4, v11);

  selectionPath = self->_selectionPath;
  p_selectionPath = &self->_selectionPath;
  v8 = selectionPath;
  v9 = v5;
  if (v9 | v8)
  {
    v12 = v9;
    isEqual = objc_msgSend_isEqual_(v8, v9, v9);

    v9 = v12;
    if ((isEqual & 1) == 0)
    {
      objc_storeStrong(p_selectionPath, v5);
      v9 = v12;
    }
  }
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)previousVisibleRect
{
  x = self->_previousVisibleRect.origin.x;
  y = self->_previousVisibleRect.origin.y;
  width = self->_previousVisibleRect.size.width;
  height = self->_previousVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end