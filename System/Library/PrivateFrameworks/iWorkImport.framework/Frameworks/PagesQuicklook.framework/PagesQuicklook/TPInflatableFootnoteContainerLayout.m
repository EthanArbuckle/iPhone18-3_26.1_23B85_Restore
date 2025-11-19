@interface TPInflatableFootnoteContainerLayout
- (id)computeLayoutGeometry;
- (void)validate;
@end

@implementation TPInflatableFootnoteContainerLayout

- (void)validate
{
  if (!self->_inflated)
  {
    self->_inflated = 1;
    v7 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
    objc_msgSend_inflateFootnotesInFootnoteContainer_(v7, v8, v9, v10, v11, v12, self);
  }

  v13.receiver = self;
  v13.super_class = TPInflatableFootnoteContainerLayout;
  [(TPFootnoteContainerLayout *)&v13 validate];
}

- (id)computeLayoutGeometry
{
  v42.receiver = self;
  v42.super_class = TPInflatableFootnoteContainerLayout;
  v3 = [(TPFootnoteContainerLayout *)&v42 computeLayoutGeometry];
  v10 = objc_msgSend_pageLayout(self, v4, v5, v6, v7, v8);
  if (v10)
  {
    objc_msgSend_frame(v3, v9, v11, v12, v13, v14);
    v16 = v15;
    v18 = v17;
    v20 = v19.n128_f64[0];
    v22 = v21.n128_f64[0];
    v23.n128_u64[0] = v19.n128_u64[0];
    v24.n128_u64[0] = v21.n128_u64[0];
    objc_msgSend_footnoteContainerFrameWithSize_(v10, v25, v23, v24, v19, v21);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v44.origin.x = v16;
    v44.origin.y = v18;
    v44.size.width = v20;
    v44.size.height = v22;
    v45.origin.x = v27;
    v45.origin.y = v29;
    v45.size.width = v31;
    v45.size.height = v33;
    if (!CGRectEqualToRect(v44, v45))
    {
      v34 = objc_alloc(MEMORY[0x277D80300]);
      v35.n128_f64[0] = v27;
      v36.n128_f64[0] = v29;
      v37.n128_f64[0] = v31;
      v38.n128_f64[0] = v33;
      v40 = objc_msgSend_initWithFrame_(v34, v39, v35, v36, v37, v38);

      v3 = v40;
    }
  }

  return v3;
}

@end