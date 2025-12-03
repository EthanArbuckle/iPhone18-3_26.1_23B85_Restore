@interface TSAStyleMapper
- (id)stylesheetForNewRootStyleFromStyle:(id)style;
- (id)targetParentForStyle:(id)style;
@end

@implementation TSAStyleMapper

- (id)targetParentForStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v16 = objc_msgSend_targetStylesheet(self, v6, v7, v8);
    v20 = objc_msgSend_defaultColumnStyle(v16, v17, v18, v19);
LABEL_6:
    v21 = v20;

    goto LABEL_35;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v15 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v10, styleCopy, v12);
    if (v15)
    {
      goto LABEL_34;
    }

    v25 = objc_msgSend_targetStylesheet(self, v22, v23, v24);
    v21 = objc_msgSend_styleWithIdentifier_(v25, v26, *MEMORY[0x277D81058], v27);

    if (v21)
    {
      goto LABEL_35;
    }

    v31 = objc_msgSend_targetStylesheet(self, v28, v29, v30);
    v21 = objc_msgSend_styleWithIdentifier_(v31, v32, *MEMORY[0x277D81000], v33);

    goto LABEL_10;
  }

  if (sub_27608FBD0(styleCopy, v10, v11, v12))
  {
    v15 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v13, styleCopy, v14);
LABEL_34:
    v21 = v15;
    goto LABEL_35;
  }

  if (sub_27608FAF4(styleCopy))
  {
    v15 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v37, styleCopy, v38);
    if (v15)
    {
      goto LABEL_34;
    }

    goto LABEL_14;
  }

  if (!sub_27608F8C0(styleCopy))
  {
    v76.receiver = self;
    v76.super_class = TSAStyleMapper;
    v15 = [(TSSStyleMapper *)&v76 targetParentForStyle:styleCopy];
    goto LABEL_34;
  }

  if (sub_27608FA20(styleCopy))
  {
    v15 = objc_msgSend_targetParentByNameMatchForStyle_(self, v42, styleCopy, v43);
    if (v15)
    {
      goto LABEL_34;
    }
  }

  if (sub_27608FA80(styleCopy))
  {
    v15 = objc_msgSend_targetParentByContentTagMatchForStyle_(self, v44, styleCopy, v45);
    if (v15)
    {
      goto LABEL_34;
    }
  }

  v15 = objc_msgSend_targetParentByPropertyMapMatchForUnidentifiedStyle_(self, v44, styleCopy, v45);
  if (v15)
  {
    goto LABEL_34;
  }

  v15 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v46, styleCopy, v47);
  if (v15)
  {
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_isNamed(styleCopy, v48, v49, v50) & 1) != 0 || (objc_msgSend_isIdentified(styleCopy, v51, v52, v53) & 1) != 0 || (objc_msgSend_parent(styleCopy, v54, v55, v56), v57 = objc_claimAutoreleasedReturnValue(), v57, v57))
  {
    v21 = 0;
  }

  else
  {
    v72 = objc_msgSend_targetStylesheet(self, v58, v59, v60);
    v21 = objc_msgSend_defaultCharacterStyle(v72, v73, v74, v75);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isNamed(styleCopy, v61, v62, v63) & 1) == 0)
  {
    v67 = objc_msgSend_parent(styleCopy, v64, v65, v66);

    if (!v67)
    {
      v70 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v68, styleCopy, v69);

      v21 = v70;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_10:
    if (v21)
    {
      goto LABEL_35;
    }

LABEL_14:
    v16 = objc_msgSend_targetStylesheet(self, v34, v35, v36);
    v20 = objc_msgSend_defaultParagraphStyle(v16, v39, v40, v41);
    goto LABEL_6;
  }

LABEL_35:

  return v21;
}

- (id)stylesheetForNewRootStyleFromStyle:(id)style
{
  styleCopy = style;
  if (sub_27608FA20(styleCopy))
  {
    v8 = objc_msgSend_targetStylesheet(self, v5, v6, v7);
    v12 = objc_msgSend_rootAncestor(v8, v9, v10, v11);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSAStyleMapper;
    v12 = [(TSSStyleMapper *)&v14 stylesheetForNewRootStyleFromStyle:styleCopy];
  }

  return v12;
}

@end