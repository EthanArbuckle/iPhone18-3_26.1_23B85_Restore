@interface TSWPStorageIterator
- (TSWPStorageIterator)initWithStorage:(id)a3;
- (id)description;
- (id)nextEvent;
- (void)addAttributeRangeProvider:(unint64_t)a3;
- (void)addLocationProvider:(id)a3;
- (void)addRangeProvider:(id)a3;
- (void)p_emitEventForMarkerCharacter:(unsigned __int16)a3 atIndex:(unint64_t)a4;
- (void)p_emitEventWithType:(int)a3 provider:(id)a4 range:(_NSRange)a5 object:(id)a6;
- (void)p_emitPendingCharactersAndEvent:(id)a3;
- (void)p_forceRangeEndForProvider:(id)a3 providerIndex:(unint64_t)a4 atCharIndex:(unint64_t)a5;
@end

@implementation TSWPStorageIterator

- (TSWPStorageIterator)initWithStorage:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TSWPStorageIterator;
  v6 = [(TSWPStorageIterator *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    v8 = objc_opt_new();
    pendingEvents = v7->_pendingEvents;
    v7->_pendingEvents = v8;

    v10 = objc_opt_new();
    rangeProviders = v7->_rangeProviders;
    v7->_rangeProviders = v10;

    v12 = objc_opt_new();
    locationProviders = v7->_locationProviders;
    v7->_locationProviders = v12;

    v7->_sendEventsForNilObjects = 0;
    v7->_charIndex = 0;
    v7->_startCharIndex = 0;
  }

  return v7;
}

- (void)addRangeProvider:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_rangeProviders(self, v4, v5);
  objc_msgSend_addObject_(v6, v7, v8);
}

- (void)addAttributeRangeProvider:(unint64_t)a3
{
  v5 = [TSWPStorageAttributeRangeProvider alloc];
  v11 = objc_msgSend_storage(self, v6, v7);
  v9 = objc_msgSend_initWithStorage_kind_(v5, v8, v11, a3);
  objc_msgSend_addRangeProvider_(self, v10, v9);
}

- (void)addLocationProvider:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_locationProviders(self, v4, v5);
  objc_msgSend_addObject_(v6, v7, v8);
}

- (void)p_emitPendingCharactersAndEvent:(id)a3
{
  v45 = a3;
  v6 = objc_msgSend_storage(self, v4, v5);
  objc_msgSend_setStorage_(v45, v7, v6);

  v10 = objc_msgSend_charIndex(self, v8, v9);
  if (v10 >= objc_msgSend_startCharIndex(self, v11, v12))
  {
    started = objc_msgSend_startCharIndex(self, v13, v14);
    v18 = objc_msgSend_charIndex(self, v16, v17);
    v23 = v18 - objc_msgSend_startCharIndex(self, v19, v20);
    if (objc_msgSend_isRangeEnd(v45, v21, v22))
    {
      v24 = objc_msgSend_storage(self, v13, v14);
      v27 = objc_msgSend_length(v24, v25, v26);

      if (v23 + started < v27)
      {
        ++v23;
      }
    }

    if (v23)
    {
      v28 = objc_msgSend_pendingEvents(self, v13, v14);
      v30 = objc_msgSend_characterEventWithRange_(TSWPStorageIterationEvent, v29, started, v23);
      objc_msgSend_addObject_(v28, v31, v30);

      v34 = objc_msgSend_storage(self, v32, v33);
      v37 = objc_msgSend_pendingEvents(self, v35, v36);
      v40 = objc_msgSend_lastObject(v37, v38, v39);
      objc_msgSend_setStorage_(v40, v41, v34);

      objc_msgSend_setStartCharIndex_(self, v42, v23 + started);
    }
  }

  v43 = objc_msgSend_pendingEvents(self, v13, v14);
  objc_msgSend_addObject_(v43, v44, v45);
}

- (void)p_emitEventWithType:(int)a3 provider:(id)a4 range:(_NSRange)a5 object:(id)a6
{
  v8 = objc_msgSend_eventWithType_providerIdentifier_range_object_(TSWPStorageIterationEvent, a2, *&a3, a4, a5.location, a5.length, a6);
  objc_msgSend_p_emitPendingCharactersAndEvent_(self, v7, v8);
}

- (void)p_emitEventForMarkerCharacter:(unsigned __int16)a3 atIndex:(unint64_t)a4
{
  v6 = objc_msgSend_eventWithType_providerIdentifier_range_object_(TSWPStorageIterationEvent, a2, 3, @"Marker", a4, 1, 0);
  objc_msgSend_p_emitPendingCharactersAndEvent_(self, v7, v6);

  objc_msgSend_setStartCharIndex_(self, v8, a4 + 1);
}

- (void)p_forceRangeEndForProvider:(id)a3 providerIndex:(unint64_t)a4 atCharIndex:(unint64_t)a5
{
  v60 = a3;
  if (objc_msgSend_charIndex(self, v8, v9) != a5 && objc_msgSend_charIndex(self, v10, v11) - 1 != a5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorageIterator p_forceRangeEndForProvider:providerIndex:atCharIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageIterator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 268, 0, "Trying to force a range to end out of sequence");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (a4)
  {
    v19 = -1;
    do
    {
      v20 = objc_msgSend_rangeProviders(self, v10, v11);
      v23 = objc_msgSend_rangeProviders(self, v21, v22);
      v26 = objc_msgSend_count(v23, v24, v25);
      v28 = objc_msgSend_objectAtIndexedSubscript_(v20, v27, v19 + v26);

      v31 = objc_msgSend_range(v28, v29, v30);
      if (a5 >= v31 && a5 - v31 < v32)
      {
        if ((objc_msgSend_sendEventsForNilObjects(self, v32, v33) & 1) != 0 || (objc_msgSend_object(v28, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
        {
          v37 = objc_msgSend_identifier(v28, v34, v35);
          v40 = objc_msgSend_range(v28, v38, v39);
          v43 = objc_msgSend_range(v28, v41, v42);
          v46 = objc_msgSend_object(v28, v44, v45);
          objc_msgSend_p_emitEventWithType_provider_range_object_(self, v47, 1, v37, v40, a5 + 1 - v43, v46);
        }

        objc_msgSend_setRangeStart_(v28, v34, a5 + 1);
      }

      --v19;
      --a4;
    }

    while (a4);
  }

  if ((objc_msgSend_sendEventsForNilObjects(self, v10, v11) & 1) != 0 || (objc_msgSend_object(v60, v48, v49), v50 = objc_claimAutoreleasedReturnValue(), v50, v50))
  {
    v51 = objc_msgSend_identifier(v60, v48, v49);
    v54 = objc_msgSend_range(v60, v52, v53);
    v56 = v55;
    v58 = objc_msgSend_object(v60, v55, v57);
    objc_msgSend_p_emitEventWithType_provider_range_object_(self, v59, 1, v51, v54, v56, v58);
  }
}

- (id)nextEvent
{
  while (1)
  {
    v4 = objc_msgSend_pendingEvents(self, a2, v2);
    if (objc_msgSend_count(v4, v5, v6))
    {
      break;
    }

    v9 = objc_msgSend_charIndex(self, v7, v8);
    v12 = objc_msgSend_storage(self, v10, v11);
    v15 = objc_msgSend_length(v12, v13, v14);

    if (v9 > v15)
    {
      goto LABEL_28;
    }

    for (i = 0; ; ++i)
    {
      v19 = objc_msgSend_locationProviders(self, v16, v17);
      v22 = objc_msgSend_count(v19, v20, v21);

      if (i >= v22)
      {
        break;
      }

      v25 = objc_msgSend_locationProviders(self, v23, v24);
      v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, i);

      while (1)
      {
        v30 = objc_msgSend_charIndex(self, v28, v29);
        if (v30 != objc_msgSend_range(v27, v31, v32))
        {
          break;
        }

        v35 = objc_msgSend_identifier(v27, v33, v34);
        v38 = objc_msgSend_charIndex(self, v36, v37);
        v41 = objc_msgSend_object(v27, v39, v40);
        objc_msgSend_p_emitEventWithType_provider_range_object_(self, v42, 2, v35, v38, 0, v41);

        objc_msgSend_nextRange(v27, v43, v44);
      }
    }

    for (j = 0; ; ++j)
    {
      v46 = objc_msgSend_rangeProviders(self, v23, v24);
      v49 = objc_msgSend_count(v46, v47, v48);

      if (j >= v49)
      {
        break;
      }

      v52 = objc_msgSend_rangeProviders(self, v50, v51);
      v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, j);

      v57 = objc_msgSend_charIndex(self, v55, v56);
      if (v57 == objc_msgSend_rangeStart(v54, v58, v59))
      {
        if ((objc_msgSend_sendEventsForNilObjects(self, v60, v61) & 1) != 0 || (objc_msgSend_object(v54, v62, v63), v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
        {
          v65 = objc_msgSend_identifier(v54, v62, v63);
          v68 = objc_msgSend_range(v54, v66, v67);
          v70 = v69;
          v72 = objc_msgSend_object(v54, v69, v71);
          objc_msgSend_p_emitEventWithType_provider_range_object_(self, v73, 0, v65, v68, v70, v72);
        }
      }
    }

    v74 = objc_msgSend_charIndex(self, v50, v51);
    v77 = objc_msgSend_storage(self, v75, v76);
    v80 = objc_msgSend_length(v77, v78, v79);

    if (v74 < v80)
    {
      v83 = objc_msgSend_storage(self, v81, v82);
      v86 = objc_msgSend_charIndex(self, v84, v85);
      v88 = objc_msgSend_characterAtIndex_(v83, v87, v86);

      v91 = objc_msgSend_markers(self, v89, v90);
      IsMember = objc_msgSend_characterIsMember_(v91, v92, v88);

      if (IsMember)
      {
        v94 = objc_msgSend_charIndex(self, v81, v82);
        objc_msgSend_p_emitEventForMarkerCharacter_atIndex_(self, v95, v88, v94);
      }
    }

    v96 = 0;
    for (k = -1; ; --k)
    {
      v98 = objc_msgSend_rangeProviders(self, v81, v82);
      v101 = objc_msgSend_count(v98, v99, v100);

      if (v96 >= v101)
      {
        break;
      }

      v104 = objc_msgSend_rangeProviders(self, v102, v103);
      v107 = objc_msgSend_rangeProviders(self, v105, v106);
      v110 = objc_msgSend_count(v107, v108, v109);
      v112 = objc_msgSend_objectAtIndexedSubscript_(v104, v111, k + v110);

      v115 = objc_msgSend_charIndex(self, v113, v114);
      if (v115 == objc_msgSend_rangeStart(v112, v116, v117) && !objc_msgSend_rangeLength(v112, v118, v119) || (v120 = objc_msgSend_charIndex(self, v118, v119), v120 == objc_msgSend_rangeEnd(v112, v121, v122)))
      {
        v123 = objc_msgSend_charIndex(self, v118, v119);
        objc_msgSend_p_forceRangeEndForProvider_providerIndex_atCharIndex_(self, v124, v112, v96, v123);
        objc_msgSend_nextRange(v112, v125, v126);
      }

      ++v96;
    }

    v127 = objc_msgSend_charIndex(self, v102, v103);
    objc_msgSend_setCharIndex_(self, v128, v127 + 1);
  }

LABEL_28:
  v129 = objc_msgSend_pendingEvents(self, v16, v17);
  v132 = objc_msgSend_count(v129, v130, v131);

  if (v132)
  {
    v135 = objc_msgSend_pendingEvents(self, v133, v134);
    v132 = objc_msgSend_objectAtIndexedSubscript_(v135, v136, 0);

    v139 = objc_msgSend_pendingEvents(self, v137, v138);
    objc_msgSend_removeObjectAtIndex_(v139, v140, 0);
  }

  v141 = objc_msgSend_type(v132, v133, v134) == 3;
  objc_msgSend_setLastEventWasMarker_(self, v142, v141);

  return v132;
}

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_(v3, v5, self, v4);
  v9 = objc_msgSend_charIndex(self, v7, v8);
  objc_msgSend_addField_format_(v6, v10, @"_charIndex", @"%zd", v9);
  started = objc_msgSend_startCharIndex(self, v11, v12);
  objc_msgSend_addField_format_(v6, v14, @"_startCharIndex", @"%zd", started);
  for (i = 0; ; ++i)
  {
    v18 = objc_msgSend_rangeProviders(self, v15, v16);
    v21 = objc_msgSend_count(v18, v19, v20);

    if (i >= v21)
    {
      break;
    }

    v24 = objc_msgSend_rangeProviders(self, v22, v23);
    v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, i);

    v29 = objc_msgSend_identifier(v26, v27, v28);
    v32 = objc_msgSend_range(v26, v30, v31);
    v35 = objc_msgSend_range(v26, v33, v34);
    v37 = v36;
    v39 = objc_msgSend_object(v26, v36, v38);
    v40 = TSUObjectReferenceDescription();
    objc_msgSend_addField_format_(v6, v41, v29, @"[%zd, %zd] %@", v32, &v37[v35 - 1], v40);
  }

  v42 = objc_msgSend_descriptionString(v6, v22, v23);

  return v42;
}

@end