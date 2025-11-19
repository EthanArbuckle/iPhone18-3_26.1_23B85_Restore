@interface PKPassGenericFrontFaceView
- (id)templateForLayoutMode:(int64_t)a3;
@end

@implementation PKPassGenericFrontFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  v5 = v4;
  v6 = [(PKPassFaceView *)self pass];
  [v6 thumbnailRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  if (CGRectIsEmpty(v37))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12 + 17.0;
  }

  v16 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v16 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v16 setBarcodeMaxSize:290.0, 165.0];
  v17 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [v17 setTextAlignment:0];

  v18 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v18 setLabelFont:v19];

  v20 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [v20 setTextAlignment:0];

  v21 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v21 setBucketAlignment:0];
  v22 = v5 + -30.0;
  [(PKPassBucketTemplate *)v21 setBucketRect:15.0, 76.0, v22 - v15, 88.0];
  [(PKPassBucketTemplate *)v21 setMaxFields:1];
  v23 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  v24 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0];
  [v23 setValueFont:v24];

  v25 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  [v25 setValueCanWrap:1];

  v26 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  [v26 setSuppressesEmptyLabel:1];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v21];
  v27 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v27 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v27 setBucketRect:15.0, 174.0, v22, 40.0];
  [(PKPassBucketTemplate *)v27 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v27 setMaxFields:4];
  v28 = [(PKPassBucketTemplate *)v27 defaultFieldTemplate];
  v29 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:20.0];
  [v28 setValueFont:v29];

  v30 = [(PKPassBucketTemplate *)v27 defaultFieldTemplate];
  [v30 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v27];
  v31 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v31 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v31 setBucketRect:15.0, 218.0, v22, 40.0];
  [(PKPassBucketTemplate *)v31 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v31 setMaxFields:4];
  v32 = [(PKPassBucketTemplate *)v31 defaultFieldTemplate];
  v33 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:16.0];
  [v32 setValueFont:v33];

  v34 = [(PKPassBucketTemplate *)v31 defaultFieldTemplate];
  [v34 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v31];

  return v16;
}

@end