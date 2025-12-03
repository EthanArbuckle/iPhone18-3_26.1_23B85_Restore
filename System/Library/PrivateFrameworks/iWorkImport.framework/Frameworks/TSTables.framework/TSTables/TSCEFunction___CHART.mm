@interface TSCEFunction___CHART
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction___CHART

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  if (*(arguments + 1) == *arguments)
  {
    v7 = objc_msgSend_nilValue(TSCENilValue, a2, context, spec, arguments);
    goto LABEL_9;
  }

  v7 = **arguments;
  if (!objc_msgSend_isReferenceValue(v7, v8, v9, v10, v11))
  {
    v18 = 0;
    v20 = v7;
LABEL_7:
    v20 = v20;
    v7 = v20;
    goto LABEL_8;
  }

  v81 = 0;
  v13 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v12, context, spec, 0, &v81);
  v18 = v81;
  if (!v18)
  {
    v22 = objc_msgSend_tractRef(v13, v14, v15, v16, v17);
    *&v78 |= 3u;
    *&v23.f64[0] = 0x8000000080000000;
    *&v23.f64[1] = 0x8000000080000000;
    v78._singleRange = vnegq_f64(v23);
    v78._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v79 |= 3u;
    v79._singleRange = v78._singleRange;
    v79._multipleRanges = 0;
    TSUIndexSet::operator=();
    v24 = *(v22 + 64);
    *&v80[13] = *(v22 + 77);
    *v80 = v24;
    v29 = objc_msgSend_evalRef(v13, v25, v26, v27, v28);
    v34 = objc_msgSend_tableResolver(v29, v30, v31, v32, v33);

    if (v34 && (TSCETableResolverWrapper::isPivotTable(v34, v35, v36, v37, v38) & 1) == 0 && (objc_msgSend_evalRef(v13, v39, v40, v41, v42), v43 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend_tableRangeOfTable(v43, v44, v45, v46, v47), v67 = v49, v50 = v48, v43, TSCETableResolverWrapper::apparentTractRefForTractRef(v34, &v78, 0, v51, &v75), TSUIndexSet::operator=(), TSUIndexSet::operator=(), *v80 = *v77, *&v80[13] = *&v77[13], TSUIndexSet::~TSUIndexSet(&v76), TSUIndexSet::~TSUIndexSet(&v75), sub_2210EE8F8(&v78)))
    {
      v74 = 0;
      v53 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v52, context, spec, 0, 0, &v74);
      v54 = v74;
      v59 = v54 == 0;
      if (v54)
      {
        v60 = v54;
        v20 = v7;
        v18 = v60;
      }

      else
      {
        v73 = objc_msgSend_dimensions(v53, v55, v56, v57, v58);
        *&v75 = 0;
        v75._singleRange._begin = &v75;
        v75._singleRange._end = 0x4812000000;
        v75._multipleRanges = sub_2213EC198;
        *&v76 = sub_2213EC1BC;
        v76._singleRange._begin = &unk_22188E88F;
        v76._multipleRanges = 0;
        *v77 = 0;
        v76._singleRange._end = 0;
        sub_2213EC640(&v68, &v78);
        v71 = v50;
        v72 = v67;
        v70 = v34;
        TSUIndexSet::enumerateRangesUsingBlock();
        v61 = [TSCEDenseGrid alloc];
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v61, v62, v75._singleRange._begin + 48, 0, 0, &v73);
        v20 = objc_msgSend_gridValue_(TSCEGridValue, v64, isFlattened_dimensions, v65, v66);

        TSUIndexSet::~TSUIndexSet(&v69);
        TSUIndexSet::~TSUIndexSet(&v68);
        _Block_object_dispose(&v75, 8);
        p_end = &v76._singleRange._end;
        sub_22107C2C0(&p_end);
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v59 = 1;
      v20 = v7;
    }

    TSUIndexSet::~TSUIndexSet(&v79);
    TSUIndexSet::~TSUIndexSet(&v78);

    if (!v59)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(context, v14, v18, v16, v17);

  v20 = v7;
  v7 = v19;
LABEL_8:

LABEL_9:

  return v7;
}

@end