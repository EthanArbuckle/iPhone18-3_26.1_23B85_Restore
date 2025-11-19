@interface KNSlideLayoutPrintHelper
- (BOOL)incrementPage;
- (BOOL)shouldDrawSlide;
- (KNSlideLayoutPrintHelper)initWithRenderingExporter:(id)a3;
- (KNSlideLayoutPrintHelperDataSource)dataSource;
- (id)p_segmentsForSlideNode:(id)a3;
- (unint64_t)pageCount;
- (void)p_segmentSlideNodes;
- (void)resetPage;
- (void)setCurrentSlideNode:(id)a3;
- (void)setDataSource:(id)a3;
@end

@implementation KNSlideLayoutPrintHelper

- (KNSlideLayoutPrintHelper)initWithRenderingExporter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KNSlideLayoutPrintHelper;
  v5 = [(KNSlideLayoutPrintHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingExporter, v4);
  }

  return v6;
}

- (unint64_t)pageCount
{
  segments = self->_segments;
  if (!segments)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNSlideLayoutPrintHelper pageCount]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideLayoutPrintHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "invalid nil value for '%{public}s'", "_segments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    segments = self->_segments;
  }

  return objc_msgSend_count(segments, a2, v2);
}

- (void)resetPage
{
  currentSegment = self->_currentSegment;
  self->_currentSegment = 0;
}

- (BOOL)incrementPage
{
  if (!self->_segments)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNSlideLayoutPrintHelper incrementPage]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideLayoutPrintHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 44, 0, "invalid nil value for '%{public}s'", "_segments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  segments = self->_segments;
  currentSegment = self->_currentSegment;
  if (currentSegment)
  {
    v12 = objc_msgSend_indexOfObject_(segments, a2, currentSegment) + 1;
    if (v12 >= objc_msgSend_count(self->_segments, v13, v14))
    {
      v15 = 0;
      goto LABEL_8;
    }

    segments = self->_segments;
    currentSegment = v12;
  }

  v15 = objc_msgSend_objectAtIndexedSubscript_(segments, a2, currentSegment);
LABEL_8:
  v16 = self->_currentSegment;
  self->_currentSegment = v15;

  return self->_currentSegment != 0;
}

- (BOOL)shouldDrawSlide
{
  v4 = objc_msgSend_commentsPageIndex(self, a2, v2);
  v7 = objc_msgSend_buildIndex(self, v5, v6);
  v10 = v7;
  if (v4)
  {
    v11 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v7 || ((objc_msgSend_notesPageIndex(self, v8, v9) == 0) & v12) == 0)
  {
    return (v10 != 0) & v12;
  }

  else
  {
    return 1;
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    objc_msgSend_p_segmentSlideNodes(self, v6, v7);
    v5 = obj;
  }
}

- (void)setCurrentSlideNode:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_segments;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = objc_msgSend_slideNode(v13, v8, v9, v15);

        if (v14 == v4)
        {
          objc_storeStrong(&self->_currentSegment, v13);
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)p_segmentSlideNodes
{
  v27 = *MEMORY[0x277D85DE8];
  segments = self->_segments;
  self->_segments = 0;

  currentSegment = self->_currentSegment;
  self->_currentSegment = 0;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v8 = objc_msgSend_slideNodesForPrintHelper_(v6, v7, self);

    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = objc_msgSend_p_segmentsForSlideNode_(self, v15, *(*(&v22 + 1) + 8 * v18), v22);
          objc_msgSend_addObjectsFromArray_(v11, v20, v19);

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v22, v26, 16);
      }

      while (v16);
    }

    v21 = self->_segments;
    self->_segments = v11;
  }
}

- (id)p_segmentsForSlideNode:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_renderingExporter);
  if (objc_msgSend_isPrintingComments(WeakRetained, v9, v10))
  {
    v11 = objc_loadWeakRetained(&self->_dataSource);
    v13 = objc_msgSend_printHelper_commentsPageCountForSlideNode_(v11, v12, self, v4);
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  v14 = objc_loadWeakRetained(&self->_renderingExporter);
  v15 = TSUDynamicCast();

  objc_opt_class();
  v16 = objc_loadWeakRetained(&self->_renderingExporter);
  v75 = TSUDynamicCast();

  if ((v15 || objc_msgSend_isPrintingNotes(v75, v17, v18)) && objc_msgSend_hasNote(v4, v17, v18))
  {
    v19 = objc_loadWeakRetained(&self->_dataSource);
    v74 = self;
    v21 = objc_msgSend_printHelper_noteSegmentsForSlideNode_(v19, v20, self, v4);

    if (v13)
    {
      v73 = v15;
      v24 = 0;
      v76 = v21;
      do
      {
        if (v24 >= objc_msgSend_count(v21, v22, v23, v73))
        {
          v43 = [KNPrintSegment alloc];
          v41 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_commentsPageIndex_span_(v43, v44, v4, 0, 0, v24, 0);
        }

        else
        {
          v26 = objc_msgSend_objectAtIndexedSubscript_(v21, v25, v24);
          v27 = [KNPrintSegment alloc];
          v30 = objc_msgSend_slideNode(v26, v28, v29);
          v33 = objc_msgSend_buildIndex(v26, v31, v32);
          v36 = objc_msgSend_notesIndex(v26, v34, v35);
          v39 = objc_msgSend_span(v26, v37, v38);
          v41 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_commentsPageIndex_span_(v27, v40, v30, v33, v36, v24, v39);

          v21 = v76;
        }

        objc_msgSend_addObject_(v7, v42, v41);

        ++v24;
      }

      while (v13 != v24);
      v15 = v73;
      if (v13 < objc_msgSend_count(v21, v22, v23))
      {
        v46 = v13;
        do
        {
          v47 = objc_msgSend_objectAtIndexedSubscript_(v21, v45, v46);
          objc_msgSend_addObject_(v7, v48, v47);

          ++v46;
        }

        while (v46 < objc_msgSend_count(v21, v49, v50));
      }
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(v7, v22, v21);
    }

    self = v74;
  }

  v51 = objc_msgSend_count(v7, v17, v18) != 0;
  v52 = objc_loadWeakRetained(&self->_renderingExporter);
  if (objc_msgSend_isPrintingBuilds(v52, v53, v54) && objc_msgSend_safeHasBuildEvents(v4, v55, v56))
  {
    v59 = objc_msgSend_safeBuildEventCount(v4, v57, v58);
  }

  else
  {
    v59 = 0;
  }

  for (; v51 <= v59; ++v51)
  {
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v63 = [KNPrintSegment alloc];
        v65 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_commentsPageIndex_span_(v63, v64, v4, v51, 0, i, 0);
        objc_msgSend_addObject_(v7, v66, v65);
      }
    }

    else
    {
      v67 = [KNPrintSegment alloc];
      v69 = objc_msgSend_initWithSlideNode_buildIndex_notesIndex_span_(v67, v68, v4, v51, 0, 0);
      objc_msgSend_addObject_(v7, v70, v69);
    }
  }

  v71 = objc_msgSend_copy(v7, v60, v61);

  return v71;
}

- (KNSlideLayoutPrintHelperDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end