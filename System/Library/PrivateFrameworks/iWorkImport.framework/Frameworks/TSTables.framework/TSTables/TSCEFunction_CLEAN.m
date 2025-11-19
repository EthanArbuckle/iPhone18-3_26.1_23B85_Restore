@interface TSCEFunction_CLEAN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CLEAN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v9 = v7;
  v60 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v60);
    v10 = v60;
  }

  else
  {
    v10 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  v59 = v10;
  v11 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v8, a3, a4, 0, &v59);
  v12 = v59;

  if (v12)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v13, a0123456789Abcd, 11452, v15);
    v20 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCAB50], v18, 19969, 20900, v19);
    objc_msgSend_addCharactersInString_(v20, v21, v17, v22, v23);
    objc_msgSend_addCharactersInRange_(v20, v24, 44032, 11172, v25);
    v29 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v26, v11, v27, v28);
    objc_msgSend_setCharactersToBeSkipped_(v29, v30, 0, v31, v32);
    v37 = 0;
    v57 = 0;
    v58[0] = 0;
    *(v58 + 7) = 0;
    while ((objc_msgSend_isAtEnd(v29, v33, v34, v35, v36) & 1) == 0)
    {
      if (objc_msgSend_scanCharactersFromSet_intoString_(v29, v38, v20, 0, v41))
      {
        v46 = objc_msgSend_scanLocation(v29, v42, v43, v44, v45);
        v56[0] = v37;
        v56[1] = v46 - v37;
        sub_2210780F0(&v61, v56, v47, v48, v49, v55);
        sub_221077424(&v57, v55, a3);
      }

      objc_msgSend_scanUpToCharactersFromSet_intoString_(v29, v42, v20, 0, v45);
      v37 = objc_msgSend_scanLocation(v29, v50, v51, v52, v53);
    }

    v16 = sub_2210789F4(&v57, v38, v39, v40, v41);
  }

  return v16;
}

@end