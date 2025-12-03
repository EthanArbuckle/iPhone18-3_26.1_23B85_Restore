@interface TSWPFloatingCommentLayout
- (BOOL)shouldBeDisplayedInShowMode;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)minimumSize;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)commentInfo;
- (id)dropCapStyleAtParIndex:(unint64_t)index;
- (id)fill;
- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
@end

@implementation TSWPFloatingCommentLayout

- (id)commentInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)fill
{
  if (qword_280A58568[0] != -1)
  {
    sub_276F4F8A0();
  }

  v4 = objc_msgSend_info(self, a2, v2);
  v7 = objc_msgSend_commentStorage(v4, v5, v6);
  v10 = objc_msgSend_author(v7, v8, v9);

  v13 = objc_msgSend_colors(v10, v11, v12);
  v16 = objc_msgSend_authorColorName(v13, v14, v15);
  started = objc_msgSend_objectForKey_(qword_280A58560, v17, v16);
  if (!started)
  {
    v21 = objc_msgSend_gradientStartColor(v13, v18, v19);
    v24 = objc_msgSend_gradientEndColor(v13, v22, v23);
    v25 = objc_alloc(MEMORY[0x277D801B0]);
    started = objc_msgSend_initWithStartColor_endColor_type_angle_(v25, v26, v21, v24, 0, 4.71238898);
    objc_msgSend_setObject_forKey_(qword_280A58560, v27, started, v16);
  }

  return started;
}

- (BOOL)shouldBeDisplayedInShowMode
{
  v4 = objc_msgSend_commentInfo(self, a2, v2);
  objc_opt_class();
  v7 = objc_msgSend_context(v4, v5, v6);
  v10 = objc_msgSend_documentObject(v7, v8, v9);
  v11 = TSUDynamicCast();

  if (v11)
  {
    v14 = objc_msgSend_info(self, v12, v13);
    shouldShowFloatingCommentInfo = objc_msgSend_shouldShowFloatingCommentInfo_(v11, v15, v14);
  }

  else
  {
    shouldShowFloatingCommentInfo = 0;
  }

  return shouldShowFloatingCommentInfo;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v19.receiver = self;
  v19.super_class = TSWPFloatingCommentLayout;
  [(TSWPShapeLayout *)&v19 nonAutosizedFrameForTextLayout:layout];
  v5 = v4;
  v7 = v6;
  v10 = objc_msgSend_commentInfo(self, v8, v9);
  objc_msgSend_commentScalingMultiplier(v10, v11, v12);
  v14 = v13;

  v15 = v14 * 15.0 + 0.0;
  v16 = v14 * 42.0 + 0.0;
  v17 = v5 - (v14 * 15.0 + v14 * 15.0);
  v18 = v7 - (v14 * 42.0 + v14 * 44.0);
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGSize)minimumSize
{
  v3 = objc_msgSend_commentInfo(self, a2, v2);
  objc_msgSend_commentScalingMultiplier(v3, v4, v5);
  v7 = v6;

  v8 = v7 * 200.0;
  v9 = v7 * 110.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_commentInfo(self, a2, index);
  objc_opt_class();
  v10 = objc_msgSend_context(v7, v8, v9);
  v13 = objc_msgSend_documentObject(v10, v11, v12);
  v14 = TSUDynamicCast();

  objc_msgSend_commentScalingMultiplier(v7, v15, v16);
  v18 = v17;
  v21 = objc_msgSend_stylesheet(v14, v19, v20);
  v23 = objc_msgSend_commentParagraphStyleForStylesheet_scalingMultiplier_(TSWPFloatingCommentInfo, v22, v21, v18);

  if (range)
  {
    v26 = objc_msgSend_commentInfo(self, v24, v25);
    v29 = objc_msgSend_textStorage(v26, v27, v28);

    range->location = objc_msgSend_textRangeForParagraphAtIndex_(v29, v30, index);
    range->length = v31;
  }

  return v23;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_commentInfo(self, a2, index);
  v10 = objc_msgSend_textStorage(v7, v8, v9);
  v12 = objc_msgSend_paragraphIndexAtCharIndex_(v10, v11, index);

  return objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v13, v12, range);
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_commentInfo(self, a2, index);
  v9 = objc_msgSend_textStorage(v6, v7, v8);
  v11 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v9, v10, index, range);

  return v11;
}

- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_commentInfo(self, a2, index);
  v9 = objc_msgSend_textStorage(v6, v7, v8);
  v11 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v9, v10, index, range);

  return v11;
}

- (id)dropCapStyleAtParIndex:(unint64_t)index
{
  v4 = objc_msgSend_commentInfo(self, a2, index);
  v7 = objc_msgSend_textStorage(v4, v5, v6);
  v9 = objc_msgSend_dropCapStyleAtParIndex_(v7, v8, index);

  return v9;
}

@end