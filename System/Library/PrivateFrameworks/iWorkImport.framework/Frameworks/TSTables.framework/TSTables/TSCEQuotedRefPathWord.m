@interface TSCEQuotedRefPathWord
- (TSCEQuotedRefPathWord)initWithRawString:(id)a3;
- (id)description;
- (id)quoteStringIfNeeded;
- (id)trimmedStringWithPreserveFlag:(BOOL)a3;
@end

@implementation TSCEQuotedRefPathWord

- (TSCEQuotedRefPathWord)initWithRawString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCEQuotedRefPathWord;
  v9 = [(TSCEQuotedRefPathWord *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    rawString = v9->_rawString;
    v9->_rawString = v10;

    *&v9->_wasQuoted = 0;
  }

  return v9;
}

- (id)trimmedStringWithPreserveFlag:(BOOL)a3
{
  v5 = a3;
  rawString = self->_rawString;
  v8 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], a2, a3, v3, v4);
  v12 = objc_msgSend_stringByTrimmingCharactersInSet_(rawString, v9, v8, v10, v11);

  if (objc_msgSend_length(v12, v13, v14, v15, v16) >= 2)
  {
    v21 = objc_msgSend_length(v12, v17, v18, v19, v20);
    v24 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v12, v22, 0, 1, v23);
    v26 = v25;
    v28 = objc_msgSend_substringWithRange_(v12, v25, v24, v25, v27);
    if (!objc_msgSend_isLeftParen_(TSCEQuotedRefPathSplitter, v29, v28, v30, v31))
    {
LABEL_5:

      goto LABEL_6;
    }

    v34 = objc_msgSend_substringWithRange_(v12, v32, v21 - 1, 1, v33);
    isRightParen = objc_msgSend_isRightParen_(TSCEQuotedRefPathSplitter, v35, v34, v36, v37);

    if (isRightParen)
    {
      v40 = objc_msgSend_length(v12, v17, v39, v19, v20);
      v41 = MEMORY[0x277CCACA8];
      v28 = objc_msgSend_substringWithRange_(v12, v42, v26, v40 + ~v26, v43);
      v47 = objc_msgSend_stringWithFormat_(v41, v44, @"(%@)", v45, v46, v28);

      v12 = v47;
      goto LABEL_5;
    }
  }

LABEL_6:
  if (self->_hasPreserveFlag && v5)
  {
    v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"$%@", v19, v20, v12);

    v12 = v48;
  }

  return v12;
}

- (id)quoteStringIfNeeded
{
  v3 = objc_opt_new();
  v8 = v3;
  if (self->_hasPreserveFlag)
  {
    objc_msgSend_appendString_(v3, v4, @"$", v6, v7);
  }

  if (objc_msgSend_length(self->_rawString, v4, v5, v6, v7) && !objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(self->_rawString, v9, v10, v11, v12))
  {
    objc_msgSend_appendString_(v8, v9, self->_rawString, v11, v12);
  }

  else
  {
    v13 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(self->_rawString, v9, v10, v11, v12);
    objc_msgSend_appendString_(v8, v14, v13, v15, v16);
  }

  return v8;
}

- (id)description
{
  v4 = &stru_2834BADA0;
  if (self->_hasPreserveFlag)
  {
    v4 = @"$";
  }

  rawString = self->_rawString;
  if (self->_wasQuoted)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@'%@'", v2, v3, v4, rawString);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@%@", v2, v3, v4, rawString);
  }
  v6 = ;

  return v6;
}

@end