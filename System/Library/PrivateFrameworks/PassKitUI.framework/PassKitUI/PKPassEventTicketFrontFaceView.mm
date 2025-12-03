@interface PKPassEventTicketFrontFaceView
- (id)templateForLayoutMode:(int64_t)mode;
@end

@implementation PKPassEventTicketFrontFaceView

- (id)templateForLayoutMode:(int64_t)mode
{
  pass = [(PKPassFaceView *)self pass];
  [pass thumbnailRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v90.origin.x = v7;
  v90.origin.y = v9;
  v90.size.width = v11;
  v90.size.height = v13;
  IsEmpty = CGRectIsEmpty(v90);
  pass2 = [(PKPassFaceView *)self pass];
  [pass2 stripRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v91.origin.x = v17;
  v91.origin.y = v19;
  v91.size.width = v21;
  v91.size.height = v23;
  LODWORD(pass2) = CGRectIsEmpty(v91);
  PKPassFrontFaceContentSize();
  v25 = v24;
  if (pass2)
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
    defaultFieldTemplate = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [defaultFieldTemplate setTextAlignment:0];

    defaultFieldTemplate2 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    v30 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
    [defaultFieldTemplate2 setLabelFont:v30];

    defaultFieldTemplate3 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [defaultFieldTemplate3 setTextAlignment:0];

    v32 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v32 setBucketAlignment:0];
    v33 = v25 + -30.0 - v26;
    [(PKPassBucketTemplate *)v32 setBucketRect:15.0, 68.0, v33, 46.0];
    [(PKPassBucketTemplate *)v32 setMaxFields:1];
    defaultFieldTemplate4 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    v35 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [defaultFieldTemplate4 setValueFont:v35];

    defaultFieldTemplate5 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    [defaultFieldTemplate5 setValueCanWrap:1];

    defaultFieldTemplate6 = [(PKPassBucketTemplate *)v32 defaultFieldTemplate];
    [defaultFieldTemplate6 setVerticalPadding:-2.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v32];
    v38 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v38 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v38 setBucketRect:15.0, 120.0, v33, 44.0];
    [(PKPassBucketTemplate *)v38 setMaxFields:4];
    defaultFieldTemplate7 = [(PKPassBucketTemplate *)v38 defaultFieldTemplate];
    v40 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [defaultFieldTemplate7 setValueFont:v40];

    defaultFieldTemplate8 = [(PKPassBucketTemplate *)v38 defaultFieldTemplate];
    [defaultFieldTemplate8 setVerticalPadding:-2.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v38];
    v42 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v42 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v42 setBucketRect:15.0, 168.0, v25 + -30.0, 52.0];
    [(PKPassBucketTemplate *)v42 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v42 setMaxFields:4];
    defaultFieldTemplate9 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    v44 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [defaultFieldTemplate9 setValueFont:v44];

    defaultFieldTemplate10 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    [defaultFieldTemplate10 setVerticalPadding:-1.0];

    defaultFieldTemplate11 = [(PKPassBucketTemplate *)v42 defaultFieldTemplate];
    [defaultFieldTemplate11 setValueCanWrap:1];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v42];
    v47 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v47 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v47 setBucketRect:15.0, 224.0, v25 + -30.0, 46.0];
    [(PKPassBucketTemplate *)v47 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v47 setMaxFields:4];
    defaultFieldTemplate12 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v49 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [defaultFieldTemplate12 setLabelFont:v49];

    defaultFieldTemplate13 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v51 = MEMORY[0x1E69DB878];
  }

  else
  {
    v52 = objc_alloc_init(PKPassFaceTemplate);
    v27 = v52;
    v53 = 14.0;
    if (mode == 1)
    {
      v53 = 6.0;
      v54 = 40.0;
    }

    else
    {
      v54 = 46.0;
    }

    if (mode == 1)
    {
      v55 = 42.0;
    }

    else
    {
      v55 = 48.0;
    }

    [(PKPassFaceTemplate *)v52 setBarcodeBottomInset:v53];
    [(PKPassFaceTemplate *)v27 setBarcodeMaxSize:290.0, 165.0];
    defaultFieldTemplate14 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [defaultFieldTemplate14 setTextAlignment:0];

    defaultFieldTemplate15 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    v58 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
    [defaultFieldTemplate15 setLabelFont:v58];

    defaultFieldTemplate16 = [(PKPassFaceTemplate *)v27 defaultFieldTemplate];
    [defaultFieldTemplate16 setTextAlignment:0];

    v60 = objc_alloc_init(PKPassBucketTemplate);
    [(PKPassBucketTemplate *)v60 setBucketAlignment:0];
    v61 = v25 + -30.0;
    [(PKPassBucketTemplate *)v60 setBucketRect:15.0, 73.0, v61, 74.0];
    [(PKPassBucketTemplate *)v60 setSitsOnStripImage:1];
    [(PKPassBucketTemplate *)v60 setMaxFields:1];
    defaultFieldTemplate17 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    v63 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:66.0];
    [defaultFieldTemplate17 setValueFont:v63];

    defaultFieldTemplate18 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    v65 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
    [defaultFieldTemplate18 setLabelFont:v65];

    defaultFieldTemplate19 = [(PKPassBucketTemplate *)v60 defaultFieldTemplate];
    [defaultFieldTemplate19 setSuppressesLabel:1];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v60];
    pass3 = [(PKPassFaceView *)self pass];
    displayProfile = [pass3 displayProfile];
    PKPassFaceStripImageFrame();
    MaxY = CGRectGetMaxY(v92);

    v70 = MaxY + 8.0;
    v71 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v71 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v71 setBucketRect:15.0, v70, v61, v54];
    [(PKPassBucketTemplate *)v71 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v71 setMaxFields:4];
    defaultFieldTemplate20 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    v73 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [defaultFieldTemplate20 setLabelFont:v73];

    defaultFieldTemplate21 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    v75 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [defaultFieldTemplate21 setValueFont:v75];

    defaultFieldTemplate22 = [(PKPassBucketTemplate *)v71 defaultFieldTemplate];
    [defaultFieldTemplate22 setVerticalPadding:0.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v71];
    v77 = v55 + v70;
    v78 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v78 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v78 setBucketRect:15.0, v77, v61, v54];
    [(PKPassBucketTemplate *)v78 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v78 setMaxFields:4];
    defaultFieldTemplate23 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    v80 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [defaultFieldTemplate23 setLabelFont:v80];

    defaultFieldTemplate24 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    v82 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
    [defaultFieldTemplate24 setValueFont:v82];

    defaultFieldTemplate25 = [(PKPassBucketTemplate *)v78 defaultFieldTemplate];
    [defaultFieldTemplate25 setVerticalPadding:0.0];

    [(PKPassFaceTemplate *)v27 addBucketTemplate:v78];
    v47 = objc_alloc_init(PKPassBucketTemplate);

    [(PKPassBucketTemplate *)v47 setBucketAlignment:2];
    [(PKPassBucketTemplate *)v47 setBucketRect:15.0, v55 + v77, v61, v54];
    [(PKPassBucketTemplate *)v47 setMinFieldPadding:16.0];
    [(PKPassBucketTemplate *)v47 setMaxFields:4];
    defaultFieldTemplate26 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v85 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
    [defaultFieldTemplate26 setLabelFont:v85];

    defaultFieldTemplate13 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
    v51 = MEMORY[0x1E69DB878];
  }

  v86 = [v51 systemFontOfSize:20.0];
  [defaultFieldTemplate13 setValueFont:v86];

  defaultFieldTemplate27 = [(PKPassBucketTemplate *)v47 defaultFieldTemplate];
  [defaultFieldTemplate27 setVerticalPadding:0.0];

  [(PKPassFaceTemplate *)v27 addBucketTemplate:v47];

  return v27;
}

@end