@interface PKPassGenericFrontFaceView
- (id)templateForLayoutMode:(int64_t)mode;
@end

@implementation PKPassGenericFrontFaceView

- (id)templateForLayoutMode:(int64_t)mode
{
  PKPassFrontFaceContentSize();
  v5 = v4;
  pass = [(PKPassFaceView *)self pass];
  [pass thumbnailRect];
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
  defaultFieldTemplate = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [defaultFieldTemplate setTextAlignment:0];

  defaultFieldTemplate2 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [defaultFieldTemplate2 setLabelFont:v19];

  defaultFieldTemplate3 = [(PKPassFaceTemplate *)v16 defaultFieldTemplate];
  [defaultFieldTemplate3 setTextAlignment:0];

  v21 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v21 setBucketAlignment:0];
  v22 = v5 + -30.0;
  [(PKPassBucketTemplate *)v21 setBucketRect:15.0, 76.0, v22 - v15, 88.0];
  [(PKPassBucketTemplate *)v21 setMaxFields:1];
  defaultFieldTemplate4 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  v24 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0];
  [defaultFieldTemplate4 setValueFont:v24];

  defaultFieldTemplate5 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  [defaultFieldTemplate5 setValueCanWrap:1];

  defaultFieldTemplate6 = [(PKPassBucketTemplate *)v21 defaultFieldTemplate];
  [defaultFieldTemplate6 setSuppressesEmptyLabel:1];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v21];
  v27 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v27 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v27 setBucketRect:15.0, 174.0, v22, 40.0];
  [(PKPassBucketTemplate *)v27 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v27 setMaxFields:4];
  defaultFieldTemplate7 = [(PKPassBucketTemplate *)v27 defaultFieldTemplate];
  v29 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:20.0];
  [defaultFieldTemplate7 setValueFont:v29];

  defaultFieldTemplate8 = [(PKPassBucketTemplate *)v27 defaultFieldTemplate];
  [defaultFieldTemplate8 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v27];
  v31 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v31 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v31 setBucketRect:15.0, 218.0, v22, 40.0];
  [(PKPassBucketTemplate *)v31 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v31 setMaxFields:4];
  defaultFieldTemplate9 = [(PKPassBucketTemplate *)v31 defaultFieldTemplate];
  v33 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:16.0];
  [defaultFieldTemplate9 setValueFont:v33];

  defaultFieldTemplate10 = [(PKPassBucketTemplate *)v31 defaultFieldTemplate];
  [defaultFieldTemplate10 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v16 addBucketTemplate:v31];

  return v16;
}

@end