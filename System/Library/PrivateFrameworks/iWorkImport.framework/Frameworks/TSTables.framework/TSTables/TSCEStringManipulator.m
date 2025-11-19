@interface TSCEStringManipulator
- (TSCEStringManipulator)init;
@end

@implementation TSCEStringManipulator

- (TSCEStringManipulator)init
{
  v138.receiver = self;
  v138.super_class = TSCEStringManipulator;
  v2 = [(TSCEStringManipulator *)&v138 init];
  v3 = v2;
  if (v2)
  {
    straightQuote = v2->_straightQuote;
    v2->_straightQuote = @"'";

    straightQuoteEscaped = v3->_straightQuoteEscaped;
    v3->_straightQuoteEscaped = @"''";

    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithFormat_(v6, v7, @"'%C", v8, v9, 65287);
    fullwidthApostropheEscaped = v3->_fullwidthApostropheEscaped;
    v3->_fullwidthApostropheEscaped = v10;

    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_msgSend_initWithFormat_(v12, v13, @"%C", v14, v15, 8217);
    rightSingleQuotationMark = v3->_rightSingleQuotationMark;
    v3->_rightSingleQuotationMark = v16;

    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_initWithFormat_(v18, v19, @"'%C", v20, v21, 8217);
    rightSingleQuotationMarkEscaped = v3->_rightSingleQuotationMarkEscaped;
    v3->_rightSingleQuotationMarkEscaped = v22;

    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_initWithFormat_(v24, v25, @"%C", v26, v27, 8216);
    leftSingleQuotationMark = v3->_leftSingleQuotationMark;
    v3->_leftSingleQuotationMark = v28;

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = objc_msgSend_initWithFormat_(v30, v31, @"'%C", v32, v33, 8216);
    leftSingleQuotationMarkEscaped = v3->_leftSingleQuotationMarkEscaped;
    v3->_leftSingleQuotationMarkEscaped = v34;

    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v40 = objc_msgSend_initWithFormat_(v36, v37, @"%C", v38, v39, 65287);
    fullwidthApostrophe = v3->_fullwidthApostrophe;
    v3->_fullwidthApostrophe = v40;

    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"%C%C%C%%C", v43, v44, 0xFFFFLL, 65520, 65520);
    v46 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = objc_msgSend_initWithFormat_(v46, v47, v45, v48, v49, 65532);
    temporaryStraightQuoteString = v3->_temporaryStraightQuoteString;
    v3->_temporaryStraightQuoteString = v50;

    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    v56 = objc_msgSend_initWithFormat_(v52, v53, v45, v54, v55, 65533);
    temporaryFullwidthApostropheString = v3->_temporaryFullwidthApostropheString;
    v3->_temporaryFullwidthApostropheString = v56;

    v58 = objc_alloc(MEMORY[0x277CCACA8]);
    v62 = objc_msgSend_initWithFormat_(v58, v59, v45, v60, v61, 65534);
    temporaryLeftSingleQuoteString = v3->_temporaryLeftSingleQuoteString;
    v3->_temporaryLeftSingleQuoteString = v62;

    v64 = objc_alloc(MEMORY[0x277CCACA8]);
    v68 = objc_msgSend_initWithFormat_(v64, v65, v45, v66, v67, 0xFFFFLL);
    temporaryRightSingleQuoteString = v3->_temporaryRightSingleQuoteString;
    v3->_temporaryRightSingleQuoteString = v68;

    v74 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v70, v71, v72, v73);
    singleQuoteCharacterSet = v3->_singleQuoteCharacterSet;
    v3->_singleQuoteCharacterSet = v74;

    v80 = objc_msgSend_tsce_periodCharacterSet(MEMORY[0x277CCA900], v76, v77, v78, v79);
    periodCharacterSet = v3->_periodCharacterSet;
    v3->_periodCharacterSet = v80;

    v86 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], v82, v83, v84, v85);
    colonCharacterSet = v3->_colonCharacterSet;
    v3->_colonCharacterSet = v86;

    v91 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v88, @" ", v89, v90);
    asciiSpaceCharacterSet = v3->_asciiSpaceCharacterSet;
    v3->_asciiSpaceCharacterSet = v91;

    v97 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v93, v94, v95, v96);
    intlWhitespaceCharacterSet = v3->_intlWhitespaceCharacterSet;
    v3->_intlWhitespaceCharacterSet = v97;

    v103 = objc_msgSend_tsce_characterSetRequiringSingleQuotes(MEMORY[0x277CCA900], v99, v100, v101, v102);
    requiringSingleQuotesCharacterSet = v3->_requiringSingleQuotesCharacterSet;
    v3->_requiringSingleQuotesCharacterSet = v103;

    v109 = objc_msgSend_mutableCopy(v3->_intlWhitespaceCharacterSet, v105, v106, v107, v108);
    objc_msgSend_formUnionWithCharacterSet_(v109, v110, v3->_singleQuoteCharacterSet, v111, v112);
    v117 = objc_msgSend_copy(v109, v113, v114, v115, v116);
    singleQuoteOrWhitespaceCharacterSet = v3->_singleQuoteOrWhitespaceCharacterSet;
    v3->_singleQuoteOrWhitespaceCharacterSet = v117;

    v122 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v119, @"%C%C%C%C%C%C%C%C%C%C", v120, v121, 34, 8220, 8221, 171, 187, 8222, 8223, 12317, 12318, 1524);
    v126 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v123, @"'%C%C%C%C%C%C%C", v124, v125, 65287, 8217, 8216, 8218, 8219, 8249, 8250);
    v130 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v127, v122, v128, v129);
    doubleCurlyQuoteCharacterSet = v3->_doubleCurlyQuoteCharacterSet;
    v3->_doubleCurlyQuoteCharacterSet = v130;

    v135 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v132, v126, v133, v134);
    singleCurlyQuoteCharacterSet = v3->_singleCurlyQuoteCharacterSet;
    v3->_singleCurlyQuoteCharacterSet = v135;
  }

  return v3;
}

@end