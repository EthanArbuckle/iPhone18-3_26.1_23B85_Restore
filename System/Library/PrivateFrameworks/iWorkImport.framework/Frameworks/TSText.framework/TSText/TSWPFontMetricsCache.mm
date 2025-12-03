@interface TSWPFontMetricsCache
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedCache;
- (BOOL)p_findEntryForFont:(__CTFont *)font outHeightInfo:(TSWPFontHeightInfo *)info outWidths:(unint64_t *)widths outCollision:(BOOL *)collision;
- (TSWPFontHeightInfo)p_fontHeightInfoForFont:(SEL)font outWidths:(__CTFont *)widths;
- (TSWPFontMetricsCache)init;
- (id).cxx_construct;
- (unint64_t)supportedFractionalWidthsForFont:(__CTFont *)font;
- (void)dealloc;
- (void)validateFontHeightInfo:(const TSWPFontHeightInfo *)info description:(id)description;
@end

@implementation TSWPFontMetricsCache

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSWPFontMetricsCache;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DFE758;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58470 != -1)
  {
    dispatch_once(&qword_280A58470, block);
  }

  v2 = qword_280A58468;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPFontMetricsCache allocWithZone:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontMetricsCache.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 21, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (TSWPFontMetricsCache)init
{
  v5.receiver = self;
  v5.super_class = TSWPFontMetricsCache;
  v2 = [(TSWPFontMetricsCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxCacheSize = 32;
    pthread_rwlock_init(&v2->_lock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  begin_node = self->_fontHashToInfoMap.__tree_.__begin_node_;
  if (begin_node != &self->_fontHashToInfoMap.__tree_.__end_node_)
  {
    do
    {
      CFRelease(begin_node[18].__left_);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v5 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v5 = begin_node[2].__left_;
          v6 = v5->super.isa == begin_node;
          begin_node = v5;
        }

        while (!v6);
      }

      begin_node = v5;
    }

    while (v5 != &self->_fontHashToInfoMap.__tree_.__end_node_);
  }

  v7.receiver = self;
  v7.super_class = TSWPFontMetricsCache;
  [(TSWPFontMetricsCache *)&v7 dealloc];
}

- (TSWPFontHeightInfo)p_fontHeightInfoForFont:(SEL)font outWidths:(__CTFont *)widths
{
  widthsCopy = widths;
  selfCopy2 = self;
  v78 = *MEMORY[0x277D85DE8];
  *retstr = *byte_276F98C20;
  if (!widths)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], font, "[TSWPFontMetricsCache p_fontHeightInfoForFont:outWidths:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 50, 0, "invalid nil value for '%{public}s'", "font");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    selfCopy2 = self;
    widthsCopy = 0;
  }

  pthread_rwlock_rdlock(&selfCopy2->_lock);
  v75 = 0;
  v64 = selfCopy2;
  EntryForFont_outHeightInfo_outWidths_outCollision = objc_msgSend_p_findEntryForFont_outHeightInfo_outWidths_outCollision_(selfCopy2, v17, widthsCopy, retstr, a5, &v75);
  result = pthread_rwlock_unlock(&selfCopy2->_lock);
  if (EntryForFont_outHeightInfo_outWidths_outCollision)
  {
    return result;
  }

  TSWPDefaultLineHeightForFont(widths);
  Size = v20;
  retstr->ascent = CTFontGetAscent(widths);
  retstr->descent = CTFontGetDescent(widths);
  retstr->capHeight = CTFontGetCapHeight(widths);
  retstr->xHeight = CTFontGetXHeight(widths);
  retstr->underlinePosition = CTFontGetUnderlinePosition(widths);
  retstr->underlineThickness = CTFontGetUnderlineThickness(widths);
  Leading = CTFontGetLeading(widths);
  ascent = retstr->ascent;
  descent = retstr->descent;
  if (ascent == 0.0)
  {
    widthsCopy4 = widths;
    if (descent != 0.0 || Leading != 0.0)
    {
      goto LABEL_9;
    }

    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPFontMetricsCache p_fontHeightInfoForFont:outWidths:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 74, 0, "Bad metrics for font %{public}@", widths);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    Size = CTFontGetSize(widths);
    descent = Size * 0.5;
    retstr->descent = Size * 0.5;
    retstr->ascent = Size * 0.5;
    ascent = Size * 0.5;
  }

  widthsCopy4 = widths;
LABEL_9:
  if (retstr->capHeight <= 0.0)
  {
    v35 = CTFontCopyPostScriptName(widthsCopy4);
    objc_msgSend_containsObject_(&unk_288627F08, v36, v35);

    ascent = retstr->ascent;
    retstr->capHeight = ascent;
    descent = retstr->descent;
    widthsCopy4 = widths;
  }

  retstr->leadingAbove = Size - ascent - descent - Leading;
  retstr->leadingBelow = Leading;
  v37 = objc_msgSend_description(widthsCopy4, v22, v23);
  objc_msgSend_validateFontHeightInfo_description_(selfCopy2, v38, retstr, v37);

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = CTFontCopyFeatures(widths);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v71, v77, 16);
  if (v41)
  {
    v42 = *v72;
    v43 = *MEMORY[0x277CC48D8];
    v63 = *MEMORY[0x277CC48E0];
    v44 = *MEMORY[0x277CC48C8];
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v72 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v71 + 1) + 8 * i);
        v47 = objc_msgSend_objectForKeyedSubscript_(v46, v40, v43);
        v50 = objc_msgSend_unsignedIntegerValue(v47, v48, v49);

        if (v50 == 22)
        {
          objc_msgSend_objectForKeyedSubscript_(v46, v40, v63);
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v51 = v68 = 0u;
          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v67, v76, 16);
          if (v54)
          {
            v55 = *v68;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v68 != v55)
                {
                  objc_enumerationMutation(v51);
                }

                v57 = objc_msgSend_objectForKeyedSubscript_(*(*(&v67 + 1) + 8 * j), v53, v44);
                v60 = objc_msgSend_unsignedIntegerValue(v57, v58, v59);

                if ((v60 - 2) <= 2)
                {
                  *a5 |= (1 << v60);
                }
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v67, v76, 16);
            }

            while (v54);
          }

          goto LABEL_30;
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v71, v77, 16);
      if (v41)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  if ((v75 & 1) == 0)
  {
    pthread_rwlock_wrlock(&v64->_lock);
    if ((objc_msgSend_p_findEntryForFont_outHeightInfo_outWidths_outCollision_(v64, v61, widths, retstr, a5, &v75) & 1) == 0 && (v75 & 1) == 0)
    {
      objc_msgSend_p_addEntryForFont_heightInfo_widths_(v64, v62, widths, retstr, *a5);
    }

    pthread_rwlock_unlock(&v64->_lock);
  }

  return result;
}

- (unint64_t)supportedFractionalWidthsForFont:(__CTFont *)font
{
  v4 = 0;
  objc_msgSend_p_fontHeightInfoForFont_outWidths_(self, a2, font, &v4);
  return v4;
}

- (void)validateFontHeightInfo:(const TSWPFontHeightInfo *)info description:(id)description
{
  descriptionCopy = description;
}

- (BOOL)p_findEntryForFont:(__CTFont *)font outHeightInfo:(TSWPFontHeightInfo *)info outWidths:(unint64_t *)widths outCollision:(BOOL *)collision
{
  v11 = CFHash(font);
  left = self->_fontHashToInfoMap.__tree_.__end_node_.__left_;
  p_end_node = &self->_fontHashToInfoMap.__tree_.__end_node_;
  v12 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v15 = p_end_node;
  do
  {
    v16 = *(v12 + 4);
    v17 = v16 >= v11;
    v18 = v16 < v11;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + v18);
  }

  while (v12);
  if (v15 != p_end_node && v11 >= v15[4].__left_)
  {
    *collision = 0;
    v20 = v15[18].__left_;
    if (v20 == font || (v19 = CFEqual(v20, font)) != 0)
    {
      v21 = *&v15[7].__left_;
      *&info->spaceBefore = *&v15[5].__left_;
      *&info->ascent = v21;
      v22 = *&v15[9].__left_;
      v23 = *&v15[11].__left_;
      v24 = *&v15[15].__left_;
      *&info->verticalHeight = *&v15[13].__left_;
      *&info->underlinePosition = v24;
      *&info->descent = v22;
      *&info->leadingBelow = v23;
      *widths = v15[17].__left_;
      LOBYTE(v19) = 1;
    }

    else
    {
      *collision = 1;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v19) = 0;
    *collision = 0;
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 1) = self + 8;
  *(self + 2) = self + 8;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end