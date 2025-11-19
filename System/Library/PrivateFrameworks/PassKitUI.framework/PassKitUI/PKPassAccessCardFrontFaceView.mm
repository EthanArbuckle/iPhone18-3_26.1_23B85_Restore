@interface PKPassAccessCardFrontFaceView
- (id)templateForLayoutMode:(int64_t)a3;
@end

@implementation PKPassAccessCardFrontFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  v6 = v5;
  v7 = [(PKPassFaceView *)self pass];
  [v7 thumbnailRect];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  if (CGRectIsEmpty(v90))
  {
    [v7 stripRect];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  if (CGRectIsEmpty(v91))
  {
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    height = 65.0;
    width = v6;
  }

  v16 = objc_alloc_init(PKPassFaceTemplate);
  v17 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [v17 setTextAlignment:0];

  v18 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v18 setLabelFont:v19];

  v20 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [v20 setTextAlignment:0];

  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  v22 = *MEMORY[0x1E69DDCF8];
  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:17.0];

  [v21 leading];
  v26 = v25;
  [v24 leading];
  v28 = v27;
  [v21 lineHeight];
  v30.n128_f64[0] = v26 + v29;
  PKFloatCeilToPixel(v30, v31);
  v88 = v32;
  [v24 lineHeight];
  v34.n128_f64[0] = v28 + v33;
  PKFloatCeilToPixel(v34, v35);
  v87 = v36;
  [v21 ascender];
  v86 = v6;
  v38 = v37;
  [v21 capHeight];
  v40.n128_u64[0] = 15.0;
  v41.n128_f64[0] = v39 - v38 + 15.0;
  PKFloatFloorToPixel(v41, v40);
  v43 = v42;
  [v21 descender];
  v45 = v26 - v44;
  [v24 ascender];
  v46 = width;
  v47 = x;
  v49 = v48;
  [v24 capHeight];
  v51.n128_u64[0] = 12.0;
  v52.n128_f64[0] = 12.0 - (v45 + v49 - v50);
  PKFloatFloorToPixel(v52, v51);
  v54 = fmax(v53, 0.0);
  v55 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v55 setBucketAlignment:3];
  v92.origin.x = v47;
  v92.origin.y = y;
  v92.size.width = v46;
  v92.size.height = height;
  [(PKPassBucketTemplate *)v55 setBucketRect:15.0, v43 + CGRectGetMaxY(v92), v86 + -30.0, v87 + v88 + v54];
  [(PKPassBucketTemplate *)v55 setMaxFields:1];
  v56 = [(PKPassBucketTemplate *)v55 defaultFieldTemplate];
  [v56 setTextAlignment:1];
  [v56 setValueSignificant:1];
  [v56 setSuppressesEmptyLabel:1];
  [v56 setLabelCaseStyle:3];
  PKFloatRoundToPixel();
  [v56 setVerticalPadding:?];
  [v56 setValueFont:v21];
  [v56 setLabelFont:v24];
  [(PKPassFaceTemplate *)v16 addBucketTemplate:v55];

  LODWORD(v56) = a3 == 0;
  v57 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v58 = [v57 fontDescriptorWithSymbolicTraits:2];

  v59 = [MEMORY[0x1E69DB878] fontWithDescriptor:v58 size:11.0];
  v60 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v22];

  v61 = [MEMORY[0x1E69DB878] fontWithDescriptor:v60 size:17.0];

  [v59 leading];
  v63 = v62;
  [v61 leading];
  v65 = v64;
  [v59 lineHeight];
  v67.n128_f64[0] = v63 + v66;
  PKFloatCeilToPixel(v67, v68);
  v70 = v69;
  [v61 lineHeight];
  v72.n128_f64[0] = v65 + v71;
  PKFloatCeilToPixel(v72, v73);
  v75 = v74;
  v76 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v76 setBucketAlignment:3];
  v77 = v70 + -1.0 + v75;
  [(PKPassBucketTemplate *)v76 setBucketRect:15.0, dbl_1BE114B20[v56], v86 + -30.0, v77];
  [(PKPassBucketTemplate *)v76 setMaxFields:1];
  v78 = [(PKPassBucketTemplate *)v76 defaultFieldTemplate];
  [v78 setLabelFont:v59];

  v79 = [(PKPassBucketTemplate *)v76 defaultFieldTemplate];
  [v79 setValueFont:v61];

  v80 = [(PKPassBucketTemplate *)v76 defaultFieldTemplate];
  PKFloatRoundToPixel();
  [v80 setVerticalPadding:?];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v76];
  v81 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v81 setBucketAlignment:3];
  [(PKPassBucketTemplate *)v81 setBucketRect:15.0, dbl_1BE114B30[v56], v86 + -30.0, v77];
  [(PKPassBucketTemplate *)v81 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v81 setMaxFields:4];
  v82 = [(PKPassBucketTemplate *)v81 defaultFieldTemplate];
  [v82 setLabelFont:v59];

  v83 = [(PKPassBucketTemplate *)v81 defaultFieldTemplate];
  [v83 setValueFont:v61];

  v84 = [(PKPassBucketTemplate *)v81 defaultFieldTemplate];
  PKFloatRoundToPixel();
  [v84 setVerticalPadding:?];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v81];

  return v16;
}

@end