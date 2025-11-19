@interface TSCHChartReferenceLineLabelsLayoutItem
- (CGRect)calcDrawingRect;
- (CGRect)p_drawingRectForModel:(id)a3;
- (CGSize)calcMinSize;
- (TSCHChartReferenceLineLabelsLayoutItem)initWithParent:(id)a3 axisID:(id)a4;
- (id)p_areaLayoutItem;
- (id)subselectionKnobPositionsForSelection:(id)a3;
- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4;
@end

@implementation TSCHChartReferenceLineLabelsLayoutItem

- (TSCHChartReferenceLineLabelsLayoutItem)initWithParent:(id)a3 axisID:(id)a4
{
  v7 = a4;
  v29.receiver = self;
  v29.super_class = TSCHChartReferenceLineLabelsLayoutItem;
  v9 = [(TSCHChartLayoutItem *)&v29 initWithParent:a3];
  if (v9)
  {
    if (!a3)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartReferenceLineLabelsLayoutItem initWithParent:axisID:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartReferenceLineLabelsLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 39, 0, "invalid nil value for '%{public}s'", "parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    objc_storeStrong(&v9->_axisID, a4);
  }

  return v9;
}

- (CGSize)calcMinSize
{
  v125 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v119 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v12 = objc_msgSend_model(self, v8, v9, v10, v11);
  v17 = objc_msgSend_axisForID_(v12, v13, v14, v15, v16, self->_axisID);
  if (objc_msgSend_supportsReferenceLines(v17, v18, v19, v20, v21))
  {
    v117 = v12;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v25 = objc_msgSend_referenceLines(v17, v22, 0.0, v23, v24);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v120, v124, 16);
    if (v30)
    {
      v35 = v30;
      v36 = *v121;
      v37 = v7;
      v38 = v6;
      v118 = v25;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v121 != v36)
          {
            objc_enumerationMutation(v25);
          }

          v40 = *(*(&v120 + 1) + 8 * i);
          if (objc_msgSend_intValueForProperty_defaultValue_(v40, v31, v32, v33, v34, 1223, 0))
          {
            v41 = objc_msgSend_objectValueForProperty_(v40, v31, v32, v33, v34, 1219);
            v50 = 0;
            if (objc_msgSend_intValueForProperty_defaultValue_(v40, v42, v43, v44, v45, 1222, 0))
            {
              v51 = v41 == 0;
            }

            else
            {
              v51 = 1;
            }

            if (!v51)
            {
              v50 = objc_msgSend_length(v41, v46, v47, v48, v49) != 0;
            }

            v52 = objc_msgSend_intValueForProperty_defaultValue_(v40, v46, v47, v48, v49, 1224, 0);
            v53 = v52;
            if (v50 || v52)
            {
              v55 = sub_276297280(v40);
              v57 = (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
              v58 = v55 < 0.0 && ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
              if (v55 >= 0.0)
              {
                v57 = 0;
              }

              v59 = (*&v55 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v57;
              if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
              {
                v59 = 1;
              }

              if (((v59 | v58) & 1) == 0)
              {
                v60 = 1.0;
                if (v55 <= 1.0)
                {
                  v61 = v7;
                  v62 = v6;
                  if (v53)
                  {
                    objc_msgSend_referenceLineAxisValue(v40, v54, v55, 1.0, v56);
                    v67 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v63, v64, v65, v66);
                    objc_msgSend_formattedStringForAxisValue_(v17, v68, v69, v70, v71, v67);
                    v73 = v72 = v17;

                    v78 = objc_msgSend_intValueForProperty_defaultValue_(v40, v74, v75, v76, v77, 1227, 0);
                    v83 = objc_msgSend_paragraphStyleAtIndex_(v119, v79, v80, v81, v82, v78);
                    v88 = objc_msgSend_sharedText(TSCHText, v84, v85, v86, v87);
                    objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v88, v89, v90, v91, v92, v73, v83, 0);
                    v62 = v93;
                    v61 = v94;

                    v17 = v72;
                    v25 = v118;
                  }

                  v95 = v7;
                  v96 = v6;
                  if (v50)
                  {
                    v97 = objc_msgSend_intValueForProperty_defaultValue_(v40, v54, v55, v60, v56, 1220, 0);
                    v102 = objc_msgSend_paragraphStyleAtIndex_(v119, v98, v99, v100, v101, v97);
                    v107 = objc_msgSend_sharedText(TSCHText, v103, v104, v105, v106);
                    objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v107, v108, v109, v110, v111, v41, v102, 0);
                    v96 = v112;
                    v95 = v113;
                  }

                  if (v62 >= v96)
                  {
                    v114 = v62;
                  }

                  else
                  {
                    v114 = v96;
                  }

                  if (v38 < v114)
                  {
                    v38 = v114;
                  }

                  if (v37 < v61 + v95)
                  {
                    v37 = v61 + v95;
                  }
                }
              }
            }
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v31, v32, v33, v34, &v120, v124, 16);
      }

      while (v35);
    }

    else
    {
      v37 = v7;
      v38 = v6;
    }

    v6 = v38;
    v7 = v37;
    v12 = v117;
  }

  v115 = v6;
  v116 = v7;
  result.height = v116;
  result.width = v115;
  return result;
}

- (CGRect)calcDrawingRect
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v28 = 0;
  v29 = &v28;
  v30 = 0x4010000000;
  v31 = &unk_27657B92B;
  v7 = *(MEMORY[0x277CBF398] + 16);
  v32 = *MEMORY[0x277CBF398];
  v33 = v7;
  if (objc_msgSend_isMultiData(v6, v8, *&v32, *&v7, v9))
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2761EF584;
    v27[3] = &unk_27A6B6A98;
    v27[4] = self;
    v27[5] = &v28;
    objc_msgSend_enumerateMultiDataModelsUsingBlock_(v6, v10, COERCE_DOUBLE(3221225472), v12, v13, v27);
    v14 = v29[4];
    v15 = v29[5];
    v16 = v29[6];
    v17 = v29[7];
  }

  else
  {
    objc_msgSend_p_drawingRectForModel_(self, v10, v11, v12, v13, v6);
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v22 = v29;
    v29[4] = v18;
    v22[5] = v19;
    v22[6] = v20;
    v22[7] = v21;
  }

  _Block_object_dispose(&v28, 8);

  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)p_drawingRectForModel:(id)a3
{
  v4 = a3;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  x = v9;
  y = v11;
  width = v13;
  height = v15;
  if (objc_msgSend_numberOfSeries(v4, v17, v9, v11, v13))
  {
    v22 = objc_msgSend_seriesAtIndex_(v4, v18, v19, v20, v21, 0);
    v27 = objc_msgSend_seriesType(v22, v23, v24, v25, v26);
  }

  else
  {
    v22 = objc_msgSend_chartInfo(self, v18, v19, v20, v21);
    v32 = objc_msgSend_chartType(v22, v28, v29, v30, v31);
    v27 = objc_msgSend_defaultSeriesType_(v32, v33, v34, v35, v36, 0);
  }

  v41 = objc_msgSend_elementBuilder(v27, v37, v38, v39, v40);
  v69 = 0;
  v70 = 0;
  v45 = objc_msgSend_countOfReferenceLineLabelsForAxisID_model_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v41, v42, 0.0, v43, v44, self->_axisID, v4, self, &v70, 0, &v69, 0, 0, 0, 0, 0, 0);
  if (v45)
  {
    v46 = v45;
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *&v69[v47];
      v50 = *&v69[v47 + 8];
      v51 = *&v69[v47 + 16];
      v52 = *&v69[v47 + 24];
      v71.origin.x = v49;
      v71.origin.y = v50;
      v71.size.width = v51;
      v71.size.height = v52;
      if (!CGRectIsNull(v71))
      {
        v53 = *&v70[v48 + 16];
        v66 = *&v70[v48];
        v67 = v53;
        v68 = *&v70[v48 + 32];
        *&v65.a = v66;
        *&v65.c = v53;
        *&v65.tx = v68;
        v54 = v49;
        *&v53 = v50;
        v55 = v51;
        v56 = v52;
        v75 = CGRectApplyAffineTransform(*(&v53 - 8), &v65);
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        v73 = CGRectUnion(v72, v75);
        x = v73.origin.x;
        y = v73.origin.y;
        width = v73.size.width;
        height = v73.size.height;
      }

      v48 += 48;
      v47 += 32;
      --v46;
    }

    while (v46);
  }

  if (v70)
  {
    free(v70);
  }

  if (v69)
  {
    free(v69);
  }

  TSUSubtractPoints();
  v58 = v57;
  v60 = v59;

  v61 = v58;
  v62 = v60;
  v63 = width;
  v64 = height;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v97[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v12 = objc_msgSend_model(self, v7, v9, v10, v11);
    if (objc_msgSend_numberOfSeries(v12, v13, v14, v15, v16))
    {
      v21 = objc_msgSend_seriesAtIndex_(v12, v17, v18, v19, v20, 0);
      v26 = objc_msgSend_seriesType(v21, v22, v23, v24, v25);
    }

    else
    {
      v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
      v31 = objc_msgSend_chartType(v21, v27, v28, v29, v30);
      v26 = objc_msgSend_defaultSeriesType_(v31, v32, v33, v34, v35, 0);
    }

    v90 = v26;
    v40 = objc_msgSend_elementBuilder(v26, v36, v37, v38, v39);
    v95 = 0;
    v96 = 0;
    v94 = 0;
    v93 = 0;
    axisID = self->_axisID;
    v92 = 0;
    v89 = v40;
    v46 = objc_msgSend_countOfReferenceLineLabelsForAxisID_model_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v40, v42, v43, v44, v45, axisID, v12, self, &v96, &v95, 0, 0, 0, &v94, &v92, 0, 0);
    v47 = v92;
    if (v46)
    {
      for (i = 0; i != v46; ++i)
      {
        v49 = (v95 + 16 * i);
        if (*v49 > 0.0 || v49[1] > 0.0)
        {
          TSURectWithSize();
          v50 = (v96 + 48 * i);
          v51 = *v50;
          v52 = v50[2];
          *&v91.c = v50[1];
          *&v91.tx = v52;
          *&v91.a = v51;
          v100 = CGRectApplyAffineTransform(v99, &v91);
          v53 = v100.origin.x;
          v54 = v100.origin.y;
          width = v100.size.width;
          height = v100.size.height;
          v57 = sub_276277000();
          v101.origin.x = sub_276276FD0(v53, v54, width, height, v57);
          v98.x = x;
          v98.y = y;
          if (CGRectContainsPoint(v101, v98))
          {
            objc_opt_class();
            v62 = objc_msgSend_objectAtIndexedSubscript_(v47, v58, v59, v60, v61, i);
            v63 = TSUCheckedDynamicCast();
            v68 = objc_msgSend_styleSwapIndex(v63, v64, v65, v66, v67);

            if (*(v94 + i) == 2)
            {
              objc_msgSend_referenceLineValueLabelType(TSCHSelectionPathType, v69, v70, v71, v72);
            }

            else
            {
              objc_msgSend_referenceLineLabelType(TSCHSelectionPathType, v69, v70, v71, v72);
            }
            v73 = ;
            v78 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v74, v75, v76, v77, v68);
            v97[0] = v78;
            v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, v80, v81, v82, v97, 1);
            v88 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v84, v85, v86, v87, v73, v83);

            v8[2](v8, v88, &v93);
          }

          if (v93)
          {
            break;
          }
        }
      }
    }

    if (v96)
    {
      free(v96);
    }

    if (v95)
    {
      free(v95);
    }

    if (v94)
    {
      free(v94);
    }
  }
}

- (id)subselectionKnobPositionsForSelection:(id)a3
{
  v182 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v180.receiver = self;
  v180.super_class = TSCHChartReferenceLineLabelsLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v180 subselectionKnobPositionsForSelection:v4];
  v164 = v5;
  if (v5)
  {
    v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  }

  v166 = v10;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  obj = v4;
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v12, v13, v14, &v176, v181, 16);
  if (v170)
  {
    p_vtable = TSCHMultiDataChartRepAnimationDictionaryEntry.vtable;
    v169 = *v177;
    v165 = self;
    do
    {
      for (i = 0; i != v170; ++i)
      {
        if (*v177 != v169)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v176 + 1) + 8 * i);
        v22 = objc_msgSend_pathType(v21, v15, v16, v17, v18);
        v27 = objc_msgSend_referenceLineLabelType(p_vtable + 177, v23, v24, v25, v26);
        if (objc_msgSend_isEqual_(v22, v28, v29, v30, v31, v27))
        {
          v36 = 1;
        }

        else
        {
          v37 = objc_msgSend_pathType(v21, v32, v33, v34, v35);
          v42 = objc_msgSend_referenceLineValueLabelType(p_vtable + 177, v38, v39, v40, v41);
          isEqual = objc_msgSend_isEqual_(v37, v43, v44, v45, v46, v42);

          if (!isEqual)
          {
            goto LABEL_36;
          }

          v36 = 2;
        }

        objc_opt_class();
        v52 = objc_msgSend_argumentAtIndex_(v21, v48, v49, v50, v51, 0);
        v53 = TSUCheckedDynamicCast();
        v58 = objc_msgSend_unsignedIntegerValue(v53, v54, v55, v56, v57);

        v22 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v59, v60, v61, v62, v58);
        if (!objc_msgSend_isEqual_(v22, v63, v64, v65, v66, self->_axisID))
        {
          goto LABEL_37;
        }

        v71 = objc_msgSend_model(self, v67, v68, v69, v70);
        v27 = objc_msgSend_referenceLineForStyleSwapIndex_(v71, v72, v73, v74, v75, v58);

        if (!v27)
        {
          v80 = MEMORY[0x277D81150];
          v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "[TSCHChartReferenceLineLabelsLayoutItem subselectionKnobPositionsForSelection:]");
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartReferenceLineLabelsLayoutItem.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v88, v89, v90, v81, v86, 242, 0, "invalid nil value for '%{public}s'", "refLine");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
        }

        v95 = objc_msgSend_model(self, v76, v77, v78, v79);
        if (objc_msgSend_numberOfSeries(v95, v96, v97, v98, v99))
        {
          v104 = objc_msgSend_seriesAtIndex_(v95, v100, v101, v102, v103, 0);
          v109 = objc_msgSend_seriesType(v104, v105, v106, v107, v108);
        }

        else
        {
          v104 = objc_msgSend_chartInfo(self, v100, v101, v102, v103);
          v114 = objc_msgSend_chartType(v104, v110, v111, v112, v113);
          v109 = objc_msgSend_defaultSeriesType_(v114, v115, v116, v117, v118, 0);
        }

        v168 = v109;
        v123 = objc_msgSend_elementBuilder(v109, v119, v120, v121, v122);
        v174 = 0;
        v175 = 0;
        v172 = 0;
        v173 = 0;
        LOBYTE(v163) = 0;
        v128 = objc_msgSend_countOfReferenceLineLabelsForReferenceLine_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v123, v124, v125, v126, v127, v27, self, &v175, &v174, &v173, 0, 0, &v172, v163, 0);
        if (v128)
        {
          v130 = 0;
          v131 = 0;
          v132 = 0;
          v133 = v172;
          while (1)
          {
            v134 = *v133++;
            if (v134 == v36)
            {
              break;
            }

            v132 += 32;
            v131 += 16;
            v130 += 48;
            if (!--v128)
            {
              goto LABEL_27;
            }
          }

          objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v129, *(v173 + v132), *(v173 + v132 + 8), *(v173 + v132 + 16), *(v173 + v132 + 24), *(v174 + v131), *(v174 + v131 + 8));
          v136 = v135;
          v138 = v137;
          v140 = v139;
          v142 = v141;
          v144 = objc_msgSend_array(MEMORY[0x277CBEB18], v143, v135, v137, v139);
          v145 = *(v175 + v130);
          v146 = *(v175 + v130 + 32);
          v171[1] = *(v175 + v130 + 16);
          v171[2] = v146;
          v171[0] = v145;
          objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v147, v136, v138, v140, v144, v171, v142);
          v152 = objc_msgSend_objectForKey_(v166, v148, v149, v150, v151, v21);
          v157 = objc_msgSend_arrayByAddingObjectsFromArray_(v144, v153, v154, v155, v156, v152);

          if (v157)
          {
            objc_msgSend_setObject_forKey_(v166, v158, v159, v160, v161, v157, v21);
          }
        }

LABEL_27:
        if (v175)
        {
          free(v175);
        }

        if (v174)
        {
          free(v174);
        }

        if (v173)
        {
          free(v173);
        }

        if (v172)
        {
          free(v172);
        }

        self = v165;
        p_vtable = (TSCHMultiDataChartRepAnimationDictionaryEntry + 24);
LABEL_36:

LABEL_37:
      }

      v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, v16, v17, v18, &v176, v181, 16);
    }

    while (v170);
  }

  return v166;
}

- (id)p_areaLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

@end