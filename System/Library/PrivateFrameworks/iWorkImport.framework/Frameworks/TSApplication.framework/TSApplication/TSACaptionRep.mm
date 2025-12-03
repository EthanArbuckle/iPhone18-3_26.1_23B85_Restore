@interface TSACaptionRep
- (id)textureForDescription:(id)description;
@end

@implementation TSACaptionRep

- (id)textureForDescription:(id)description
{
  v48 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = TSACaptionRep;
  v4 = [(TSDStyledRep *)&v46 textureForDescription:description];
  objc_opt_class();
  v8 = objc_msgSend_parentRep(self, v5, v6, v7);
  v12 = objc_msgSend_info(v8, v9, v10, v11);
  v13 = TSUCheckedDynamicCast();

  v17 = objc_msgSend_title(v13, v14, v15, v16);
  v21 = objc_msgSend_caption(v13, v18, v19, v20);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v41 = v4;
  v25 = objc_msgSend_allTextures(v4, v22, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v42, v47, 16);
  if (v27)
  {
    v31 = v27;
    v32 = *v43;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v25);
        }

        v34 = *(*(&v42 + 1) + 8 * i);
        v35 = objc_msgSend_info(self, v28, v29, v30);

        if (v35 == v17)
        {
          objc_msgSend_setTextureType_(v34, v36, 15, v38);
        }

        else
        {
          v39 = objc_msgSend_info(self, v36, v37, v38);

          if (v39 == v21)
          {
            objc_msgSend_setTextureType_(v34, v28, 16, v30);
          }
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v42, v47, 16);
    }

    while (v31);
  }

  return v41;
}

@end