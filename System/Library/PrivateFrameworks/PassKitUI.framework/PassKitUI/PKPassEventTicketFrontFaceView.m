@interface PKPassEventTicketFrontFaceView
- (id)templateForLayoutMode:(int64_t)a3;
@end

@implementation PKPassEventTicketFrontFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  v5 = [(PKPassFaceView *)self pass];
  [v5 thumbnailRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v90.origin.x = v7;
  v90.origin.y = v9;
  v90.size.width = v11;
  v90.size.height = v13;
  IsEmpty = CGRectIsEmpty(v90);
  v15 = [(PKPassFaceView *)self pass];
  [v15 stripRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v91.origin.x = v17;
  v91.origin.y = v19;
  v91.size.width = v21;
  v91.size.height = v23;
  LODWORD(v15) = CGRectIsEmpty(v91);
  PKPassFrontFaceContentSize();
  v25 = v24;
  if (v15)
  {
    if (IsEmpty)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v11 + 17.0;
    }

    v27 = objc_alloc_init(PKPassFaceTemplate);
    [(PKPassFaceTemplate *)v27 setBarcodeBottomInset:14.0];
    [(PKPassFaceTemplate *)v27 setBarcodeMaxSize:290.0, 165.0];
    v28 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [v28 setTextAlignment:0];

    v29 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    v30 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
    [v29 setLabelFont:v30];

    v31 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [v31 setTextAlignment:0];

    v32 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v32 setBucketAlignment:0];
    v33 = v25 + -30.0 - v26;
    [(PKPassBucketTemplate *)v32 setBucketRect:15.0, 68.0, v33, 46.0];
    [(PKPassBucketTemplate *)v32 setMaxFields:1];
    v34 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    v35 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [v34 setValueFont:v35];

    v36 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    [v36 setValueCanWrap:1];

    v37 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    [v37 setVerticalPadding:-2.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v32];
    v38 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v38 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v38 setBucketRect:15.0, 120.0, v33, 44.0];
    [(PKPassBucketTemplate *)v38 setMaxFields:4];
    v39 = [(PKPassBucketTemplate *)v38 defaultFieldTemplate];
    v40 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [v39 setValueFont:v40];

    v41 = [(PKPassBucketTemplate *)v38 defaultFieldTemplate];
    [v41 setVerticalPadding:-2.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v38];
    v42 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v42 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v42 setBucketRect:15.0, 168.0, v25 + -30.0, 52.0];
    [(PKPassBucketTemplate *)v42 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v42 setMaxFields:4];
    v43 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    v44 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [v43 setValueFont:v44];

    v45 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    [v45 setVerticalPadding:-1.0];

    v46 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    [v46 setValueCanWrap:1];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v42];
    v47 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v47 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v47 setBucketRect:15.0, 224.0, v25 + -30.0, 46.0];
    [(PKPassBucketTemplate *)v47 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v47 setMaxFields:4];
    v48 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v49 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [v48 setLabelFont:v49];

    v50 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v51 = MEMORY[0x1E69DB878];
  }

  else
  {
    v52 = objc_alloc_init(PKPassFaceTemplate);
    v27 = v52;
    v53 = 14.0;
    if (a3 == 1)
    {
      v53 = 6.0;
      v54 = 40.0;
    }

    else
    {
      v54 = 46.0;
    }

    if (a3 == 1)
    {
      v55 = 42.0;
    }

    else
    {
      v55 = 48.0;
    }

    [(PKPassFaceTemplate *)v52 setBarcodeBottomInset:v53];
    [(PKPassFaceTemplate *)v27 setBarcodeMaxSize:290.0, 165.0];
    v56 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [v56 setTextAlignment:0];

    v57 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    v58 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
    [v57 setLabelFont:v58];

    v59 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [v59 setTextAlignment:0];

    v60 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v60 setBucketAlignment:0];
    v61 = v25 + -30.0;
    [(PKPassBucketTemplate *)v60 setBucketRect:15.0, 73.0, v61, 74.0];
    [(PKPassBucketTemplate *)v60 setSitsOnStripImage:1];
    [(PKPassBucketTemplate *)v60 setMaxFields:1];
    v62 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    v63 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:66.0];
    [v62 setValueFont:v63];

    v64 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    v65 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
    [v64 setLabelFont:v65];

    v66 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    [v66 setSuppressesLabel:1];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v60];
    v67 = [(PKPassFaceView *)self pass];
    v68 = [v67 displayProfile];
    PKPassFaceStripImageFrame();
    MaxY = CGRectGetMaxY(v92);

    v70 = MaxY + 8.0;
    v71 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v71 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v71 setBucketRect:15.0, v70, v61, v54];
    [(PKPassBucketTemplate *)v71 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v71 setMaxFields:4];
    v72 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    v73 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [v72 setLabelFont:v73];

    v74 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    v75 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [v74 setValueFont:v75];

    v76 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    [v76 setVerticalPadding:0.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v71];
    v77 = v55 + v70;
    v78 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v78 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v78 setBucketRect:15.0, v77, v61, v54];
    [(PKPassBucketTemplate *)v78 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v78 setMaxFields:4];
    v79 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    v80 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [v79 setLabelFont:v80];

    v81 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    v82 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [v81 setValueFont:v82];

    v83 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    [v83 setVerticalPadding:0.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v78];
    v47 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v47 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v47 setBucketRect:15.0, v55 + v77, v61, v54];
    [(PKPassBucketTemplate *)v47 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v47 setMaxFields:4];
    v84 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v85 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [v84 setLabelFont:v85];

    v50 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v51 = MEMORY[0x1E69DB878];
  }

  v86 = [v51 systemFontOfSize:20.0];
  [v50 setValueFont:v86];

  v87 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
  [v87 setVerticalPadding:0.0];

  [(PKPassFaceTemplate *)v27 addBucketTemplate:v47];

  return v27;
}

@end