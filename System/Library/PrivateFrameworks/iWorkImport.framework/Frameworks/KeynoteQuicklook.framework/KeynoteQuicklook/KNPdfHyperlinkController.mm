@interface KNPdfHyperlinkController
- (BOOL)ignoreUrl:(id)url;
- (BOOL)isDestination:(id)destination;
- (CGRect)canvasRect;
- (KNPdfHyperlinkController)initWithShow:(id)show;
- (id)destinationFromUrl:(id)url;
- (id)nameForSlide:(id)slide;
- (id)nameFromIndex:(unint64_t)index;
- (int64_t)getFirstNonHiddenIndex:(unint64_t)index delta:(int64_t)delta;
- (void)addHyperlinksForReps:(id)reps targetRect:(CGRect)rect context:(CGContext *)context;
@end

@implementation KNPdfHyperlinkController

- (KNPdfHyperlinkController)initWithShow:(id)show
{
  showCopy = show;
  v18.receiver = self;
  v18.super_class = KNPdfHyperlinkController;
  v7 = [(TSAPdfHyperlinkController *)&v18 init];
  if (v7)
  {
    v8 = objc_msgSend_slideTree(showCopy, v5, v6);
    v11 = objc_msgSend_slideNodes(v8, v9, v10);
    slides = v7->_slides;
    v7->_slides = v11;

    objc_msgSend_size(showCopy, v13, v14);
    v7->_canvasRect.origin.x = 0.0;
    v7->_canvasRect.origin.y = 0.0;
    v7->_canvasRect.size.width = v15;
    v7->_canvasRect.size.height = v16;
  }

  return v7;
}

- (id)nameForSlide:(id)slide
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_uniqueIdentifier(slide, a2, slide);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"?slideid=%@", v4);

  return v6;
}

- (id)nameFromIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_slides, a2, index) <= index)
  {
    v8 = &stru_2884D8E20;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndex_(self->_slides, v5, index);
    v8 = objc_msgSend_nameForSlide_(self, v7, v6);
  }

  return v8;
}

- (int64_t)getFirstNonHiddenIndex:(unint64_t)index delta:(int64_t)delta
{
  v8 = objc_msgSend_count(self->_slides, a2, index);
  result = 0;
  v10 = index + delta;
  if ((index + delta) >= 0 && v10 < v8)
  {
    v11 = index + 2 * delta;
    while (1)
    {
      v12 = objc_msgSend_objectAtIndex_(self->_slides, v7, v10);
      v15 = v12;
      if (v12)
      {
        if ((objc_msgSend_isSkipped(v12, v13, v14) & 1) == 0)
        {
          break;
        }
      }

      result = 0;
      if ((v11 & 0x8000000000000000) == 0)
      {
        v10 += delta;
        v16 = v11 < v8;
        v11 += delta;
        if (v16)
        {
          continue;
        }
      }

      return result;
    }

    return v10;
  }

  return result;
}

- (id)destinationFromUrl:(id)url
{
  v4 = objc_msgSend_absoluteString(url, a2, url);
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    v13 = &stru_2884D8E20;
    goto LABEL_9;
  }

  v9 = objc_msgSend_rangeOfString_(v7, v8, @"?id=");
  if (v10 && !v9 || (v11 = objc_msgSend_rangeOfString_(v7, v10, @"?slideid="), v12) && !v11)
  {
    v13 = v7;
    goto LABEL_9;
  }

  v15 = objc_msgSend_rangeOfString_(v7, v12, @"?slide=");
  v13 = &stru_2884D8E20;
  if (v16 && !v15)
  {
    v17 = objc_msgSend_substringFromIndex_(v7, v16, v16);
    if (objc_msgSend_isEqualToString_(v17, v18, @"last"))
    {
      v21 = objc_msgSend_count(self->_slides, v19, v20) - 1;
      objc_msgSend_nameFromIndex_(self, v22, v21);
    }

    else if (objc_msgSend_isEqualToString_(v17, v19, @"first"))
    {
      objc_msgSend_nameFromIndex_(self, v23, 0);
    }

    else
    {
      if ((objc_msgSend_isEqualToString_(v17, v23, @"next") & 1) != 0 || objc_msgSend_isEqualToString_(v17, v24, @"+1"))
      {
        FirstNonHiddenIndex_delta = objc_msgSend_getFirstNonHiddenIndex_delta_(self, v24, self->_currentSlideNumber, 1);
      }

      else
      {
        if ((objc_msgSend_isEqualToString_(v17, v24, @"previous") & 1) == 0 && !objc_msgSend_isEqualToString_(v17, v27, @"-1"))
        {
          goto LABEL_23;
        }

        FirstNonHiddenIndex_delta = objc_msgSend_getFirstNonHiddenIndex_delta_(self, v27, self->_currentSlideNumber, -1);
      }

      objc_msgSend_nameFromIndex_(self, v26, FirstNonHiddenIndex_delta);
    }
    v13 = ;
LABEL_23:
  }

LABEL_9:

  return v13;
}

- (BOOL)isDestination:(id)destination
{
  v3 = objc_msgSend_absoluteString(destination, a2, destination);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_rangeOfString_(v3, v4, @"?slide=");
    if ((!v7 || v6) && ((v8 = objc_msgSend_rangeOfString_(v5, v7, @"?slideid="), !v9) || v8))
    {
      v11 = objc_msgSend_rangeOfString_(v5, v9, @"?id=");
      if (v12)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 0;
      }

      v10 = v13;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)ignoreUrl:(id)url
{
  v3 = objc_msgSend_absoluteString(url, a2, url);
  if (objc_msgSend_isEqualToString_(v3, v4, @"?action=exitpresentation"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"?action=retreat");
  }

  return isEqualToString;
}

- (CGRect)canvasRect
{
  x = self->_canvasRect.origin.x;
  y = self->_canvasRect.origin.y;
  width = self->_canvasRect.size.width;
  height = self->_canvasRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)addHyperlinksForReps:(id)reps targetRect:(CGRect)rect context:(CGContext *)context
{
  contextCopy = context;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = reps;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v33, v38, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
        objc_msgSend_recursivelyPerformSelector_withObject_(v16, v18, sel_addToSet_, v17);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = v17;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v29, v37, 16);
        if (v21)
        {
          v23 = v21;
          v24 = *v30;
          do
          {
            v25 = 0;
            do
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v19);
              }

              objc_msgSend_addHyperlinksForRep_(self, v22, *(*(&v29 + 1) + 8 * v25++), contextCopy);
            }

            while (v23 != v25);
            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v29, v37, 16);
          }

          while (v23);
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v33, v38, 16);
    }

    while (v13);
  }

  objc_msgSend_commitHyperlinksToPDF_targetRect_(self, v12, contextCopy, x, y, width, height, contextCopy);
}

@end