@interface TSWPImageComposer
- (TSWPImageComposer)initWithBaseImage:(id)a3 screenScale:(double)a4;
- (id)overlayImage:(id)a3 usingFrame:(CGRect)a4;
@end

@implementation TSWPImageComposer

- (TSWPImageComposer)initWithBaseImage:(id)a3 screenScale:(double)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = TSWPImageComposer;
  v9 = [(TSWPImageComposer *)&v18 init];
  if (v9)
  {
    objc_msgSend_scale(v6, v7, v8);
    if (v12 != a4)
    {
      v13 = MEMORY[0x277D811F8];
      v14 = objc_msgSend_CGImageForContentsScale_(v6, v10, v11, a4);
      v16 = objc_msgSend_imageWithCGImage_(v13, v15, v14);

      v6 = v16;
    }

    objc_storeStrong(&v9->_baseImage, v6);
    objc_storeStrong(&v9->_compositedImage, v6);
    v9->_screenScale = a4;
  }

  return v9;
}

- (id)overlayImage:(id)a3 usingFrame:(CGRect)a4
{
  v5 = a3;
  if (TSURectIsFinite())
  {
    objc_msgSend_scale(v5, v6, v7);
    v9 = v8;
    objc_msgSend_screenScale(self, v10, v11);
    if (v9 != v14)
    {
      v15 = MEMORY[0x277D811F8];
      objc_msgSend_screenScale(self, v12, v13);
      v18 = objc_msgSend_CGImageForContentsScale_(v5, v16, v17);
      v20 = objc_msgSend_imageWithCGImage_(v15, v19, v18);

      v5 = v20;
    }

    v21 = objc_msgSend_compositedImage(self, v12, v13);
    objc_msgSend_size(v21, v22, v23);
    TSURectWithSize();

    v26 = objc_msgSend_compositedImage(self, v24, v25);
    objc_msgSend_scale(v26, v27, v28);
    TSUMultiplyRectScalar();
    v72 = v30;
    v73 = v29;
    v32 = v31;
    v34 = v33;

    v37 = objc_msgSend_compositedImage(self, v35, v36);
    objc_msgSend_scale(v37, v38, v39);
    TSUMultiplyRectScalar();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    TSUUnionRect();
    v49 = v48;
    v51 = v50;
    v52 = TSDBitmapContextCreate();
    CGContextTranslateCTM(v52, -v49, -v51);
    v55 = objc_msgSend_compositedImage(self, v53, v54);
    v58 = objc_msgSend_CGImage(v55, v56, v57);
    v75.origin.y = v72;
    v75.origin.x = v73;
    v75.size.width = v32;
    v75.size.height = v34;
    CGContextDrawImage(v52, v75, v58);

    objc_msgSend_screenScale(self, v59, v60);
    v63 = objc_msgSend_CGImageForContentsScale_(v5, v61, v62);
    v76.origin.x = v41;
    v76.origin.y = v43;
    v76.size.width = v45;
    v76.size.height = v47;
    CGContextDrawImage(v52, v76, v63);
    Image = CGBitmapContextCreateImage(v52);
    CGContextRelease(v52);
    v65 = MEMORY[0x277D811F8];
    objc_msgSend_screenScale(self, v66, v67);
    v69 = objc_msgSend_imageWithCGImage_scale_orientation_(v65, v68, Image, 0);
    CGImageRelease(Image);
    objc_msgSend_setCompositedImage_(self, v70, v69);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276F4F850();
    }

    v69 = objc_msgSend_compositedImage(self, v6, v7);
  }

  return v69;
}

@end