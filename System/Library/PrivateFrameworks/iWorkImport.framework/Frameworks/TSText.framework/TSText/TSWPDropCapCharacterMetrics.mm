@interface TSWPDropCapCharacterMetrics
- (TSWPDropCapCharacterMetrics)initWithCharacterCount:(unint64_t)count isRightToLeft:(BOOL)left isVertical:(BOOL)vertical baseline:(double)baseline;
- (id)description;
- (void)adjustMetricsForWidth:(double)width;
- (void)applyTransform:(CGAffineTransform *)transform;
@end

@implementation TSWPDropCapCharacterMetrics

- (TSWPDropCapCharacterMetrics)initWithCharacterCount:(unint64_t)count isRightToLeft:(BOOL)left isVertical:(BOOL)vertical baseline:(double)baseline
{
  v20.receiver = self;
  v20.super_class = TSWPDropCapCharacterMetrics;
  v10 = [(TSWPDropCapCharacterMetrics *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_isRightToLeft = left;
    v10->_isVertical = vertical;
    v10->_baseline = baseline;
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithCapacity_(v12, v13, count);
    metricData = v11->_metricData;
    v11->_metricData = v14;

    for (; count; --count)
    {
      v16 = v11->_metricData;
      v17 = objc_opt_new();
      objc_msgSend_addObject_(v16, v18, v17);
    }
  }

  return v11;
}

- (void)applyTransform:(CGAffineTransform *)transform
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_metricData;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v25, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_hasLeadingOffset(v12, v7, v8, v21))
        {
          objc_msgSend_leadingOffset(v12, v13, v14);
          objc_msgSend_setLeadingOffset_(v12, v16, v17, transform->tx + transform->c * 0.0 + transform->a * v15);
        }

        if (objc_msgSend_hasTrailingOffset(v12, v13, v14))
        {
          objc_msgSend_trailingOffset(v12, v7, v8);
          objc_msgSend_setTrailingOffset_(v12, v19, v20, transform->tx + transform->c * 0.0 + transform->a * v18);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v21, v25, 16);
    }

    while (v9);
  }
}

- (void)adjustMetricsForWidth:(double)width
{
  v64 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = self->_metricData;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v58, v63, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v59;
    v12 = 1.79769313e308;
    v13 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        if (objc_msgSend_hasLeadingOffset(v15, v8, v9))
        {
          objc_msgSend_leadingOffset(v15, v16, v17);
          TSUClamp();
          objc_msgSend_setLeadingOffset_(v15, v18, v19);
          objc_msgSend_leadingOffset(v15, v20, v21);
          v12 = fmin(v12, v22);
          objc_msgSend_leadingOffset(v15, v23, v24);
          v13 = fmax(v13, v25);
        }

        if (objc_msgSend_hasTrailingOffset(v15, v16, v17))
        {
          objc_msgSend_trailingOffset(v15, v8, v9);
          TSUClamp();
          objc_msgSend_setTrailingOffset_(v15, v26, v27);
          objc_msgSend_trailingOffset(v15, v28, v29);
          v12 = fmin(v12, v30);
          objc_msgSend_trailingOffset(v15, v31, v32);
          v13 = fmax(v13, v33);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v58, v63, 16);
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
    v13 = 2.22507386e-308;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = self->_metricData;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v54, v62, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v55;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = *(*(&v54 + 1) + 8 * j);
        if (objc_msgSend_hasLeadingOffset(v42, v37, v38, v54))
        {
          objc_msgSend_leadingOffset(v42, v43, v44);
          v46 = v45;
          v47 = 0.0;
          if (v46 == v12 || (objc_msgSend_leadingOffset(v42, v43, v44, 0.0), v49 = v48 == v13, v47 = width, v49))
          {
            objc_msgSend_setLeadingOffset_(v42, v43, v44, v47);
          }
        }

        if (objc_msgSend_hasTrailingOffset(v42, v43, v44))
        {
          objc_msgSend_trailingOffset(v42, v37, v38);
          v51 = v50;
          v52 = 0.0;
          if (v51 == v12 || (objc_msgSend_trailingOffset(v42, v37, v38, 0.0), v49 = v53 == v13, v52 = width, v49))
          {
            objc_msgSend_setTrailingOffset_(v42, v37, v38, v52);
          }
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v54, v62, 16);
    }

    while (v39);
  }
}

- (id)description
{
  v3 = objc_opt_new();
  if (objc_msgSend_count(self->_metricData, v4, v5))
  {
    v7 = 0;
    do
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(self->_metricData, v6, v7);
      objc_msgSend_leadingOffset(v8, v9, v10);
      v12 = v11;
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_metricData, v13, v7);
      objc_msgSend_trailingOffset(v14, v15, v16);
      objc_msgSend_appendFormat_(v3, v17, @"char index: %ld, leading: %f, trailing: %f\n", v7, v12, v18);

      ++v7;
    }

    while (v7 < objc_msgSend_count(self->_metricData, v19, v20));
  }

  return v3;
}

@end