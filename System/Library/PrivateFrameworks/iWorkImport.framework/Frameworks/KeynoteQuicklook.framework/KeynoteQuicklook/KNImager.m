@interface KNImager
- (BOOL)isInfoAKeynoteTemplateObject:(id)a3;
- (KNAbstractSlide)slide;
- (KNImager)initWithDocumentRoot:(id)a3 renderForWideGamut:(BOOL)a4 renderHDRContent:(BOOL)a5;
- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)a3;
@end

@implementation KNImager

- (KNImager)initWithDocumentRoot:(id)a3 renderForWideGamut:(BOOL)a4 renderHDRContent:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = KNImager;
  v5 = [(TSDImager *)&v10 initWithDocumentRoot:a3 renderForWideGamut:a4 renderHDRContent:a5];
  v7 = v5;
  if (v5)
  {
    v5->_slideNumber = 0x7FFFFFFFFFFFFFFFLL;
    objc_msgSend_setShouldShowComments_(v5, v6, 0);
    objc_msgSend_setShouldShowTextCommentHighlights_(v7, v8, 0);
  }

  return v7;
}

- (BOOL)isInfoAKeynoteTemplateObject:(id)a3
{
  v3 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, a2, a3);
  isTemplateSlide = objc_msgSend_isTemplateSlide(v3, v4, v5);

  return isTemplateSlide;
}

- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    objc_opt_class();
    v10 = objc_msgSend_slide(self, v8, v9);
    v11 = TSUDynamicCast();

    v13 = objc_msgSend_parentSlideNodeForInfo_(KNSlideNode, v12, v5);
    v16 = objc_msgSend_slide(v13, v14, v15);

    v19 = objc_msgSend_templateSlide(v11, v17, v18);

    v7 = v6;
    if (v16 == v19)
    {
      v21 = objc_msgSend_infoCorrespondingToTemplateSlideInfo_(v11, v20, v6);
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v5;
      }

      v7 = v23;
    }

    objc_opt_class();
    v26 = objc_msgSend_slide(self, v24, v25);
    v27 = TSUDynamicCast();

    if (!v27)
    {
      goto LABEL_15;
    }

    v30 = objc_msgSend_titlePlaceholder(v27, v28, v29);

    if (v5 == v30)
    {
      v36 = objc_msgSend_replacementTitlePlaceholder(self, v31, v32);
    }

    else
    {
      v33 = objc_msgSend_bodyPlaceholder(v27, v31, v32);

      if (v5 != v33)
      {
        goto LABEL_13;
      }

      v36 = objc_msgSend_replacementBodyPlaceholder(self, v34, v35);
    }

    v37 = v36;

    v7 = v37;
LABEL_13:
    if (!v7)
    {
      v7 = v5;
    }

LABEL_15:
  }

  return v7;
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  return WeakRetained;
}

@end