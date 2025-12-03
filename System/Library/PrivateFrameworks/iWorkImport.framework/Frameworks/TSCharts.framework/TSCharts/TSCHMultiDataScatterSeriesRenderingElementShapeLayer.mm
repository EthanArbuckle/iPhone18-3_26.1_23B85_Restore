@interface TSCHMultiDataScatterSeriesRenderingElementShapeLayer
- (id)currentValueLayer;
- (void)p_addAnimationsForUpdatingImage:(CGImage *)image frame:(CGRect)frame toAnimationInfo:(id)info;
- (void)updateElementFrame:(CGRect)frame forSeries:(id)series addingAnimationsToAnimationInfo:(id)info;
- (void)updateElementFrameToNullForSeries:(id)series addingAnimationsToAnimationInfo:(id)info;
@end

@implementation TSCHMultiDataScatterSeriesRenderingElementShapeLayer

- (void)p_addAnimationsForUpdatingImage:(CGImage *)image frame:(CGRect)frame toAnimationInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v119[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!infoCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer p_addAnimationsForUpdatingImage:frame:toAnimationInfo:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 47, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_chartRep(self, v11, v13, v14, v15);
  v36 = objc_msgSend_needsAnimationForAnimationInfo_(v31, v32, v33, v34, v35, infoCopy);

  if (v36)
  {
    v115 = width;
    v116 = x;
    v114 = y;
    v117 = height;
    TSUCenterOfRect();
    v38 = v37;
    v40 = v39;
    imageCopy = image;
    if (objc_msgSend_shouldAnimate(infoCopy, v42, v43, v44, v45))
    {
      v51 = objc_msgSend_currentValueLayer(self, v46, v47, v48, v49);
      if (!v51)
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v52, v53, v54, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer p_addAnimationsForUpdatingImage:frame:toAnimationInfo:]");
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 59, 0, "invalid nil value for '%{public}s'", "currentValueLayer");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      }

      objc_msgSend_position(v51, v50, v52, v53, v54);
      v71 = v70;
      v73 = v72;
      objc_msgSend_bounds(v51, v74, v70, v72, v75);
      v77 = v76;
      v79 = v78;
      width = v80;
      height = v81;
      v83 = objc_msgSend_contents(v51, v82, v76, v78, v80);
    }

    else
    {
      v83 = imageCopy;
      v77 = v116;
      v79 = v114;
      v71 = v38;
      v73 = v40;
    }

    v84 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v46, v71, v73, v49);
    v119[0] = v84;
    v87 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v85, v38, v40, v86);
    v119[1] = v87;
    v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, v89, v90, v91, v119, 2);

    v94 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v93, v77, v79, width, height);
    v118[0] = v94;
    v96 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v95, v116, v114, v115, v117);
    v118[1] = v96;
    v101 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v97, v98, v99, v100, v118, 2);

    objc_msgSend_addAnimationForLayer_key_values_keyTimes_(infoCopy, v102, v103, v104, v105, self, @"position", v92, 0);
    objc_msgSend_addAnimationForLayer_key_values_keyTimes_(infoCopy, v106, v107, v108, v109, self, @"bounds", v101, 0);
    objc_msgSend_addImageContentsAnimationForLayer_fromImage_toImage_keyTimes_(infoCopy, v110, v111, v112, v113, self, v83, imageCopy, 0);
  }
}

- (void)updateElementFrameToNullForSeries:(id)series addingAnimationsToAnimationInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_contents(self, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_contents(self, v10, v11, v12, v13);
    objc_msgSend_frame(self, v15, v16, v17, v18);
    objc_msgSend_p_addAnimationsForUpdatingImage_frame_toAnimationInfo_(self, v19, v20, v21, v22, v14, infoCopy);
  }
}

- (void)updateElementFrame:(CGRect)frame forSeries:(id)series addingAnimationsToAnimationInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  seriesCopy = series;
  infoCopy = info;
  if (!infoCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer updateElementFrame:forSeries:addingAnimationsToAnimationInfo:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 92, 0, "invalid nil value for '%{public}s'", "animInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v148.origin.x = x;
  v148.origin.y = y;
  v148.size.width = width;
  v148.size.height = height;
  if (CGRectIsNull(v148))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer updateElementFrame:forSeries:addingAnimationsToAnimationInfo:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    v149.origin.x = x;
    v149.origin.y = y;
    v149.size.width = width;
    v149.size.height = height;
    v43 = NSStringFromCGRect(v149);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v37, v42, 93, 0, "invalid null frame %@", v43);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  objc_opt_class();
  v56 = objc_msgSend_delegate(self, v52, v53, v54, v55);
  v57 = TSUDynamicCast();

  if (!v57)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer updateElementFrame:forSeries:addingAnimationsToAnimationInfo:]");
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v70, v71, v72, v63, v68, 96, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }

  objc_msgSend_naturalBounds(v57, v58, v59, v60, v61);
  objc_msgSend_convertNaturalRectToRepElement_(v57, v77, v78, v79, v80);
  v82 = v81;
  v84 = v83;
  if ((objc_msgSend_hasCurrentRepElementIndex(v57, v85, v81, v83, v86) & 1) == 0)
  {
    v91 = MEMORY[0x277D81150];
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer updateElementFrame:forSeries:addingAnimationsToAnimationInfo:]");
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 99, 0, "updating element frame without current element index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
  }

  v106 = *(MEMORY[0x277CBF398] + 16);
  v146 = *MEMORY[0x277CBF398];
  v147 = v106;
  v107 = objc_msgSend_newChartImageForFrame_originOffset_returningAdjustedFrame_(v57, v87, x, y, width, &v146, height, v82 - x, v84 - y);
  objc_msgSend_p_addAnimationsForUpdatingImage_frame_toAnimationInfo_(self, v108, *&v146, *(&v146 + 1), *&v147, v107, infoCopy, *(&v147 + 1));
  objc_msgSend_setBounds_(self, v109, *&v146, *(&v146 + 1), *&v147, *(&v147 + 1));
  TSUCenterOfRect();
  objc_msgSend_setPosition_(self, v110, v111, v112, v113);
  if (!v107)
  {
    v118 = MEMORY[0x277D81150];
    v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, "[TSCHMultiDataScatterSeriesRenderingElementShapeLayer updateElementFrame:forSeries:addingAnimationsToAnimationInfo:]");
    v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v121, v122, v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataScatterChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v125, v126, v127, v128, v119, v124, 109, 0, "invalid nil value for '%{public}s'", "image");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v129, v130, v131, v132);
  }

  objc_msgSend_setContents_(self, v114, v115, v116, v117, v107);
  v137 = objc_msgSend_chartRep(self, v133, v134, v135, v136);
  objc_msgSend_contentsScale(v137, v138, v139, v140, v141);
  objc_msgSend_setContentsScale_(self, v142, v143, v144, v145);

  CGImageRelease(v107);
}

- (id)currentValueLayer
{
  selfCopy = self;
  v6 = objc_msgSend_presentationLayer(self, a2, v2, v3, v4);
  v7 = v6;
  if (v6)
  {
    selfCopy = v6;
  }

  v8 = selfCopy;

  return selfCopy;
}

@end