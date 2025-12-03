@interface TSCENamedReferenceManager
- (BOOL)trackedReferencesExistForTable:(const TSKUIDStruct *)table;
- (TSCECalculationEngine)calcEngine;
- (TSCENamedReferenceManager)initWithContext:(id)context;
- (TSCENamedReferenceManager)initWithContext:(id)context calculationEngine:(id)engine;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (id)beginTrackingNamesInTable:(const TSKUIDStruct *)table limitedToRange:(TSCERangeCoordinate)range;
- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref;
- (void)beginTrackingNameInCell:(TSUCellCoord)cell ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to;
- (void)beginTrackingNamesInRange:(TSCERangeCoordinate)range ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to;
- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)beginTrackingReference:(id)reference;
- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)endTrackingReference:(id)reference;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)registerWithCalcEngine:(BOOL)engine;
- (void)saveToArchiver:(id)archiver;
- (void)setCalculationEngine:(id)engine;
- (void)setFormulaOwnerUID:(const TSKUIDStruct *)d;
- (void)unregisterFromCalcEngine;
- (void)updateTrackedHeaders:(const TSKUIDStruct *)headers;
- (void)willClose;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSCENamedReferenceManager

- (TSCENamedReferenceManager)initWithContext:(id)context
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENamedReferenceManager initWithContext:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENamedReferenceManager.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 99, 0, "use initWithContext:calculationEngine: instead");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (TSCENamedReferenceManager)initWithContext:(id)context calculationEngine:(id)engine
{
  contextCopy = context;
  engineCopy = engine;
  v20.receiver = self;
  v20.super_class = TSCENamedReferenceManager;
  v8 = [(TSCENamedReferenceManager *)&v20 initWithContext:contextCopy];
  if (v8)
  {
    v8->_ownerUID._lower = TSKMakeUIDStructRandom();
    v8->_ownerUID._upper = v9;
    v8->_isRegisteredWithCalculationEngine = 0;
    v10 = [TSCETrackedReferenceStore alloc];
    v14 = objc_msgSend_initWithContext_(v10, v11, contextCopy, v12, v13);
    trackedRefsStore = v8->_trackedRefsStore;
    v8->_trackedRefsStore = v14;

    objc_storeWeak(&v8->_calcEngine, engineCopy);
    objc_msgSend_registerWithCalcEngine_(v8, v16, 0, v17, v18);
  }

  return v8;
}

- (void)willClose
{
  trackedRefsStore = self->_trackedRefsStore;
  if (trackedRefsStore)
  {
    objc_storeWeak(&self->_weakTrackedRefsStore, trackedRefsStore);
    objc_msgSend_willClose(self->_trackedRefsStore, v4, v5, v6, v7);
  }

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)setCalculationEngine:(id)engine
{
  objc_storeWeak(&self->_calcEngine, engine);

  objc_msgSend_registerWithCalcEngine_(self, v4, 1, v5, v6);
}

- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if ((objc_msgSend_trackedReferencesExistForTable_(self, a2, table, v3, v4) & 1) == 0)
  {
    v8 = objc_msgSend_beginTrackingNamesInTable_limitedToRange_(self, v7, table, 0x7FFF7FFFFFFFLL, 0x7FFF7FFFFFFFLL);
  }
}

- (id)beginTrackingNamesInTable:(const TSKUIDStruct *)table limitedToRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v62 = objc_opt_new();
  v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  v15 = objc_msgSend_tableResolverForTableUID_(v11, v12, table, v13, v14);

  if (!v15)
  {
    goto LABEL_73;
  }

  v20 = objc_msgSend_bodyRangeCoordinate(v15, v16, v17, v18, v19);
  v22 = v21;
  v26 = objc_msgSend_tableRangeCoordinate(v15, v21, v23, v24, v25);
  v28 = v27;
  v29 = sub_2211D467C(v20, v22, v26, v27);
  v31 = v30;
  v32 = sub_2211D4860(v20, v22, v26, v28);
  v34 = v33;
  if (objc_msgSend_hasEverBeenEmbiggened(v15, v33, v35, v36, v37))
  {
    v42 = objc_msgSend_calcEngine(self, v38, v39, v40, v41);
    objc_msgSend_endTrackingNamesInTableForLegacyNRM_(v42, v43, table, v44, v45);

    goto LABEL_73;
  }

  v46 = topLeft == 0x7FFFFFFF || (topLeft & 0xFFFF00000000) == 0x7FFF00000000;
  v47 = v46;
  if (!v46 && bottomRight != 0x7FFFFFFF && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(topLeft) <= WORD2(bottomRight) && topLeft <= bottomRight && v29 != 0x7FFFFFFF && (v29 & 0xFFFF00000000) != 0x7FFF00000000 && v31 != 0x7FFFFFFF && (v31 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v29) <= WORD2(v31) && v29 <= v31)
  {
    if (sub_22110E12C(topLeft, bottomRight))
    {
      v50 = WORD2(topLeft);
      if (WORD2(v29) >= WORD2(topLeft))
      {
        v50 = WORD2(v29);
      }

      if (v29 <= topLeft)
      {
        v29 = topLeft;
      }

      else
      {
        v29 = v29;
      }

      v29 = v29 & 0xFFFF0000FFFFFFFFLL | (v50 << 32);
      if (WORD2(v31) >= WORD2(bottomRight))
      {
        v51 = WORD2(bottomRight);
      }

      else
      {
        v51 = WORD2(v31);
      }

      if (v31 >= bottomRight)
      {
        v31 = bottomRight;
      }

      else
      {
        v31 = v31;
      }

      v31 = v31 & 0xFFFF0000FFFFFFFFLL | (v51 << 32);
    }

    else
    {
      v29 = 0x7FFF7FFFFFFFLL;
      v31 = 0x7FFF7FFFFFFFLL;
    }
  }

  v48 = v29 & 0xFFFF00000000;
  if (v29 == 0x7FFFFFFFLL || v48 == 0x7FFF00000000)
  {
    v49 = v31 & 0xFFFF00000000;
  }

  else
  {
    v49 = v31 & 0xFFFF00000000;
    if (v31 != 0x7FFFFFFF && v49 != 0x7FFF00000000 && WORD2(v29) <= WORD2(v31) && v29 <= v31)
    {
      goto LABEL_54;
    }
  }

  if (v29 != 0x7FFFFFFFLL && v48 == 0x7FFF00000000 && v49 == 0x7FFF00000000)
  {
    if (v31 == 0x7FFFFFFF || v29 > v31)
    {
      goto LABEL_55;
    }

LABEL_54:
    objc_msgSend_beginTrackingNamesInRange_ofTableUID_addingTrackedReferencesTo_(self, v38, v29, v31, table, v62);
    goto LABEL_55;
  }

  if (v29 == 0x7FFFFFFFLL && v48 != 0x7FFF00000000 && v49 != 0x7FFF00000000 && v31 == 0x7FFFFFFF && WORD2(v29) <= WORD2(v31))
  {
    goto LABEL_54;
  }

LABEL_55:
  v52 = HIDWORD(v32);
  v53 = HIDWORD(v34);
  v54 = v32;
  v55 = v32 & 0xFFFF00000000;
  if (v32 != 0x7FFFFFFFLL && v55 != 0x7FFF00000000 && v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v56 = WORD2(v32) > WORD2(v34) || v32 > v34;
    v57 = v56 ? 1 : v47;
    if ((v57 & 1) == 0 && bottomRight != 0x7FFFFFFF && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(topLeft) <= WORD2(bottomRight) && topLeft <= bottomRight)
    {
      if (sub_22110E12C(topLeft, bottomRight))
      {
        LOWORD(v59) = WORD2(topLeft);
        if (WORD2(v32) >= WORD2(topLeft))
        {
          v59 = HIDWORD(v32);
        }

        if (v32 <= topLeft)
        {
          v32 = topLeft;
        }

        else
        {
          v32 = v32;
        }

        v32 = v32 & 0xFFFF0000FFFFFFFFLL | (v59 << 32);
        if (WORD2(v34) >= WORD2(bottomRight))
        {
          LOWORD(v60) = WORD2(bottomRight);
        }

        else
        {
          v60 = HIDWORD(v34);
        }

        if (v34 >= bottomRight)
        {
          v34 = bottomRight;
        }

        else
        {
          v34 = v34;
        }

        v34 = v34 & 0xFFFF0000FFFFFFFFLL | (v60 << 32);
      }

      else
      {
        v32 = 0x7FFF7FFFFFFFLL;
        v34 = 0x7FFF7FFFFFFFLL;
      }

      v52 = HIDWORD(v32);
      v53 = HIDWORD(v34);
      v54 = v32;
      v55 = v32 & 0xFFFF00000000;
    }
  }

  if (v54 != 0x7FFFFFFF && v55 != 0x7FFF00000000 && v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) != 0x7FFF00000000 && v52 <= v53 && v32 <= v34)
  {
    objc_msgSend_beginTrackingNamesInRange_ofTableUID_addingTrackedReferencesTo_(self, v38, v32, v34, table, v62);
  }

LABEL_73:

  return v62;
}

- (void)beginTrackingNamesInRange:(TSCERangeCoordinate)range ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  toCopy = to;
  if (topLeft.row <= bottomRight.row)
  {
    v10 = HIDWORD(*&topLeft);
    do
    {
      if (topLeft.column <= bottomRight.column)
      {
        v11 = v10;
        do
        {
          objc_msgSend_beginTrackingNameInCell_ofTableUID_addingTrackedReferencesTo_(self, v9, topLeft.row | (v11++ << 32), d, toCopy);
        }

        while (v11 <= bottomRight.column);
      }

      ++topLeft.row;
    }

    while (topLeft.row <= bottomRight.row);
  }
}

- (void)beginTrackingNameInCell:(TSUCellCoord)cell ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to
{
  toCopy = to;
  objc_msgSend_willModify(self, v9, v10, v11, v12);
  cellCopy = cell;
  v21 = *d;
  v16 = objc_msgSend_beginTrackingReferenceWithCellRef_(self, v13, &cellCopy, v14, v15);
  objc_msgSend_addObject_(toCopy, v17, v16, v18, v19);
}

- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table
{
  v40 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  v13 = objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v9, v10, v11, v12);
  ownerUID = self->_ownerUID;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = ownerUID;
  obj = v13;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v34, v39, 16);
  if (v20)
  {
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v34 + 1) + 8 * v22);
        v24 = objc_msgSend_calcEngine(self, v16, v17, v18, v19);
        v27 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v23, v25, v24, &v38, v26);

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_2211D4E3C;
        v33[3] = &unk_278460E68;
        v33[5] = v23;
        v33[6] = table;
        v33[4] = self;
        objc_msgSend_foreachCellRef_(v27, v28, v33, v29, v30);

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v34, v39, 16);
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
}

- (void)updateTrackedHeaders:(const TSKUIDStruct *)headers
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_calcEngine(self, a2, headers, v3, v4);
  v56 = v6;
  v7 = v6;
  if (*headers != 0 && v6 != 0)
  {
    context = objc_autoreleasePoolPush();
    v12 = objc_msgSend_tableResolverForTableUID_(v7, v9, headers, v10, v11);
    v55 = v12;
    if (v12)
    {
      v17 = v12;
      v18 = objc_msgSend_tableRangeCoordinate(v12, v13, v14, v15, v16);
      v20 = v19;
      v24 = objc_msgSend_bodyRangeCoordinate(v17, v19, v21, v22, v23);
      v26 = v25;
    }

    else
    {
      v18 = 0x7FFF7FFFFFFFLL;
      v20 = 0x7FFF7FFFFFFFLL;
      v24 = 0x7FFF7FFFFFFFLL;
      v26 = 0x7FFF7FFFFFFFLL;
    }

    v59 = sub_2211D4860(v24, v26, v18, v20);
    v61 = v27;
    v58 = sub_2211D467C(v24, v26, v18, v20);
    v60 = v28;
    if (!v55 || (hasEverBeenEmbiggened = objc_msgSend_hasEverBeenEmbiggened(v55, v28, v29, v30, v31), v33 = v55, (hasEverBeenEmbiggened & 1) == 0))
    {
      v70 = 0;
      v71 = &v70;
      v72 = 0x5812000000;
      v73 = sub_2211D544C;
      v74 = sub_2211D5458;
      v75 = &unk_22188E88F;
      v79[0] = 0;
      v79[1] = 0;
      v76 = 0;
      v77 = 0;
      v78 = v79;
      if (v59 != 0x7FFFFFFF && (v59 & 0xFFFF00000000) != 0x7FFF00000000 && v61 != 0x7FFFFFFF && (v61 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v59) <= WORD2(v61) && v59 <= v61)
      {
        v34 = v59;
        do
        {
          if (WORD2(v59) <= WORD2(v61))
          {
            v35 = HIDWORD(v59);
            do
            {
              v69.row = v34;
              *&v69.column = v35;
              TSCECellCoordSet::addCellCoord((v71 + 6), &v69);
              ++v35;
            }

            while (v35 <= WORD2(v61));
          }

          ++v34;
        }

        while (v34 <= v61);
      }

      if (v58 != 0x7FFFFFFF && (v58 & 0xFFFF00000000) != 0x7FFF00000000 && v60 != 0x7FFFFFFF && (v60 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v58) <= WORD2(v60) && v58 <= v60)
      {
        v36 = v58;
        do
        {
          if (WORD2(v58) <= WORD2(v60))
          {
            v37 = HIDWORD(v58);
            do
            {
              v69.row = v36;
              *&v69.column = v37;
              TSCECellCoordSet::addCellCoord((v71 + 6), &v69);
              ++v37;
            }

            while (v37 <= WORD2(v60));
          }

          ++v36;
        }

        while (v36 <= v60);
      }

      objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v28, v29, v30, v31);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      obj = v66 = 0u;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v65, v80, 16);
      if (v43)
      {
        v44 = *v66;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v66 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v65 + 1) + 8 * i);
            v47 = objc_msgSend_calcEngine(self, v39, v40, v41, v42);
            v50 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v46, v48, v47, &self->_ownerUID, v49);

            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = sub_2211D5464;
            v64[3] = &unk_278460E90;
            v64[8] = v59;
            v64[9] = v61;
            v64[10] = v58;
            v64[11] = v60;
            v64[6] = &v70;
            v64[7] = headers;
            v64[4] = self;
            v64[5] = v46;
            objc_msgSend_foreachCellRef_(v50, v51, v64, v52, v53);
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v65, v80, 16);
        }

        while (v43);
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_2211D554C;
      v63[3] = &unk_278460EB8;
      v63[4] = self;
      v63[5] = headers;
      TSCECellCoordSet::enumerateCoordsUsingBlock(v71 + 6, v63);

      _Block_object_dispose(&v70, 8);
      sub_22107C860(&v78, v79[0]);
      v33 = v55;
    }

    v7 = v56;
    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)trackedReferencesExistForTable:(const TSKUIDStruct *)table
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  context = objc_autoreleasePoolPush();
  objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7, v8);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v27, v35, 16);
  if (v10)
  {
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
      v17 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v13, v15, WeakRetained, &self->_ownerUID, v16);

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_2211D57C8;
      v26[3] = &unk_278460EE0;
      v26[4] = &v31;
      v26[5] = table;
      objc_msgSend_foreachCellRef_(v17, v18, v26, v19, v20);
      LOBYTE(WeakRetained) = *(v32 + 24);

      if (WeakRetained)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v27, v35, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v22 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  return v22;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2211D6418, off_2812E2AC8[162], v5);

  WeakRetained = self->_trackedRefsStore;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakTrackedRefsStore);
  }

  *(v6 + 16) |= 1u;
  v10 = *(v6 + 48);
  if (!v10)
  {
    v11 = *(v6 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(v6 + 48) = v10;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, WeakRetained, v10, v8);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E2AC8[162], v6, v7);

  v9 = *(v8 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2211D5A3C;
  v13[3] = &unk_278460F08;
  v13[4] = self;
  v10 = unarchiverCopy;
  v12 = objc_opt_class();
  if (v9)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v9, v12, 0, v13);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v13);
  }
}

- (void)registerWithCalcEngine:(BOOL)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    if (!engine)
    {
      objc_msgSend_willModify(self->_trackedRefsStore, v6, v7, v8, v9);
      v10 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_willModify(v10, v11, v12, v13, v14);
    }

    v15 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v15, v16, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, self->_ownerUID._lower, self->_ownerUID._upper, 7);

    self->_isRegisteredWithCalculationEngine = 1;
  }
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_willModify(self->_trackedRefsStore, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_willModify(WeakRetained, v7, v8, v9, v10);

  v11 = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(v11, v12, self->_ownerUID._lower, self->_ownerUID._upper, v13);

  self->_isRegisteredWithCalculationEngine = 0;
}

- (void)beginTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_beginTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained, v6);
}

- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref
{
  v5 = [TSCETrackedReference alloc];
  v9 = objc_msgSend_initWithCellRef_(v5, v6, ref, v7, v8);
  objc_msgSend_beginTrackingReference_(self, v10, v9, v11, v12);

  return v9;
}

- (void)endTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_endTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained, v6);
}

- (TSKUIDStruct)formulaOwnerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setFormulaOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENamedReferenceManager setFormulaOwnerUID:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENamedReferenceManager.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 388, 0, "Invalid formulaOwnerUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  self->_ownerUID = *d;
  lower = self->_ownerUID._lower;
  upper = self->_ownerUID._upper;
  trackedRefsStore = self->_trackedRefsStore;

  objc_msgSend_setOwnerUID_(trackedRefsStore, a2, lower, upper, v4);
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  v9 = engineCopy;
  if (engineCopy)
  {
    objc_msgSend_corruptCellRefs(engineCopy, v5, v6, v7, v8);
  }

  else
  {
    v57 = 0;
    memset(v56, 0, sizeof(v56));
  }

  if (!sub_2212E0280(v56))
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x5812000000;
    v51 = sub_2211D61E4;
    v52 = sub_2211D61F0;
    v53 = &unk_22188E88F;
    memset(v54, 0, sizeof(v54));
    v55 = 1065353216;
    v40 = 0;
    v41 = &v40;
    v42 = 0x5812000000;
    v43 = sub_2211D61F8;
    v44 = sub_2211D6204;
    v45 = &unk_22188E88F;
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = sub_2211D620C;
    v35 = &unk_278460F30;
    v10 = v9;
    v36 = v10;
    selfCopy = self;
    v38 = &v48;
    v39 = &v40;
    sub_2212DFEC0(v56, &v32);
    v18 = objc_msgSend_namedReferenceManager(v10, v11, v12, v13, v14, v32, v33, v34, v35);
    for (i = v41[8]; i; i = *i)
    {
      objc_msgSend_endTrackingNamesInTable_(v18, v15, (i + 2), v16, v17);
      v23 = objc_msgSend_tableResolverForTableUID_(v10, v20, (i + 2), v21, v22);
      v28 = v23;
      if (v23 && objc_msgSend_resolverIsATable(v23, v24, v25, v26, v27))
      {
        objc_msgSend_beginTrackingNamesInTable_(v18, v29, (i + 2), v30, v31);
      }
    }

    objc_msgSend_resetCorruptCellRefs_(v10, v15, (v49 + 6), v16, v17);

    _Block_object_dispose(&v40, 8);
    sub_2210BDEC0(v46);
    _Block_object_dispose(&v48, 8);
    sub_221122744(v54);
  }

  sub_221122744(v56);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end