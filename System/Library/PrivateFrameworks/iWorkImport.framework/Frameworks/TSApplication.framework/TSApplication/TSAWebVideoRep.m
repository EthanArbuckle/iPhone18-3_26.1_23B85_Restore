@interface TSAWebVideoRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
- (TSAWebVideoInfo)webVideoInfo;
- (TSAWebVideoRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)hyperlinkRegions;
- (id)textureForDescription:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation TSAWebVideoRep

- (TSAWebVideoRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSAWebVideoRep;
  return [(TSDRep *)&v5 initWithLayout:a3 canvas:a4];
}

- (TSAWebVideoInfo)webVideoInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v41 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v5, v6, v7);
  v11 = objc_msgSend_webVideoInfo(self, v8, v9, v10);
  v15 = objc_msgSend_posterImageData(v11, v12, v13, v14);

  v17 = objc_msgSend_providerForData_shouldValidate_(v41, v16, v15, 1);
  objc_msgSend_naturalBounds(self, v18, v19, v20);
  v28 = v26;
  v29 = v27;
  v30 = v25;
  v31 = v24;
  if (v17)
  {
    v28 = v26;
    v29 = v27;
    v30 = v25;
    v31 = v24;
    if ((objc_msgSend_isError(v17, v21, v22, v23) & 1) == 0)
    {
      objc_msgSend_naturalSize(v17, v32, v33, v34);
      TSUFitOrFillSizeInRect();
      v31 = v35;
      v30 = v36;
      v28 = v37;
      v29 = v38;
    }
  }

  CGContextSaveGState(a3);
  CGContextClipToRectSafe();
  objc_msgSend_drawImageInContext_rect_(v17, v39, a3, v40, v31, v30, v28, v29);
  CGContextRestoreGState(a3);
  CGContextRestoreGState(a3);
}

- (id)textureForDescription:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TSAWebVideoRep;
  v5 = [(TSDRep *)&v18 textureForDescription:v4];
  objc_msgSend_setObjectType_(v5, v6, 9, v7);
  if ((objc_msgSend_shouldNotAddContainedReps(v4, v8, v9, v10) & 1) == 0)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2760B7B60;
    v17[3] = &unk_27A6B0148;
    v17[4] = self;
    v11 = MEMORY[0x277C95D60](v17);
    if (objc_msgSend_isMagicMove(v4, v12, v13, v14))
    {
      objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v15, v5, v4, v11);
    }

    else
    {
      objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v15, v5, v4, 0);
    }
  }

  return v5;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v10 = objc_msgSend_webVideoInfo(v6, v7, v8, v9);

  objc_opt_class();
  v11 = TSUDynamicCast();

  v15 = objc_msgSend_webVideoInfo(v11, v12, v13, v14);

  v19 = 0.0;
  if (v10)
  {
    v20 = v15 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = objc_msgSend_URL(v10, v16, v17, v18);
    v25 = objc_msgSend_URL(v15, v22, v23, v24);
    if (objc_msgSend_isEqual_(v21, v26, v25, v27))
    {
      v31 = objc_msgSend_posterImageData(v10, v28, v29, v30);
      v35 = objc_msgSend_posterImageData(v15, v32, v33, v34);
      isEqual = objc_msgSend_isEqual_(v31, v36, v35, v37);

      if (isEqual)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }
    }

    else
    {
    }
  }

  return v19;
}

- (id)hyperlinkRegions
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_webVideoInfo(self, a2, v2, v3);
  v9 = objc_msgSend_URL(v5, v6, v7, v8);

  v13 = objc_msgSend_layout(self, v10, v11, v12);
  v17 = objc_msgSend_geometry(v13, v14, v15, v16);
  objc_msgSend_size(v17, v18, v19, v20);

  v21 = MEMORY[0x277D81160];
  TSURectWithSize();
  v25 = objc_msgSend_bezierPathWithRect_(v21, v22, v23, v24);
  v27 = objc_msgSend_hyperlinkRegionWithURL_bezierPath_(MEMORY[0x277D80298], v26, v9, v25);
  v31[0] = v27;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v31, 1);

  return v29;
}

@end