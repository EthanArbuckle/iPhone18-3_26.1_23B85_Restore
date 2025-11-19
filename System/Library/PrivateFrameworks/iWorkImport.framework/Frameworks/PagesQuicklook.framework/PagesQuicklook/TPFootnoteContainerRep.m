@interface TPFootnoteContainerRep
- (BOOL)p_hasContent;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TPFootnoteContainerRep

- (void)drawInContext:(CGContext *)a3
{
  if (objc_msgSend_p_hasContent(self, a2, v3, v4, v5, v6))
  {
    DeviceGray = TSUCGColorCreateDeviceGray();
    CGContextSaveGState(a3);
    CGContextSetFillColorWithColor(a3, DeviceGray);
    v78 = objc_msgSend_layout(self, v10, v11, v12, v13, v14);
    objc_msgSend_footnoteSeparatorLineFrame(v78, v15, v16, v17, v18, v19);
    v21 = v20.n128_f64[0];
    v23 = v22.n128_f64[0];
    v25 = v24.n128_f64[0];
    v27 = v26.n128_f64[0];
    if (objc_msgSend_textLayoutShouldLayoutVertically_(v78, v28, v20, v22, v24, v26, 0))
    {
      v25 = 0.5;
    }

    else
    {
      v27 = 0.5;
    }

    objc_opt_class();
    v34 = objc_msgSend_childReps(self, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_firstObject(v34, v35, v36, v37, v38, v39);
    v41 = TSUDynamicCast();

    if (v41)
    {
      v47 = objc_msgSend_storage(v41, v42, v43, v44, v45, v46);
      v53 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(v47, v48, v49, v50, v51, v52, 0);

      if (v53 == 1)
      {
        objc_msgSend_naturalBounds(self, v54, v55, v56, v57, v58);
        v21 = v59 - v25 - v21;
      }
    }

    else
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "[TPFootnoteContainerRep drawInContext:]");
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v72, v61, v67, 61, 0, "invalid nil value for '%{public}s'", "firstFootnoteRep");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76, v77);
    }

    v80.origin.x = v21;
    v80.origin.y = v23;
    v80.size.width = v25;
    v80.size.height = v27;
    CGContextFillRect(a3, v80);
    CGContextRestoreGState(a3);
    CGColorRelease(DeviceGray);
  }
}

- (BOOL)p_hasContent
{
  v7 = objc_msgSend_layout(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_includeFootnoteSeparatorLine(v7, v8, v9, v10, v11, v12))
  {
    v18 = objc_msgSend_layout(self, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_isEmpty(v18, v19, v20, v21, v22, v23) ^ 1;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

@end