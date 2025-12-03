@interface TSDFreehandDrawingToolkitUIState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFreehandDrawingToolkitUIState:(id)state;
- (TSDFreehandDrawingToolkitUIState)initWithContext:(id)context;
- (double)p_defaultStrokeWidthForToolType:(unint64_t)type;
- (id)copy;
- (id)p_defaultColorForToolType:(unint64_t)type;
- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type;
- (unint64_t)hash;
- (unint64_t)p_defaultToolType;
- (unint64_t)p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:(unint64_t)type;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_setColor:(id)color forToolType:(unint64_t)type;
- (void)p_setDefaultToolType:(unint64_t)type;
- (void)p_setupDefaultValues;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSDFreehandDrawingToolkitUIState

- (TSDFreehandDrawingToolkitUIState)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TSDFreehandDrawingToolkitUIState;
  v5 = [(TSDFreehandDrawingToolkitUIState *)&v11 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2766CE628;
    v9[3] = &unk_27A6CC790;
    v10 = v5;
    objc_msgSend_performBlockIgnoringModifications_(v10, v7, v9);
  }

  return v6;
}

- (void)p_setupDefaultValues
{
  v4 = objc_msgSend_p_defaultToolType(self, a2, v2);
  self->_currentToolType = v4;
  self->_mostRecentRestorableToolType = v4;
  self->_penToolOpacity = 1.0;
  objc_msgSend_p_defaultStrokeWidthForToolType_(self, v5, 0);
  self->_penToolUnscaledWidth = v6;
  self->_pencilToolOpacity = 0.5;
  objc_msgSend_p_defaultStrokeWidthForToolType_(self, v7, 1);
  self->_pencilToolUnscaledWidth = v8;
  self->_crayonToolOpacity = 1.0;
  objc_msgSend_p_defaultStrokeWidthForToolType_(self, v9, 2);
  self->_crayonToolUnscaledWidth = v10;
  self->_fillToolOpacity = 1.0;
  objc_msgSend_p_defaultStrokeWidthForToolType_(self, v11, 4);
  self->_eraserToolScaledWidth = v12;
  self->_eraserToolErasesWholeObjects = 0;
  v21 = objc_msgSend_p_defaultColorForToolType_(self, v13, 0);
  objc_msgSend_p_setColor_forToolType_(self, v14, v21, 0);

  v22 = objc_msgSend_p_defaultColorForToolType_(self, v15, 1);
  objc_msgSend_p_setColor_forToolType_(self, v16, v22, 1);

  v23 = objc_msgSend_p_defaultColorForToolType_(self, v17, 2);
  objc_msgSend_p_setColor_forToolType_(self, v18, v23, 2);

  v24 = objc_msgSend_p_defaultColorForToolType_(self, v19, 3);
  objc_msgSend_p_setColor_forToolType_(self, v20, v24, 3);
}

- (id)p_defaultColorForToolType:(unint64_t)type
{
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        v4 = objc_msgSend_pencilTrayYellowColor(MEMORY[0x277D81180], a2, 3);
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = objc_msgSend_pencilTrayRedColor(MEMORY[0x277D81180], a2, 2);
  }

  else
  {
    if (type)
    {
      if (type == 1)
      {
        v4 = objc_msgSend_pencilTrayGreenColor(MEMORY[0x277D81180], a2, 1);
        goto LABEL_11;
      }

LABEL_8:
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFreehandDrawingToolkitUIState p_defaultColorForToolType:]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingToolkitUIState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 120, 0, "Tool type %lu does not support color", type);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
      v4 = 0;
      goto LABEL_11;
    }

    v4 = objc_msgSend_pencilTrayBlueColor(MEMORY[0x277D81180], a2, 0);
  }

LABEL_11:

  return v4;
}

- (double)p_defaultStrokeWidthForToolType:(unint64_t)type
{
  v5 = objc_msgSend_p_indexOfDefaultStrokeWidthForFreehandDrawingToolType_(self, a2, type);
  v7 = objc_msgSend_strokeWidthsForFreehandDrawingToolType_(self, v6, type);
  if (v5 >= objc_msgSend_count(v7, v8, v9))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDFreehandDrawingToolkitUIState p_defaultStrokeWidthForToolType:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingToolkitUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 130, 0, "The app delegate must provide at least %lu widths for tool type: %lu", v5 + 1, type);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v5);
  objc_msgSend_floatValue(v18, v19, v20);
  v22 = v21;

  return v22;
}

- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type
{
  objc_opt_class();
  v6 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v4, v5);
  v7 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_strokeWidthsForFreehandDrawingToolType_(v7, v8, type);
  if (!objc_msgSend_count(v9, v10, v11))
  {
    if (type > 2)
    {
      switch(type)
      {
        case 3uLL:
          goto LABEL_8;
        case 4uLL:
          v13 = &unk_28859C770;
          goto LABEL_12;
        case 5uLL:
LABEL_8:
          v14 = MEMORY[0x277D81150];
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDFreehandDrawingToolkitUIState strokeWidthsForFreehandDrawingToolType:]");
          v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingToolkitUIState.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 155, 0, "Unknown tool type %lu when generating stroke widths.", type);

          objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v19, v20);
          break;
      }
    }

    else
    {
      if (type < 2)
      {
        v13 = &unk_28859C740;
LABEL_12:

        v9 = v13;
        goto LABEL_13;
      }

      if (type == 2)
      {
        v13 = &unk_28859C758;
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v21 = v9;

  return v9;
}

- (BOOL)isEqualToFreehandDrawingToolkitUIState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  v12 = self->_currentToolType == *(stateCopy + 8) && self->_mostRecentRestorableToolType == *(stateCopy + 23) && ((v6 = *(stateCopy + 10), v7 = self->_penToolColor, v8 = v6, !(v7 | v8)) || (v10 = v8, isEqual = objc_msgSend_isEqual_(v7, v9, v8), v10, v7, isEqual)) && self->_penToolOpacity == v5[11] && self->_penToolUnscaledWidth == v5[12] && sub_2766CEE2C(self->_pencilToolColor, *(v5 + 13)) && self->_pencilToolOpacity == v5[14] && self->_pencilToolUnscaledWidth == v5[15] && sub_2766CEE2C(self->_crayonToolColor, *(v5 + 16)) && self->_crayonToolOpacity == v5[17] && self->_crayonToolUnscaledWidth == v5[18] && sub_2766CEE2C(self->_fillToolColor, *(v5 + 19)) && self->_fillToolOpacity == v5[20] && self->_eraserToolScaledWidth == v5[21] && self->_eraserToolErasesWholeObjects == *(v5 + 176);

  return v12;
}

- (unint64_t)p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:(unint64_t)type
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        return 2;
      }

      if (type != 5)
      {
        return result;
      }
    }

    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFreehandDrawingToolkitUIState p_indexOfDefaultStrokeWidthForFreehandDrawingToolType:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingToolkitUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 202, 0, "Unknown tool type %lu when generating stroke widths.", type);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v11, v12);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (type == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (type == 1)
  {
    v5 = 1;
  }

  if (type)
  {
    return v5;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)p_defaultToolType
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"TSDFreehandDrawingToolkitUIStateDefaultToolKey");

  if (v5)
  {
    objc_opt_class();
    v7 = objc_msgSend_objectForKey_(v3, v6, @"TSDFreehandDrawingToolkitUIStateDefaultToolKey");
    v8 = TSUCheckedDynamicCast();

    v11 = objc_msgSend_unsignedIntegerValue(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)p_setDefaultToolType:(unint64_t)type
{
  v7 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, type);
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v4, type);
  objc_msgSend_setObject_forKey_(v7, v6, v5, @"TSDFreehandDrawingToolkitUIStateDefaultToolKey");
}

- (id)copy
{
  v3 = [TSDFreehandDrawingToolkitUIState alloc];
  v6 = objc_msgSend_context(self, v4, v5);
  v8 = objc_msgSend_initWithContext_(v3, v7, v6);

  *(v8 + 64) = self->_currentToolType;
  *(v8 + 184) = self->_mostRecentRestorableToolType;
  v11 = objc_msgSend_copy(self->_penToolColor, v9, v10);
  v12 = *(v8 + 80);
  *(v8 + 80) = v11;

  *(v8 + 88) = self->_penToolOpacity;
  *(v8 + 96) = self->_penToolUnscaledWidth;
  v15 = objc_msgSend_copy(self->_pencilToolColor, v13, v14);
  v16 = *(v8 + 104);
  *(v8 + 104) = v15;

  *(v8 + 112) = self->_pencilToolOpacity;
  *(v8 + 120) = self->_pencilToolUnscaledWidth;
  v19 = objc_msgSend_copy(self->_crayonToolColor, v17, v18);
  v20 = *(v8 + 128);
  *(v8 + 128) = v19;

  *(v8 + 136) = self->_crayonToolOpacity;
  *(v8 + 144) = self->_crayonToolUnscaledWidth;
  v23 = objc_msgSend_copy(self->_fillToolColor, v21, v22);
  v24 = *(v8 + 152);
  *(v8 + 152) = v23;

  *(v8 + 160) = self->_fillToolOpacity;
  *(v8 + 168) = self->_eraserToolScaledWidth;
  *(v8 + 176) = self->_eraserToolErasesWholeObjects;
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToFreehandDrawingToolkitUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToFreehandDrawingToolkitUIState = objc_msgSend_isEqualToFreehandDrawingToolkitUIState_(self, v5, equalCopy);
    }

    else
    {
      isEqualToFreehandDrawingToolkitUIState = 0;
    }
  }

  return isEqualToFreehandDrawingToolkitUIState;
}

- (unint64_t)hash
{
  TSUHash();
  TSUHashWithSeed();
  objc_msgSend_hash(self->_penToolColor, v3, v4);
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, self->_penToolOpacity);
  objc_msgSend_hash(v7, v8, v9);

  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, self->_penToolUnscaledWidth);
  objc_msgSend_hash(v12, v13, v14);

  objc_msgSend_hash(self->_pencilToolColor, v15, v16);
  v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18, self->_pencilToolOpacity);
  objc_msgSend_hash(v19, v20, v21);

  v24 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, self->_pencilToolUnscaledWidth);
  objc_msgSend_hash(v24, v25, v26);

  objc_msgSend_hash(self->_crayonToolColor, v27, v28);
  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v30, self->_crayonToolOpacity);
  objc_msgSend_hash(v31, v32, v33);

  v36 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, self->_crayonToolUnscaledWidth);
  objc_msgSend_hash(v36, v37, v38);

  objc_msgSend_hash(self->_fillToolColor, v39, v40);
  v43 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v41, v42, self->_fillToolOpacity);
  objc_msgSend_hash(v43, v44, v45);

  v48 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v46, v47, self->_eraserToolScaledWidth);
  objc_msgSend_hash(v48, v49, v50);

  return TSUHashWithSeed();
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[98]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  objc_msgSend_p_setupDefaultValues(self, a2, archive, unarchiver);
  v6 = *(archive + 16);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        mostRecentRestorableToolType = 3;
        goto LABEL_15;
      case 4:
        mostRecentRestorableToolType = 4;
        goto LABEL_15;
      case 5:
        mostRecentRestorableToolType = 5;
        goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      mostRecentRestorableToolType = 1;
      goto LABEL_15;
    }

    if (v6 == 2)
    {
      mostRecentRestorableToolType = 2;
LABEL_15:
      self->_mostRecentRestorableToolType = mostRecentRestorableToolType;
      goto LABEL_16;
    }

LABEL_12:
    mostRecentRestorableToolType = self->_mostRecentRestorableToolType;
    goto LABEL_16;
  }

  mostRecentRestorableToolType = 0;
  self->_mostRecentRestorableToolType = 0;
LABEL_16:
  self->_currentToolType = mostRecentRestorableToolType;
  v8 = *(archive + 4);
  if (v8 & 2) != 0 || (v8)
  {
    v9 = TSPTSUColorCreateFromMessage();
    objc_msgSend_p_setColor_forToolType_(self, v10, v9, 0);
  }

  v11 = *(archive + 4);
  if ((v11 & 0x40) != 0)
  {
    self->_penToolOpacity = *(archive + 17);
    if ((v11 & 0x80) == 0)
    {
LABEL_21:
      if ((v11 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  self->_penToolUnscaledWidth = *(archive + 18);
  if ((v11 & 4) == 0)
  {
LABEL_22:
    if ((v11 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  v12 = TSPTSUColorCreateFromMessage();
  objc_msgSend_p_setColor_forToolType_(self, v13, v12, 1);

LABEL_27:
  v14 = *(archive + 4);
  if ((v14 & 0x100) != 0)
  {
    self->_pencilToolOpacity = *(archive + 19);
    if ((v14 & 0x200) == 0)
    {
LABEL_29:
      if ((v14 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  self->_pencilToolUnscaledWidth = *(archive + 20);
  if ((v14 & 8) == 0)
  {
LABEL_30:
    if ((v14 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_34:
  v15 = TSPTSUColorCreateFromMessage();
  objc_msgSend_p_setColor_forToolType_(self, v16, v15, 2);

LABEL_35:
  v17 = *(archive + 4);
  if ((v17 & 0x400) != 0)
  {
    self->_crayonToolOpacity = *(archive + 21);
    if ((v17 & 0x800) == 0)
    {
LABEL_37:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }
  }

  else if ((v17 & 0x800) == 0)
  {
    goto LABEL_37;
  }

  self->_crayonToolUnscaledWidth = *(archive + 22);
  if ((v17 & 0x10) == 0)
  {
LABEL_38:
    if ((v17 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

LABEL_42:
  v18 = TSPTSUColorCreateFromMessage();
  objc_msgSend_p_setColor_forToolType_(self, v19, v18, 3);

LABEL_43:
  v20 = *(archive + 4);
  if ((v20 & 0x1000) != 0)
  {
    self->_fillToolOpacity = *(archive + 23);
    if ((v20 & 0x2000) == 0)
    {
LABEL_45:
      if ((v20 & 0x4000) == 0)
      {
        return;
      }

      goto LABEL_46;
    }
  }

  else if ((v20 & 0x2000) == 0)
  {
    goto LABEL_45;
  }

  self->_eraserToolScaledWidth = *(archive + 24);
  if ((v20 & 0x4000) == 0)
  {
    return;
  }

LABEL_46:
  self->_eraserToolErasesWholeObjects = *(archive + 100);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766D02A4, off_2812F5188[98]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v6 = 0;
  mostRecentRestorableToolType = self->_mostRecentRestorableToolType;
  if (mostRecentRestorableToolType <= 2)
  {
    if (mostRecentRestorableToolType)
    {
      if (mostRecentRestorableToolType != 1)
      {
        if (mostRecentRestorableToolType != 2)
        {
          goto LABEL_26;
        }

        v8 = *(archive + 4);
        *(archive + 4) = v8 | 0x20;
        *(archive + 16) = 2;
        *(archive + 4) = v8 | 0x21;
        if (*(archive + 3))
        {
          goto LABEL_25;
        }

        v9 = *(archive + 1);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        goto LABEL_24;
      }

      v12 = *(archive + 4);
      *(archive + 4) = v12 | 0x20;
      *(archive + 16) = 1;
      *(archive + 4) = v12 | 0x21;
      if (!*(archive + 3))
      {
        v9 = *(archive + 1);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

LABEL_24:
        *(archive + 3) = MEMORY[0x277C9BAF0](v9);
      }
    }

    else
    {
      v10 = *(archive + 4);
      *(archive + 4) = v10 | 0x20;
      *(archive + 16) = 0;
      *(archive + 4) = v10 | 0x21;
      if (!*(archive + 3))
      {
        v9 = *(archive + 1);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        goto LABEL_24;
      }
    }

LABEL_25:
    TSPTSUColorCopyToMessage();
    v6 = 0;
    goto LABEL_26;
  }

  if (mostRecentRestorableToolType == 3)
  {
    v11 = *(archive + 4);
    *(archive + 4) = v11 | 0x20;
    *(archive + 16) = 3;
    *(archive + 4) = v11 | 0x21;
    if (!*(archive + 3))
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (mostRecentRestorableToolType == 4 || mostRecentRestorableToolType == 5)
  {
    *(archive + 4) |= 0x20u;
    *(archive + 16) = mostRecentRestorableToolType;
    v6 = 1;
  }

LABEL_26:
  *(archive + 4) |= 2u;
  if (!*(archive + 4))
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 4) = MEMORY[0x277C9BAF0](v13);
  }

  TSPTSUColorCopyToMessage();
  penToolOpacity = self->_penToolOpacity;
  v15 = *(archive + 4);
  penToolUnscaledWidth = self->_penToolUnscaledWidth;
  *(archive + 4) = v15 | 0xC0;
  *(archive + 17) = penToolOpacity;
  *(archive + 18) = penToolUnscaledWidth;
  *(archive + 4) = v15 | 0xC4;
  if (!*(archive + 5))
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 5) = MEMORY[0x277C9BAF0](v17);
  }

  TSPTSUColorCopyToMessage();
  pencilToolOpacity = self->_pencilToolOpacity;
  v19 = *(archive + 4);
  pencilToolUnscaledWidth = self->_pencilToolUnscaledWidth;
  *(archive + 4) = v19 | 0x300;
  *(archive + 19) = pencilToolOpacity;
  *(archive + 20) = pencilToolUnscaledWidth;
  *(archive + 4) = v19 | 0x308;
  if (!*(archive + 6))
  {
    v21 = *(archive + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 6) = MEMORY[0x277C9BAF0](v21);
  }

  TSPTSUColorCopyToMessage();
  crayonToolOpacity = self->_crayonToolOpacity;
  v23 = *(archive + 4);
  crayonToolUnscaledWidth = self->_crayonToolUnscaledWidth;
  *(archive + 4) = v23 | 0xC00;
  *(archive + 21) = crayonToolOpacity;
  *(archive + 22) = crayonToolUnscaledWidth;
  *(archive + 4) = v23 | 0xC10;
  if (!*(archive + 7))
  {
    v25 = *(archive + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 7) = MEMORY[0x277C9BAF0](v25);
  }

  TSPTSUColorCopyToMessage();
  fillToolOpacity = self->_fillToolOpacity;
  v27 = *(archive + 4);
  eraserToolScaledWidth = self->_eraserToolScaledWidth;
  *(archive + 23) = fillToolOpacity;
  *(archive + 24) = eraserToolScaledWidth;
  eraserToolErasesWholeObjects = self->_eraserToolErasesWholeObjects;
  *(archive + 4) = v27 | 0x7000;
  *(archive + 100) = eraserToolErasesWholeObjects;
  if (objc_msgSend_shouldSaveAlternates(archiverCopy, v30, v31))
  {
    v33 = self->_penToolOpacity;
    v34 = self->_pencilToolOpacity;
    v35 = self->_crayonToolOpacity;
    v36 = self->_fillToolOpacity;
    v37 = fmin(fmin(fmin(v33, v34), v35), v36) < 0.1 ? 1 : v6;
    if (v37 == 1)
    {
      v38 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(archiverCopy, v32, *MEMORY[0x277D808D8], *MEMORY[0x277D809B8], archive);
      google::protobuf::internal::AssignDescriptors();
      v40 = objc_msgSend_messageWithNewFunction_descriptor_(v38, v39, sub_2766D02A4, off_2812F5188[98]);

      if (v33 < 0.1)
      {
        v40[4] |= 0x40u;
        v40[17] = 1036831949;
      }

      if (v34 < 0.1)
      {
        v40[4] |= 0x100u;
        v40[19] = 1036831949;
      }

      if (v35 < 0.1)
      {
        v40[4] |= 0x400u;
        v40[21] = 1036831949;
      }

      if (v36 < 0.1)
      {
        v40[4] |= 0x1000u;
        v40[23] = 1036831949;
      }

      if (v6)
      {
        v40[4] |= 0x20u;
        v40[16] = 0;
      }
    }
  }
}

- (void)p_setColor:(id)color forToolType:(unint64_t)type
{
  colorCopy = color;
  obj = objc_msgSend_colorWithAlphaComponent_(colorCopy, v7, v8, 1.0);

  if (type > 2)
  {
    if (type - 4 < 2)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDFreehandDrawingToolkitUIState p_setColor:forToolType:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingToolkitUIState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 718, 0, "Cannot set color for given tool (%zd)", type);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19);
      goto LABEL_16;
    }

    if (type == 3)
    {
      p_fillToolColor = &self->_fillToolColor;
      if ((objc_msgSend_isEqual_(self->_fillToolColor, v9, obj) & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    switch(type)
    {
      case 0uLL:
        p_fillToolColor = &self->_penToolColor;
        if (objc_msgSend_isEqual_(self->_penToolColor, v9, obj))
        {
          break;
        }

        goto LABEL_15;
      case 1uLL:
        p_fillToolColor = &self->_pencilToolColor;
        if (objc_msgSend_isEqual_(self->_pencilToolColor, v9, obj))
        {
          break;
        }

        goto LABEL_15;
      case 2uLL:
        p_fillToolColor = &self->_crayonToolColor;
        if ((objc_msgSend_isEqual_(self->_crayonToolColor, v9, obj) & 1) == 0)
        {
LABEL_15:
          objc_msgSend_willModify(self, v11, v12);
          objc_storeStrong(p_fillToolColor, obj);
        }

        break;
    }
  }

LABEL_16:
}

@end