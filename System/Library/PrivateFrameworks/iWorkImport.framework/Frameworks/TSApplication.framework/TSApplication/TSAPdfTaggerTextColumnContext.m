@interface TSAPdfTaggerTextColumnContext
- (TSAPdfTaggerTextColumnContext)initWithStateOfTagger:(id)a3 column:(id)a4 limitSelection:(id)a5;
- (TSAPdfTaggerTextColumnOwnerContext)textColumnOwner;
- (TSWPColumn)column;
- (TSWPSelection)limitSelection;
- (_NSRange)range;
@end

@implementation TSAPdfTaggerTextColumnContext

- (TSAPdfTaggerTextColumnContext)initWithStateOfTagger:(id)a3 column:(id)a4 limitSelection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v72.receiver = self;
  v72.super_class = TSAPdfTaggerTextColumnContext;
  v14 = [(TSAPdfTaggerContext *)&v72 initWithStateOfTagger:v8];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = objc_msgSend_topOfContextStack(v8, v11, v12, v13);
  objc_storeWeak(&v14->_textColumnOwner, v15);

  WeakRetained = objc_loadWeakRetained(&v14->_textColumnOwner);
  objc_opt_class();
  LOBYTE(v15) = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    sub_2760CB2EC(0, "The parent of a column must be a column owner", v17, v18, v19, v20, v21, v22, v68);
  }

  objc_storeWeak(&v14->_column, v9);
  objc_storeWeak(&v14->_limitSelection, v10);
  v29 = objc_msgSend_range(v9, v23, v24, v25);
  p_range = &v14->_range;
  v14->_range.location = v29;
  v14->_range.length = v26;
  if (v10)
  {
    v31 = objc_msgSend_range(v9, v26, v27, v28);
    v33 = v32;
    v73.location = objc_msgSend_superRange(v10, v32, v34, v35);
    location = v73.location;
    length = v73.length;
    v74.location = v31;
    v74.length = v33;
    v38 = NSIntersectionRange(v73, v74);
    v26 = v38.length;
    if (length)
    {
      v39 = v38.length;
      if (!v38.length)
      {
        v40 = 0;
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_25;
      }

      location = v38.location;
    }

    else
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (location < v31)
      {
LABEL_12:
        v40 = 0;
        goto LABEL_25;
      }

      v40 = 0;
      if (location - v31 >= v33)
      {
LABEL_25:
        *p_range = v29;
        v14->_range.length = v40;
        goto LABEL_26;
      }

      v39 = 0;
    }

    v29 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0;
      v49 = objc_msgSend_lineCount(v9, v38.length, v27, v28);
      if (v49)
      {
        while (1)
        {
          v29 = objc_msgSend_rangeOfLineFragmentAtIndex_(v9, v42, v41, v44);
          if (location >= v29 && location - v29 < v42)
          {
            break;
          }

          if (v49 == ++v41)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
            v41 = v49;
            break;
          }
        }
      }

      v70 = v39;
      sub_2760CB2EC(v29 != 0x7FFFFFFFFFFFFFFFLL, "Range start couldn't be found", v43, v44, v45, v46, v47, v48, v68);
      v57 = 0x7FFFFFFFFFFFFFFFLL;
      if (v41 < v49)
      {
        v58 = location + v70;
        while (1)
        {
          v59 = objc_msgSend_rangeOfLineFragmentAtIndex_(v9, v50, v41, v52);
          v57 = &v50[v59];
          if (v58 <= &v50[v59])
          {
            break;
          }

          if (v49 == ++v41)
          {
            v57 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }
        }
      }

      sub_2760CB2EC(v57 != 0x7FFFFFFFFFFFFFFFLL, "Range end couldn't be found", v51, v52, v53, v54, v55, v56, v69);
      v40 = v57 - v29;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

LABEL_26:
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v60 = objc_msgSend_storage(v9, v26, v27, v28);
    v62 = v60;
    if (v60)
    {
      objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_requireHidden_(v60, v61, *p_range, v14->_range.length, 0, 1);
      storage = obj._storage;
    }

    else
    {
      storage = 0;
      memset(&obj, 0, sizeof(obj));
    }

    objc_storeStrong(&v14->_paragraphEnumerator._storage, storage);
    objc_storeStrong(&v14->_paragraphEnumerator._styleProvider, obj._styleProvider);
    v64 = *&obj._parIndex;
    v65 = *&obj._firstParIndex;
    v66 = *&obj._requireHidden;
    v14->_paragraphEnumerator._currentTextRange.length = obj._currentTextRange.length;
    *&v14->_paragraphEnumerator._firstParIndex = v65;
    *&v14->_paragraphEnumerator._requireHidden = v66;
    *&v14->_paragraphEnumerator._parIndex = v64;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&obj);
  }

LABEL_31:

  return v14;
}

- (TSAPdfTaggerTextColumnOwnerContext)textColumnOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_textColumnOwner);

  return WeakRetained;
}

- (TSWPColumn)column
{
  WeakRetained = objc_loadWeakRetained(&self->_column);

  return WeakRetained;
}

- (TSWPSelection)limitSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_limitSelection);

  return WeakRetained;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end