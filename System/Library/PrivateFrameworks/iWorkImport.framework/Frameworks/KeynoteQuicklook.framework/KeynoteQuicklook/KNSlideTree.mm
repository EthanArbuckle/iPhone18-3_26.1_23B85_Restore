@interface KNSlideTree
+ (BOOL)areMultipleMasterTypesInCollection:(id)collection;
+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes atDepths:(id)depths minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth;
+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth;
- (BOOL)isEmpty;
- (BOOL)slideNodeIsDisplayed:(id)displayed;
- (KNSlideTree)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (KNSlideTree)initWithOwner:(id)owner;
- (NSArray)displayedSlideNodes;
- (NSArray)visibleSlideNodes;
- (id)childrenOfSlideNode:(id)node;
- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index;
- (id)descendantsOfSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)formulaReferenceNameForSlideNode:(id)node;
- (id)objectEnumerator;
- (id)orderedSlideNodesInSelection:(id)selection;
- (id)parentOfSlideNode:(id)node;
- (id)slideNamesMatchingPrefix:(id)prefix;
- (id)slideNodeAfterSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)slideNodeAtIndex:(unint64_t)index ignoreHiddenNodes:(BOOL)nodes;
- (id)slideNodeBeforeSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes;
- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive;
- (id)slideNodeWithUniqueIdentifier:(id)identifier;
- (id)slideNodesInAscendingOrder:(id)order;
- (id)slidesUsingTemplateSlide:(id)slide;
- (unint64_t)byBuildPageIndexForSlideIndex:(unint64_t)index andEventIndex:(unint64_t)eventIndex;
- (unint64_t)indexOfSlideNode:(id)node;
- (unint64_t)numberOfSlidesUsingTemplateSlide:(id)slide;
- (unint64_t)slideNumberForSlideNode:(id)node;
- (unint64_t)visiblePageCountIsSeparatedByBuilds:(BOOL)builds;
- (void)addSlideNode:(id)node atDepth:(unint64_t)depth dolcContext:(id)context;
- (void)addSlideNodeForDocumentUpgrade:(id)upgrade atDepth:(unint64_t)depth;
- (void)dealloc;
- (void)insertSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths dolcContext:(id)context;
- (void)invalidateSlideNameCache;
- (void)moveSlideNodes:(id)nodes fromIndexes:(id)indexes toIndexes:(id)toIndexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths;
- (void)p_cacheSlideNodes;
- (void)p_clearSlideNodeCache;
- (void)removeAll;
- (void)removeSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)slideIndex:(unint64_t *)index andEventIndex:(unint64_t *)eventIndex forByBuildPageIndex:(unint64_t)pageIndex;
@end

@implementation KNSlideTree

+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth
{
  maxDepthCopy = maxDepth;
  v36 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v9 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_count(nodesCopy, v10, v11);
  v14 = objc_msgSend_arrayWithCapacity_(v9, v13, v12);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = nodesCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v31, v35, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = MEMORY[0x277CCABB0];
        v24 = objc_msgSend_depth(*(*(&v31 + 1) + 8 * i), v18, v19, v31);
        v26 = objc_msgSend_numberWithUnsignedInteger_(v23, v25, v24);
        objc_msgSend_addObject_(v14, v27, v26);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v31, v35, 16);
    }

    while (v20);
  }

  v29 = objc_msgSend_slideNodeDepthMapToCleanUpSlideNodes_atDepths_minimumValidDepth_canExceedSlideTreeMaxDepth_(self, v28, v15, v14, depth, maxDepthCopy);

  return v29;
}

+ (id)slideNodeDepthMapToCleanUpSlideNodes:(id)nodes atDepths:(id)depths minimumValidDepth:(unint64_t)depth canExceedSlideTreeMaxDepth:(BOOL)maxDepth
{
  maxDepthCopy = maxDepth;
  nodesCopy = nodes;
  depthsCopy = depths;
  if (depth)
  {
    if (depth < 7)
    {
      goto LABEL_6;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 96, 0, "Minimum depth to clean up slides cannot exceed the allowed maximum depth of a slide tree.");
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v19, v13, v15, 95, 0, "Minimum depth to clean up slides cannot be less than the allowed minimum depth of a slide tree.");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
LABEL_6:
  v22 = objc_msgSend_count(nodesCopy, v9, v10);
  if (v22 != objc_msgSend_count(depthsCopy, v23, v24))
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 97, 0, "Slide node count does not match depth count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  if (objc_msgSend_count(nodesCopy, v25, v26))
  {
    v35 = MEMORY[0x277CBEB18];
    v36 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v34, depth);
    v38 = objc_msgSend_arrayWithObject_(v35, v37, v36);

    v39 = 6;
    v43 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v40, 6);
    do
    {
      v44 = objc_msgSend_null(MEMORY[0x277CBEB68], v41, v42);
      objc_msgSend_addObject_(v43, v45, v44);

      --v39;
    }

    while (v39);
    v46 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v41, 0);
    v49 = objc_msgSend_unsignedIntegerValue(v46, v47, v48);

    v52 = maxDepthCopy;
    if (!maxDepthCopy && v49 > 6)
    {
      sub_275E5A440();
    }

    depthCopy = depth;
    while (objc_msgSend_count(v43, v50, v51) < v49)
    {
      v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v53, v54);
      objc_msgSend_addObject_(v43, v56, v55);
    }

    objc_msgSend_setObject_atIndexedSubscript_(v43, v53, &unk_2884F36A8, v49 - 1);
    v147 = v38;
    if (objc_msgSend_count(nodesCopy, v57, v58) >= 2)
    {
      v61 = 1;
      v145 = nodesCopy;
      v146 = depthsCopy;
      do
      {
        v62 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v59, v61);
        v65 = objc_msgSend_unsignedIntegerValue(v62, v63, v64);

        v67 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v66, v61 - 1);
        v70 = objc_msgSend_unsignedIntegerValue(v67, v68, v69);

        v72 = objc_msgSend_objectAtIndexedSubscript_(v38, v71, v61 - 1);
        v75 = objc_msgSend_unsignedIntegerValue(v72, v73, v74);

        if (v65 < v70)
        {
          if (!v65)
          {
            goto LABEL_30;
          }

          v78 = v65 - 1;
          v79 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v80 = objc_msgSend_objectAtIndexedSubscript_(v43, v76, v78);
            v83 = objc_msgSend_null(MEMORY[0x277CBEB68], v81, v82);

            if (v80 != v83)
            {
              v86 = objc_msgSend_unsignedIntegerValue(v80, v84, v85);
              if (v86 <= v79)
              {
                v87 = v79;
              }

              else
              {
                v87 = v86;
              }

              if (v79 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v79 = v86;
              }

              else
              {
                v79 = v87;
              }
            }

            --v78;
          }

          while (v78 != -1);
          v52 = maxDepthCopy;
          if (v79 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v90 = objc_msgSend_objectAtIndexedSubscript_(v146, v76, v79);
            v70 = objc_msgSend_unsignedIntegerValue(v90, v91, v92);

            v93 = v79;
            v38 = v147;
            v95 = objc_msgSend_objectAtIndexedSubscript_(v147, v94, v93);
            v75 = objc_msgSend_unsignedIntegerValue(v95, v96, v97);
          }

          else
          {
LABEL_30:
            v38 = v147;
            if (depthCopy != 0x7FFFFFFFFFFFFFFFLL)
            {
              v88 = depthCopy;
              v89 = 0x277CCA000;
              if (v52)
              {
                goto LABEL_38;
              }

              goto LABEL_46;
            }
          }
        }

        v89 = 0x277CCA000uLL;
        if (v52)
        {
          if (v65 <= v70)
          {
            v88 = v75;
          }

          else
          {
            v88 = v75 + 1;
          }

LABEL_38:
          depthsCopy = v146;
          if (objc_msgSend_count(v43, v76, v77) < v65)
          {
            do
            {
              v100 = objc_msgSend_null(MEMORY[0x277CBEB68], v98, v99);
              objc_msgSend_addObject_(v43, v101, v100);
            }

            while (objc_msgSend_count(v43, v102, v103) < v65);
          }

          v104 = objc_msgSend_numberWithUnsignedInteger_(*(v89 + 2992), v98, v61);
          objc_msgSend_setObject_atIndexedSubscript_(v43, v105, v104, v65 - 1);
          goto LABEL_50;
        }

        v106 = 6;
        if ((v75 + 1) < 6)
        {
          v106 = v75 + 1;
        }

        if (v65 <= v70)
        {
          v88 = v75;
        }

        else
        {
          v88 = v106;
        }

LABEL_46:
        v104 = objc_msgSend_numberWithUnsignedInteger_(*(v89 + 2992), v76, v61);
        if (v65 - 1 >= 5)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v43, v107, v104, 5);
        }

        else
        {
          objc_msgSend_setObject_atIndexedSubscript_(v43, v107, v104, v65 - 1);
        }

        depthsCopy = v146;
LABEL_50:

        v109 = objc_msgSend_numberWithUnsignedInteger_(*(v89 + 2992), v108, v88);
        objc_msgSend_addObject_(v38, v110, v109);

        ++v61;
        nodesCopy = v145;
      }

      while (v61 < objc_msgSend_count(v145, v111, v112));
    }

    v113 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60);
    v116 = objc_msgSend_array(MEMORY[0x277CBEB18], v114, v115);
    if (objc_msgSend_count(nodesCopy, v117, v118))
    {
      v120 = 0;
      do
      {
        v121 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v119, v120);
        v124 = objc_msgSend_integerValue(v121, v122, v123);

        v126 = objc_msgSend_objectAtIndexedSubscript_(v147, v125, v120);
        v129 = objc_msgSend_integerValue(v126, v127, v128);

        if (v124 != v129)
        {
          v132 = objc_msgSend_objectAtIndexedSubscript_(nodesCopy, v130, v120);
          objc_msgSend_addObject_(v113, v133, v132);

          v135 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v134, v129);
          objc_msgSend_addObject_(v116, v136, v135);
        }

        ++v120;
      }

      while (v120 < objc_msgSend_count(nodesCopy, v130, v131));
    }

    v137 = [KNSlideNodeDepthMap alloc];
    v139 = objc_msgSend_initWithSlideNodes_depths_(v137, v138, v113, v116);
  }

  else
  {
    v140 = [KNSlideNodeDepthMap alloc];
    v139 = objc_msgSend_initWithSlideNodes_depths_(v140, v141, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  return v139;
}

+ (BOOL)areMultipleMasterTypesInCollection:(id)collection
{
  v28 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (objc_msgSend_count(collectionCopy, v4, v5) < 2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = collectionCopy;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
    v9 = 0;
    if (v8)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          v15 = objc_msgSend_slide(v12, v13, v14, v23);
          v16 = TSUDynamicCast();

          v19 = objc_msgSend_templateSlide(v16, v17, v18);
          v20 = v19;
          if (v9)
          {

            if (v9 != v20)
            {

              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          else
          {
            v9 = v19;
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v21, &v23, v27, 16);
      }

      while (v8);
    }

LABEL_15:
  }

  return v8;
}

- (KNSlideTree)initWithOwner:(id)owner
{
  v7.receiver = self;
  v7.super_class = KNSlideTree;
  v3 = [(KNSlideTree *)&v7 initWithOwner:owner];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    slideNodes = v3->_slideNodes;
    v3->_slideNodes = v4;
  }

  return v3;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_slideNodes;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setSlideTree_(*(*(&v11 + 1) + 8 * v9++), v6, 0);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = KNSlideTree;
  [(KNSlideTree *)&v10 dealloc];
}

- (id)objectEnumerator
{
  v3 = objc_msgSend_copy(self->_slideNodes, a2, v2);
  v6 = objc_msgSend_objectEnumerator(v3, v4, v5);

  return v6;
}

- (void)addSlideNode:(id)node atDepth:(unint64_t)depth dolcContext:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  objc_msgSend_willModify(self, v9, v10);
  v13 = objc_msgSend_owner(self, v11, v12);
  v16 = objc_msgSend_context(v13, v14, v15);
  v19 = objc_msgSend_documentRoot(v16, v17, v18);

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(nodeCopy, v20, v19, contextCopy);
  v23 = objc_msgSend_lastObject(self->_slideNodes, v21, v22);
  v26 = v23;
  if (depth != 1 && !v23)
  {
    sub_275E5A62C(0, v24, v25);
  }

  objc_msgSend_addObject_(self->_slideNodes, v24, nodeCopy);
  objc_msgSend_setSlideTree_(nodeCopy, v27, self);
  if (v26 && objc_msgSend_depth(v26, v28, v29) + 1 < depth)
  {
    sub_275E5A4E4();
  }

  if (depth - 1 >= 6)
  {
    sub_275E5A588();
  }

  objc_msgSend_setDepth_(nodeCopy, v28, depth);
  objc_msgSend_p_clearSlideNodeCache(self, v30, v31);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(nodeCopy, v32, v19, contextCopy);
}

- (void)insertSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths dolcContext:(id)context
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  contextCopy = context;
  objc_msgSend_willModify(self, v15, v16);
  v19 = objc_msgSend_count(nodesCopy, v17, v18);
  if (v19 != objc_msgSend_count(indexesCopy, v20, v21))
  {
    sub_275E5A700();
  }

  v24 = objc_msgSend_owner(self, v22, v23);
  v27 = objc_msgSend_context(v24, v25, v26);
  v30 = objc_msgSend_documentRoot(v27, v28, v29);

  if (objc_msgSend_count(nodesCopy, v31, v32))
  {
    v35 = 0;
    do
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(nodesCopy, v33, v35);
      v38 = objc_msgSend_objectAtIndexedSubscript_(indexesCopy, v37, v35);
      v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);
      if (v41 > objc_msgSend_count(self->_slideNodes, v42, v43))
      {
        sub_275E5A7A4();
      }

      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v36, v44, v30, contextCopy);
      objc_msgSend_insertObject_atIndex_(self->_slideNodes, v45, v36, v41);
      objc_msgSend_setSlideTree_(v36, v46, self);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v36, v47, v30, contextCopy);

      ++v35;
    }

    while (v35 < objc_msgSend_count(nodesCopy, v48, v49));
  }

  v50 = objc_msgSend_count(depthsCopy, v33, v34);
  if (v50 != objc_msgSend_count(changingDepthsCopy, v51, v52))
  {
    sub_275E5A848();
  }

  if (objc_msgSend_count(depthsCopy, v53, v54))
  {
    v57 = 0;
    do
    {
      v58 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v55, v57);
      v60 = objc_msgSend_objectAtIndexedSubscript_(changingDepthsCopy, v59, v57);
      v63 = objc_msgSend_unsignedIntegerValue(v60, v61, v62);
      if ((v63 - 1) >= 6)
      {
        sub_275E5A8EC();
      }

      objc_msgSend_setDepth_(v58, v64, v63);

      ++v57;
    }

    while (v57 < objc_msgSend_count(depthsCopy, v65, v66));
  }

  objc_msgSend_p_clearSlideNodeCache(self, v55, v56);
}

- (void)moveSlideNodes:(id)nodes fromIndexes:(id)indexes toIndexes:(id)toIndexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  toIndexesCopy = toIndexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  objc_msgSend_willModify(self, v16, v17);
  v20 = objc_msgSend_count(nodesCopy, v18, v19);
  if (v20 != objc_msgSend_count(indexesCopy, v21, v22))
  {
    sub_275E5A990();
  }

  v72 = changingDepthsCopy;
  v73 = depthsCopy;
  v25 = objc_msgSend_count(nodesCopy, v23, v24);
  if (v25 != objc_msgSend_count(toIndexesCopy, v26, v27))
  {
    sub_275E5AA34();
  }

  if (objc_msgSend_count(nodesCopy, v28, v29))
  {
    v32 = 0;
    do
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(nodesCopy, v30, v32);
      v35 = objc_msgSend_objectAtIndexedSubscript_(indexesCopy, v34, v32);
      v38 = objc_msgSend_unsignedIntegerValue(v35, v36, v37);
      v39 = toIndexesCopy;
      v41 = objc_msgSend_objectAtIndexedSubscript_(toIndexesCopy, v40, v32);
      v44 = objc_msgSend_unsignedIntegerValue(v41, v42, v43);
      if (v38 > objc_msgSend_count(self->_slideNodes, v45, v46))
      {
        sub_275E5ACA0();
      }

      if (v44 > objc_msgSend_count(self->_slideNodes, v47, v48))
      {
        sub_275E5ABFC();
      }

      v51 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v49, v38);
      if (v33 != v51)
      {
        sub_275E5AAD8(v33, v51, v38, v44);
      }

      objc_msgSend_removeObjectAtIndex_(self->_slideNodes, v50, v38);
      objc_msgSend_insertObject_atIndex_(self->_slideNodes, v52, v51, v44);

      ++v32;
      toIndexesCopy = v39;
    }

    while (v32 < objc_msgSend_count(nodesCopy, v53, v54));
  }

  v55 = objc_msgSend_count(v73, v30, v31);
  if (v55 != objc_msgSend_count(v72, v56, v57))
  {
    sub_275E5AD44();
  }

  if (objc_msgSend_count(v73, v58, v59))
  {
    v62 = 0;
    do
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(v73, v60, v62);
      v65 = objc_msgSend_objectAtIndexedSubscript_(v72, v64, v62);
      v68 = objc_msgSend_unsignedIntegerValue(v65, v66, v67);
      if ((v68 - 1) >= 6)
      {
        sub_275E5ADE8();
      }

      objc_msgSend_setDepth_(v63, v69, v68);

      ++v62;
    }

    while (v62 < objc_msgSend_count(v73, v70, v71));
  }

  objc_msgSend_p_clearSlideNodeCache(self, v60, v61);
}

- (void)removeSlideNodes:(id)nodes atIndexes:(id)indexes slideNodesChangingDepths:(id)depths depthsOfSlideNodesChangingDepths:(id)changingDepths
{
  nodesCopy = nodes;
  indexesCopy = indexes;
  depthsCopy = depths;
  changingDepthsCopy = changingDepths;
  v12 = indexesCopy;
  v81 = changingDepthsCopy;
  objc_msgSend_willModify(self, v13, v14);
  v17 = objc_msgSend_owner(self, v15, v16);
  v20 = objc_msgSend_context(v17, v18, v19);
  v23 = objc_msgSend_documentRoot(v20, v21, v22);

  v26 = objc_msgSend_count(nodesCopy, v24, v25);
  if (v26 != objc_msgSend_count(indexesCopy, v27, v28))
  {
    sub_275E5AE8C();
  }

  if (objc_msgSend_count(indexesCopy, v29, v30))
  {
    v33 = 0;
    v34 = 0x280A39000uLL;
    do
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v12, v31, v33);
      v38 = objc_msgSend_unsignedIntegerValue(v35, v36, v37);
      v39 = *(v34 + 1088);
      if (v38 > objc_msgSend_count(*(&self->super.super.isa + v39), v40, v41))
      {
        v43 = MEMORY[0x277D81150];
        v83 = v35;
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
        selfCopy = self;
        v47 = v23;
        v48 = v34;
        v50 = v49 = v12;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v51, v44, v50, 458, 0, "Slides must be inserted within the bounds of the deck.");

        v12 = v49;
        v34 = v48;
        v23 = v47;
        self = selfCopy;
        v35 = v83;

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
      }

      v54 = objc_msgSend_objectAtIndexedSubscript_(nodesCopy, v42, v33);
      v56 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.isa + v39), v55, v38);
      v58 = v56;
      if (v54 != v56)
      {
        sub_275E5AF30(v54, v56, v38);
      }

      objc_msgSend_willBeRemovedFromDocumentRoot_(v56, v57, v23);
      objc_msgSend_removeObjectAtIndex_(*(&self->super.super.isa + v39), v59, v38);
      objc_msgSend_setSlideTree_(v58, v60, 0);
      objc_msgSend_wasRemovedFromDocumentRoot_(v58, v61, v23);

      ++v33;
    }

    while (v33 < objc_msgSend_count(v12, v62, v63));
  }

  v64 = objc_msgSend_count(depthsCopy, v31, v32);
  if (v64 != objc_msgSend_count(v81, v65, v66))
  {
    sub_275E5B048();
  }

  if (objc_msgSend_count(depthsCopy, v67, v68))
  {
    v71 = 0;
    do
    {
      v72 = objc_msgSend_objectAtIndexedSubscript_(depthsCopy, v69, v71);
      v74 = objc_msgSend_objectAtIndexedSubscript_(v81, v73, v71);
      v77 = objc_msgSend_unsignedIntegerValue(v74, v75, v76);
      if ((v77 - 1) >= 6)
      {
        sub_275E5B0EC();
      }

      objc_msgSend_setDepth_(v72, v78, v77);

      ++v71;
    }

    while (v71 < objc_msgSend_count(depthsCopy, v79, v80));
  }

  objc_msgSend_p_clearSlideNodeCache(self, v69, v70);
}

- (void)removeAll
{
  v47 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2);
  v6 = objc_msgSend_owner(self, v4, v5);
  v9 = objc_msgSend_context(v6, v7, v8);
  v12 = objc_msgSend_documentRoot(v9, v10, v11);

  v15 = objc_msgSend_copy(self->_slideNodes, v13, v14);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v15;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v41, v46, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v41 + 1) + 8 * i), v19, v12);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v41, v46, 16);
    }

    while (v20);
  }

  objc_msgSend_removeAllObjects(self->_slideNodes, v23, v24);
  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  self->_slideNodesForUniqueIdentifiersCache = 0;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v16;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v45, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v38;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v37 + 1) + 8 * j);
        objc_msgSend_wasRemovedFromDocumentRoot_(v33, v29, v12, v37);
        objc_msgSend_setSlideTree_(v33, v34, 0);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v37, v45, 16);
    }

    while (v30);
  }

  objc_msgSend_p_clearSlideNodeCache(self, v35, v36);
}

- (NSArray)visibleSlideNodes
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_slideNodes(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((objc_msgSend_isSkipped(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_addObject_(v4, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
    }

    while (v12);
  }

  return v4;
}

- (NSArray)displayedSlideNodes
{
  v24 = *MEMORY[0x277D85DE8];
  displayedSlideNodeCache = self->_displayedSlideNodeCache;
  if (!displayedSlideNodeCache)
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = objc_msgSend_count(self->_slideNodes, a2, v2);
    v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_slideNodes;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v23, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_slideNodeIsDisplayed_(self, v12, v16, v19))
          {
            objc_msgSend_addObject_(v8, v12, v16);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v19, v23, 16);
      }

      while (v13);
    }

    objc_msgSend_setDisplayedSlideNodes_(self, v17, v8);
    displayedSlideNodeCache = self->_displayedSlideNodeCache;
  }

  return displayedSlideNodeCache;
}

- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index
{
  v5 = objc_msgSend_count(self->_slideNodes, a2, index);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNSlideTree defaultSlideNodeForNewSelectionNearestToIndex:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 561, 0, "Invalid index passed to the slide tree.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v5 = 0;
  }

  else if (v5)
  {
    if (v5 <= index)
    {
      objc_msgSend_lastObject(self->_slideNodes, v6, v7);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v6, index);
    }
    v5 = ;
  }

  return v5;
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_indexOfObject_(self->_slideNodes, v5, nodeCopy);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNSlideTree indexOfSlideNode:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v14 = objc_msgSend_objectUUIDPath(nodeCopy, v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v11, 582, 0, "Slide node %{public}@ %{public}@, does not exist in this document.", nodeCopy, v14);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17);
  }

  return v7;
}

- (id)orderedSlideNodesInSelection:(id)selection
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_slideNodes(selection, a2, selection);
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(v4, v11, v12))
  {
    v15 = objc_msgSend_slideNodes(self, v13, v14);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v24, v28, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v24 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(v4, v18, v22))
          {
            objc_msgSend_addObject_(v10, v18, v22);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v24, v28, 16);
      }

      while (v19);
    }
  }

  return v10;
}

- (id)slideNodeAtIndex:(unint64_t)index ignoreHiddenNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_slideNodes;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (!nodesCopy || (objc_msgSend_isSkipped(*(*(&v17 + 1) + 8 * i), v9, v10, v17) & 1) == 0)
        {
          if (!index)
          {
            v15 = v14;
            goto LABEL_14;
          }

          --index;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)slideNodeWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  if (!slideNodesForUniqueIdentifiersCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v4, v5);
    slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(slideNodesForUniqueIdentifiersCache, v4, identifierCopy);

  return v8;
}

- (BOOL)isEmpty
{
  v3 = objc_msgSend_slideNodes(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) == 0;

  return v6;
}

- (unint64_t)slideNumberForSlideNode:(id)node
{
  nodeCopy = node;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if ((objc_msgSend_isSkipped(nodeCopy, v5, v6) & 1) == 0)
  {
    v10 = objc_msgSend_visibleSlideNodes(self, v7, v8);
    v12 = objc_msgSend_indexOfObject_(v10, v11, nodeCopy);

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v12 + 1;
    }
  }

  return v9;
}

- (unint64_t)visiblePageCountIsSeparatedByBuilds:(BOOL)builds
{
  v22 = *MEMORY[0x277D85DE8];
  if (builds)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = objc_msgSend_visibleSlideNodes(self, a2, builds, 0);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
    if (v5)
    {
      v8 = v5;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v3);
          }

          v9 += objc_msgSend_buildEventCount(*(*(&v17 + 1) + 8 * i), v6, v7) + 1;
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v17, v21, 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    v12 = objc_msgSend_visibleSlideNodes(self, a2, builds);
    v15 = objc_msgSend_count(v12, v13, v14);

    return v15;
  }
}

- (unint64_t)byBuildPageIndexForSlideIndex:(unint64_t)index andEventIndex:(unint64_t)eventIndex
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_visibleSlideNodes(self, a2, index, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = 0;
    v14 = *v20;
    while (2)
    {
      v15 = 0;
      v16 = v12 + 1;
      v12 += v11;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v17 = v13 + 1;
        if (v16 > index)
        {
          v13 = v17 + eventIndex;
          goto LABEL_12;
        }

        v13 = objc_msgSend_buildEventCount(*(*(&v19 + 1) + 8 * v15++), v9, v10) + v17;
        ++v16;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13 - 1;
}

- (void)slideIndex:(unint64_t *)index andEventIndex:(unint64_t *)eventIndex forByBuildPageIndex:(unint64_t)pageIndex
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = objc_msgSend_visibleSlideNodes(self, a2, index);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v13 = v10;
    eventIndexCopy = eventIndex;
    v14 = 0;
    v15 = 0;
    v16 = *v25;
    while (2)
    {
      v17 = 0;
      v18 = v14 + 1;
      v14 += v13;
      v19 = v15;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v20 = objc_msgSend_buildEventCount(*(*(&v24 + 1) + 8 * v17), v11, v12);
        v15 = v19 + v20 + 1;
        if (v15 > pageIndex)
        {
          v21 = pageIndex - v19;
          v14 = v18;
          goto LABEL_11;
        }

        ++v17;
        ++v18;
        v19 += v20 + 1;
      }

      while (v13 != v17);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_11:
    eventIndex = eventIndexCopy;
  }

  else
  {
    v21 = 0;
    v14 = 0;
  }

  if (v14 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v14;
  }

  *index = (v22 - 1);
  *eventIndex = v21;
}

- (unint64_t)numberOfSlidesUsingTemplateSlide:(id)slide
{
  v3 = objc_msgSend_slidesUsingTemplateSlide_(self, a2, slide);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (id)slidesUsingTemplateSlide:(id)slide
{
  v32 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = objc_msgSend_slideNodes(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        v19 = objc_msgSend_slide(v16, v17, v18);
        v20 = TSUDynamicCast();

        v23 = objc_msgSend_templateSlide(v20, v21, v22);

        if (v23 == slideCopy)
        {
          objc_msgSend_addObject_(v7, v24, v20);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v25, &v27, v31, 16);
    }

    while (v13);
  }

  return v7;
}

- (id)formulaReferenceNameForSlideNode:(id)node
{
  nodeCopy = node;
  if (!self->_formulaReferenceNamesForSlideNodesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v4, v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_msgSend_objectForKey_(self->_formulaReferenceNamesForSlideNodesCache, v8, nodeCopy);
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v6, v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sensitiveCopy)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(self->_slideNodesForFormulaReferenceNamesCache, v10, nameCopy);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = self->_slideNodesForFormulaReferenceNamesCache;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16);
    if (v16)
    {
      v27 = 40;
      selfCopy2 = self;
      v17 = *v30;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = objc_msgSend_owner(selfCopy, v14, v15, v27, selfCopy2, v29);
          v23 = objc_msgSend_objectLocale(v20, v21, v22);
          IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v23, v24, v19, nameCopy);

          if (IsEqual_toString)
          {
            v11 = objc_msgSend_objectForKeyedSubscript_(*(&selfCopy2->super.super.isa + v27), v14, v19);
            goto LABEL_15;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v29, v33, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_15:
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)slideNamesMatchingPrefix:(id)prefix
{
  v33 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v4, v5);
  }

  v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  obj = self;
  objc_sync_enter(obj);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_slideNodesForFormulaReferenceNamesCache;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_length(prefixCopy, v9, v10, obj))
        {
          v16 = objc_msgSend_owner(obj, v9, v15);
          v19 = objc_msgSend_objectLocale(v16, v17, v18);
          v22 = objc_msgSend_locale(v19, v20, v21);
          hasCaseInsensitivePrefix_withLocale = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v14, v23, prefixCopy, v22);

          if (!hasCaseInsensitivePrefix_withLocale)
          {
            continue;
          }
        }

        objc_msgSend_addObject_(v27, v9, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v28, v32, 16);
    }

    while (v11);
  }

  objc_sync_exit(obj);

  return v27;
}

- (void)invalidateSlideNameCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
  selfCopy->_slideNodesForFormulaReferenceNamesCache = 0;

  formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
  selfCopy->_formulaReferenceNamesForSlideNodesCache = 0;

  objc_sync_exit(selfCopy);
  objc_opt_class();
  v19 = objc_msgSend_owner(selfCopy, v5, v6);
  v9 = objc_msgSend_context(v19, v7, v8);
  v12 = objc_msgSend_documentRoot(v9, v10, v11);
  v13 = TSUDynamicCast();
  v16 = objc_msgSend_calculationEngine(v13, v14, v15);
  objc_msgSend_markIndirectCallsAsDirty(v16, v17, v18);
}

- (id)childrenOfSlideNode:(id)node
{
  nodeCopy = node;
  if ((objc_msgSend_containsObject_(self->_slideNodes, v5, nodeCopy) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNSlideTree childrenOfSlideNode:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v14 = objc_msgSend_objectUUIDPath(nodeCopy, v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v11, 802, 0, "Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v21 = objc_msgSend_depth(nodeCopy, v19, v20);
  v23 = objc_msgSend_indexOfObject_(self->_slideNodes, v22, nodeCopy) + 1;
  if (v23 < objc_msgSend_count(self->_slideNodes, v24, v25))
  {
    while (1)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v26, v23);
      v31 = objc_msgSend_depth(v28, v29, v30);
      if (v21 >= v31)
      {
        break;
      }

      if (v31 == v21 + 1)
      {
        objc_msgSend_addObject_(v18, v32, v28);
      }

      if (++v23 >= objc_msgSend_count(self->_slideNodes, v33, v34))
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v35 = objc_msgSend_copy(v18, v26, v27);

  return v35;
}

- (id)descendantsOfSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if ((objc_msgSend_containsObject_(self->_slideNodes, v8, nodeCopy) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNSlideTree descendantsOfSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v17 = objc_msgSend_objectUUIDPath(nodeCopy, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v14, 822, 0, "Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  v24 = objc_msgSend_depth(nodeCopy, v22, v23);
  if ((!objc_msgSend_isCollapsed(nodeCopy, v25, v26) || !slideNodesCopy) && (!objc_msgSend_isSkipped(nodeCopy, v27, v28) || !nodesCopy))
  {
    v29 = objc_msgSend_indexOfObject_(self->_slideNodes, v27, nodeCopy) + 1;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v29 >= objc_msgSend_count(self->_slideNodes, v27, v28))
      {
        break;
      }

      v31 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v27, v29);
      v34 = objc_msgSend_depth(v31, v32, v33);
      v37 = v34;
      if (v24 < v34 && v34 < v30)
      {
        if (objc_msgSend_hasChildren(v31, v35, v36) && (slideNodesCopy && (objc_msgSend_isCollapsed(v31, v39, v40) & 1) != 0 || nodesCopy && objc_msgSend_isSkipped(v31, v39, v40)))
        {
          v30 = v37 + 1;
        }

        else
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        objc_msgSend_addObject_(v21, v39, v31);
      }

      ++v29;
    }

    while (v24 < v37);
  }

  v41 = objc_msgSend_copy(v21, v27, v28);

  return v41;
}

- (id)slideNodeBeforeSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if ((objc_msgSend_containsObject_(self->_slideNodes, v9, nodeCopy) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree slideNodeBeforeSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v17 = objc_msgSend_objectUUIDPath(nodeCopy, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v14, 855, 0, "Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_indexOfObject_(self->_slideNodes, v10, nodeCopy);
  if (v21)
  {
    for (i = v21 - 1; i != -1; --i)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v22, i);
      if (slideNodesCopy)
      {
        v27 = objc_msgSend_slideNodeIsDisplayed_(self, v24, v26) ^ 1;
        if (nodesCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v27 = 0;
        if (nodesCopy)
        {
LABEL_9:
          isSkipped = objc_msgSend_isSkipped(v26, v24, v25);
          goto LABEL_10;
        }
      }

      isSkipped = 0;
LABEL_10:
      if (((v27 | isSkipped) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v26 = 0;
LABEL_13:

  return v26;
}

- (id)slideNodeAfterSlideNode:(id)node omitSkippedSlideNodes:(BOOL)nodes omitCollapsedSlideNodes:(BOOL)slideNodes
{
  slideNodesCopy = slideNodes;
  nodesCopy = nodes;
  nodeCopy = node;
  if ((objc_msgSend_containsObject_(self->_slideNodes, v9, nodeCopy) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree slideNodeAfterSlideNode:omitSkippedSlideNodes:omitCollapsedSlideNodes:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v17 = objc_msgSend_objectUUIDPath(nodeCopy, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v14, 874, 0, "Slide node, %{public}@ %{public}@, does not exist in this deck.", nodeCopy, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_indexOfObject_(self->_slideNodes, v10, nodeCopy);
  v24 = objc_msgSend_count(self->_slideNodes, v22, v23);
  v26 = v21 + 1;
  if (v26 < v24)
  {
    v27 = v24;
    do
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v25, v26);
      if (slideNodesCopy)
      {
        v31 = objc_msgSend_slideNodeIsDisplayed_(self, v28, v30) ^ 1;
        if (nodesCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v31 = 0;
        if (nodesCopy)
        {
LABEL_9:
          isSkipped = objc_msgSend_isSkipped(v30, v28, v29);
          goto LABEL_10;
        }
      }

      isSkipped = 0;
LABEL_10:
      if (((v31 | isSkipped) & 1) == 0)
      {
        goto LABEL_13;
      }

      ++v26;
    }

    while (v27 != v26);
  }

  v30 = 0;
LABEL_13:

  return v30;
}

- (id)parentOfSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_depth(nodeCopy, v5, v6);
  v9 = objc_msgSend_indexOfObject_(self->_slideNodes, v8, nodeCopy);
  v11 = v9;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree parentOfSlideNode:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    v18 = objc_msgSend_objectUUIDPath(nodeCopy, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v13, v15, 899, 0, "Slide node, %{public}@ %{public}@, does not exist in this deck, so no parent can be found.", nodeCopy, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    if (v7 <= 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 <= 1)
    {
      goto LABEL_14;
    }

    if (!v9)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree parentOfSlideNode:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 902, 0, "First slide node has invalid depth.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }
  }

  if (v11)
  {
    while (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(self->_slideNodes, v10, --v11);
      if (objc_msgSend_depth(v29, v30, v31) < v7)
      {
        if (v29)
        {
          goto LABEL_15;
        }

        break;
      }

      if (!v11)
      {
        break;
      }
    }
  }

  v32 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree parentOfSlideNode:]");
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 914, 0, "Parent slide node not found. Something is wrong.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
LABEL_14:
  v29 = 0;
LABEL_15:

  return v29;
}

- (BOOL)slideNodeIsDisplayed:(id)displayed
{
  displayedCopy = displayed;
  if (objc_msgSend_depth(displayedCopy, v5, v6) >= 2 && (objc_msgSend_parentOfSlideNode_(self, v7, displayedCopy), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v8;
    do
    {
      isCollapsed = objc_msgSend_isCollapsed(v11, v9, v10);
      if (isCollapsed)
      {
        break;
      }

      v14 = objc_msgSend_parentOfSlideNode_(self, v12, v11);

      v11 = v14;
    }

    while (v14);
    v15 = isCollapsed ^ 1;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)slideNodesInAscendingOrder:(id)order
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D81FD0;
  v5[3] = &unk_27A6985A0;
  v5[4] = self;
  v3 = objc_msgSend_sortedArrayUsingComparator_(order, a2, v5);

  return v3;
}

- (void)addSlideNodeForDocumentUpgrade:(id)upgrade atDepth:(unint64_t)depth
{
  upgradeCopy = upgrade;
  objc_msgSend_willModifyForUpgrade(self, v6, v7);
  v10 = objc_msgSend_lastObject(self->_slideNodes, v8, v9);
  v12 = v10;
  if (depth != 1 && !v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 958, 0, "First slide must be at depth one.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if ((objc_msgSend_containsObject_(self->_slideNodes, v11, upgradeCopy) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_slideNodes, v20, upgradeCopy);
    objc_msgSend_setSlideTree_(upgradeCopy, v21, self);
    if (v12 && objc_msgSend_depth(v12, v22, v23) + 1 < depth)
    {
      sub_275E5B190();
    }

    if (depth - 1 >= 6)
    {
      sub_275E5B234();
    }

    objc_msgSend_setDepth_(upgradeCopy, v22, depth);
    objc_msgSend_p_clearSlideNodeCache(self, v24, v25);
  }
}

- (void)p_clearSlideNodeCache
{
  displayedSlideNodeCache = self->_displayedSlideNodeCache;
  self->_displayedSlideNodeCache = 0;

  slideNodesForUniqueIdentifiersCache = self->_slideNodesForUniqueIdentifiersCache;
  self->_slideNodesForUniqueIdentifiersCache = 0;

  objc_msgSend_invalidateSlideNameCache(self, v5, v6);
}

- (void)p_cacheSlideNodes
{
  v83 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_slideNodesForUniqueIdentifiersCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForUniqueIdentifiersCache = selfCopy->_slideNodesForUniqueIdentifiersCache;
    selfCopy->_slideNodesForUniqueIdentifiersCache = v5;
  }

  if (!selfCopy->_slideNodesForFormulaReferenceNamesCache)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
    selfCopy->_slideNodesForFormulaReferenceNamesCache = v7;
  }

  if (!selfCopy->_formulaReferenceNamesForSlideNodesCache)
  {
    v9 = objc_alloc(MEMORY[0x277CCAB00]);
    v11 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v9, v10, 512, 512, 0);
    formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
    selfCopy->_formulaReferenceNamesForSlideNodesCache = v11;
  }

  objc_msgSend_removeAllObjects(selfCopy->_slideNodesForUniqueIdentifiersCache, v3, v4);
  objc_msgSend_removeAllObjects(selfCopy->_slideNodesForFormulaReferenceNamesCache, v13, v14);
  objc_msgSend_removeAllObjects(selfCopy->_formulaReferenceNamesForSlideNodesCache, v15, v16);
  v19 = objc_msgSend_documentRoot(selfCopy, v17, v18);
  v22 = objc_msgSend_documentLocale(v19, v20, v21);
  v74 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Skipped Slide %@", &stru_2884D8E20, @"Keynote");

  v26 = objc_msgSend_documentRoot(selfCopy, v24, v25);
  v29 = objc_msgSend_documentLocale(v26, v27, v28);
  v73 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, @"Slide %@", &stru_2884D8E20, @"Keynote");

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = selfCopy->_slideNodes;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v78, v82, 16);
  if (v32)
  {
    v35 = 0;
    v36 = 0;
    v76 = *v79;
    do
    {
      v77 = v32;
      for (i = 0; i != v77; ++i)
      {
        if (*v79 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v78 + 1) + 8 * i);
        if (!selfCopy->_formatter)
        {
          v39 = objc_alloc_init(MEMORY[0x277CCABB8]);
          formatter = selfCopy->_formatter;
          selfCopy->_formatter = v39;

          objc_msgSend_setNumberStyle_(selfCopy->_formatter, v41, 1);
          v42 = selfCopy->_formatter;
          v45 = objc_msgSend_documentRoot(selfCopy, v43, v44);
          v48 = objc_msgSend_documentLocale(v45, v46, v47);
          v51 = objc_msgSend_locale(v48, v49, v50);
          objc_msgSend_setLocale_(v42, v52, v51);
        }

        if (objc_msgSend_isSkipped(v38, v33, v34))
        {
          v54 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v53, ++v36);
          v56 = objc_msgSend_stringFromNumber_(selfCopy->_formatter, v55, v54);
          objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, v74, v56);
        }

        else
        {
          v54 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v53, ++v35);
          v56 = objc_msgSend_stringFromNumber_(selfCopy->_formatter, v58, v54);
          objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, v73, v56);
        }
        v60 = ;

        if (v38)
        {
          if (v60)
          {
            v63 = objc_msgSend_uniqueIdentifier(v38, v61, v62);
            v64 = v63 == 0;

            if (!v64)
            {
              objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_slideNodesForFormulaReferenceNamesCache, v65, v38, v60);
              objc_msgSend_setObject_forKey_(selfCopy->_formulaReferenceNamesForSlideNodesCache, v66, v60, v38);
              v67 = selfCopy->_slideNodesForUniqueIdentifiersCache;
              v70 = objc_msgSend_uniqueIdentifier(v38, v68, v69);
              objc_msgSend_setObject_forKeyedSubscript_(v67, v71, v38, v70);
            }
          }
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v78, v82, 16);
    }

    while (v32);
  }

  objc_msgSend_setDisplayedSlideNodes_(selfCopy, v72, 0);
  objc_sync_exit(selfCopy);
}

- (KNSlideTree)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v33.receiver = self;
  v33.super_class = KNSlideTree;
  v10 = [(KNSlideTree *)&v33 initWithOwner:ownerCopy];
  if (v10)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_275D82A0C;
    v31[4] = sub_275D82A1C;
    v32 = 0;
    if (*(archive + 16))
    {
      v11 = *(archive + 6);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_275D82A24;
      v30[3] = &unk_27A6985C8;
      v30[4] = v31;
      v12 = unarchiverCopy;
      v13 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v30);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_275D82A34;
    v28[3] = &unk_27A697A10;
    v15 = v10;
    v29 = v15;
    v16 = unarchiverCopy;
    v17 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v16, v18, archive + 24, v17, 0, v28);

    v21 = objc_msgSend_fileFormatVersion(v16, v19, v20);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D82AD0;
    v24[3] = &unk_27A6985F0;
    v26 = v31;
    v25 = v15;
    v27 = v21;
    objc_msgSend_addFinalizeHandler_(v16, v22, v24);

    _Block_object_dispose(v31, 8);
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_slideNodes(self, v6, v7);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v9, v8, archive + 24);
}

@end