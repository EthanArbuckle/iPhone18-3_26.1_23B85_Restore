@interface PKPassGiftCardFrontFaceView
- (id)templateForLayoutMode:(int64_t)a3;
@end

@implementation PKPassGiftCardFrontFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  v5 = v4;
  v6 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v6 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v6 setBarcodeMaxSize:290.0, 165.0];
  v7 = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  [v7 setTextAlignment:0];

  v8 = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v8 setLabelFont:v9];

  v10 = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  [v10 setTextAlignment:0];

  v11 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v11 setBucketAlignment:0];
  v12 = v5 + -30.0;
  [(PKPassBucketTemplate *)v11 setBucketRect:15.0, 73.0, v12, 74.0];
  [(PKPassBucketTemplate *)v11 setSitsOnStripImage:1];
  [(PKPassBucketTemplate *)v11 setMaxFields:1];
  v13 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  v14 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:66.0];
  [v13 setValueFont:v14];

  v15 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  v16 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [v15 setLabelFont:v16];

  v17 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  [v17 setSuppressesLabel:1];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v11];
  v18 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v18 setBucketAlignment:0];
  [(PKPassBucketTemplate *)v18 setBucketRect:15.0, 141.0, v12, 46.0];
  [(PKPassBucketTemplate *)v18 setSitsOnStripImage:1];
  [(PKPassBucketTemplate *)v18 setMaxFields:1];
  v19 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  v20 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [v19 setValueFont:v20];

  v21 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  [v21 setValueCanWrap:1];

  v22 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  [v22 setSuppressesLabel:1];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v18];
  v23 = [(PKPassFaceView *)self pass];
  v24 = [v23 displayProfile];
  PKPassFaceStripImageFrame();
  MaxY = CGRectGetMaxY(v32);

  v26 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v26 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v26 setBucketRect:15.0, MaxY + 8.0, v12, 46.0];
  [(PKPassBucketTemplate *)v26 setMinFieldPadding:16.0];
  [(PKPassBucketTemplate *)v26 setMaxFields:4];
  v27 = [(PKPassBucketTemplate *)v26 defaultFieldTemplate];
  v28 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:26.0];
  [v27 setValueFont:v28];

  v29 = [(PKPassBucketTemplate *)v26 defaultFieldTemplate];
  [v29 setVerticalPadding:2.0];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v26];

  return v6;
}

@end