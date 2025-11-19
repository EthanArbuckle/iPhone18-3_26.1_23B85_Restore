@interface TPTextPageGenerator
- (BOOL)wantsPageInSectionHint:(id)a3 withState:(id)a4;
- (void)createOrUpdatePageHintInSectionHint:(id)a3 withState:(id)a4;
@end

@implementation TPTextPageGenerator

- (BOOL)wantsPageInSectionHint:(id)a3 withState:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_section(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_documentRoot(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_settings(v18, v19, v20, v21, v22, v23);
  hasBody = objc_msgSend_hasBody(v24, v25, v26, v27, v28, v29);

  if (!hasBody)
  {
    goto LABEL_19;
  }

  v36 = objc_msgSend_pageIndex(v6, v31, v32, v33, v34, v35);
  v37 = 1;
  if (objc_msgSend_hasPageHintOfKind_beforePageIndex_(v5, v38, v39, v40, v41, v42, 1, v36))
  {
    v48 = objc_msgSend_bodyCharIndex(v6, v43, v44, v45, v46, v47);
    v54 = objc_msgSend_sectionCharRange(v6, v49, v50, v51, v52, v53);
    if (v48 < &v55[v54])
    {
LABEL_17:
      v37 = 1;
      goto LABEL_20;
    }

    if (objc_msgSend_onLastSection(v6, v55, v56, v57, v58, v59))
    {
      if (!objc_msgSend_bodyLayoutState(v6, v60, v61, v62, v63, v64))
      {
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v69 = objc_msgSend_pageHints(v5, v65, 0, v66, v67, v68, 0);
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, v71, v72, v73, v74, &v102, v106, 16);
        if (v75)
        {
          v81 = v75;
          v82 = *v103;
LABEL_8:
          v83 = 0;
          while (1)
          {
            if (*v103 != v82)
            {
              objc_enumerationMutation(v69);
            }

            v84 = *(*(&v102 + 1) + 8 * v83);
            if (objc_msgSend_pageKind(v84, v76, v77, v78, v79, v80) == 5)
            {
              break;
            }

            if (objc_msgSend_pageKind(v84, v85, v86, v87, v88, v89) == 1 && objc_msgSend_lineCount(v84, v76, v77, v78, v79, v80))
            {

              v95 = objc_msgSend_pageIndex(v6, v90, v91, v92, v93, v94);
              if ((objc_msgSend_hasEndOfTextLayoutBeforePageIndex_(v5, v96, v97, v98, v99, v100, v95) & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_19;
            }

            if (v81 == ++v83)
            {
              v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v76, v77, v78, v79, v80, &v102, v106, 16);
              if (v81)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      goto LABEL_17;
    }

LABEL_19:
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (void)createOrUpdatePageHintInSectionHint:(id)a3 withState:(id)a4
{
  v5 = a3;
  v11 = objc_msgSend_pageIndex(a4, v6, v7, v8, v9, v10);
  v22 = objc_msgSend_pageHintForPageIndex_(v5, v12, v13, v14, v15, v16, v11);

  objc_msgSend_setPageKind_(v22, v17, v18, v19, v20, v21, 1);
}

@end