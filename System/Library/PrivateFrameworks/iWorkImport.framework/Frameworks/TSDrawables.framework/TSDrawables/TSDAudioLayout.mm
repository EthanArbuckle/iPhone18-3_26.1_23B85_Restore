@interface TSDAudioLayout
+ (CGSize)scaledAudioSize;
- (CGRect)alignmentFrame;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform;
- (TSDAudioLayout)initWithInfo:(id)info;
- (TSDMovieInfo)movieInfo;
- (id)layoutGeometryFromInfo;
- (id)visibleGeometries;
@end

@implementation TSDAudioLayout

- (TSDAudioLayout)initWithInfo:(id)info
{
  v11.receiver = self;
  v11.super_class = TSDAudioLayout;
  v3 = [(TSDMediaLayout *)&v11 initWithInfo:info];
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_movieInfo(v3, v4, v5);
    if (!v9)
    {

      v6 = 0;
    }

    objc_msgSend_invalidateFrame(v6, v7, v8);
  }

  return v6;
}

+ (CGSize)scaledAudioSize
{
  v2 = 60.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutGeometryFromInfo
{
  v3 = [TSDMutableLayoutGeometry alloc];
  v6 = objc_msgSend_info(self, v4, v5);
  v9 = objc_msgSend_geometry(v6, v7, v8);
  v11 = objc_msgSend_initWithInfoGeometry_(v3, v10, v9);

  v12 = objc_opt_class();
  objc_msgSend_scaledAudioSize(v12, v13, v14);
  objc_msgSend_setSize_(v11, v15, v16);
  v19 = objc_msgSend_copy(v11, v17, v18);

  return v19;
}

- (id)visibleGeometries
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_geometry(self, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend_size(v7, v8, v9);
  v12 = objc_msgSend_layoutController(self, v10, v11);
  v15 = objc_msgSend_canvas(v12, v13, v14);
  objc_msgSend_viewScale(v15, v16, v17);
  TSUMultiplySizeScalar();
  objc_msgSend_setSize_(v7, v18, v19);

  v23[0] = v7;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v23, 1);

  return v21;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v21, 0, sizeof(v21));
  v5 = objc_msgSend_geometry(self, a2, root);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fullTransform(v5, v6, v7);
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  if (rootCopy)
  {
    v11 = objc_msgSend_parent(self, v9, v10);

    if (v11)
    {
      v14 = objc_msgSend_parent(self, v12, v13);
      v17 = v14;
      if (v14)
      {
        objc_msgSend_transformInRoot(v14, v15, v16);
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v18 = v21;
      CGAffineTransformConcat(&v20, &v18, &t2);
      v21 = v20;
    }
  }

  v20 = v21;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 1.0;
  v22.size.height = 1.0;
  return CGRectApplyAffineTransform(v22, &v20);
}

- (CGRect)alignmentFrame
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform
{
  v37.receiver = self;
  v37.super_class = TSDAudioLayout;
  v5 = *&transform->c;
  v36[0] = *&transform->a;
  v36[1] = v5;
  v36[2] = *&transform->tx;
  [(TSDStyledLayout *)&v37 frameForCullingWithBaseFrame:v36 additionalTransform:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_layoutController(self, v14, v15);
  v19 = objc_msgSend_canvas(v16, v17, v18);

  if (objc_msgSend_shouldRenderInvisibleContentForNonInteractiveCanvas(v19, v20, v21))
  {
    objc_msgSend_i_viewScaleForAudioObjectsInNonInteractiveCanvas(v19, v22, v23);
    objc_msgSend_frame(self, v24, v25);
    objc_msgSend_frame(self, v26, v27);
    TSUMultiplySizeScalar();
    TSURectWithOriginAndSize();
    v7 = v28;
    v9 = v29;
    v11 = v30;
    v13 = v31;
  }

  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

@end