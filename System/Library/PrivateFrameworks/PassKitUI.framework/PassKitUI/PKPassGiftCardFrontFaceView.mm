@interface PKPassGiftCardFrontFaceView
- (id)templateForLayoutMode:(int64_t)mode;
@end

@implementation PKPassGiftCardFrontFaceView

- (id)templateForLayoutMode:(int64_t)mode
{
  PKPassFrontFaceContentSize();
  v5 = v4;
  v6 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v6 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v6 setBarcodeMaxSize:290.0, 165.0];
  defaultFieldTemplate = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  [defaultFieldTemplate setTextAlignment:0];

  defaultFieldTemplate2 = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [defaultFieldTemplate2 setLabelFont:v9];

  defaultFieldTemplate3 = [(PKPassFaceTemplate *)v6 defaultFieldTemplate];
  [defaultFieldTemplate3 setTextAlignment:0];

  v11 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v11 setBucketAlignment:0];
  v12 = v5 + -30.0;
  [(PKPassBucketTemplate *)v11 setBucketRect:15.0, 73.0, v12, 74.0];
  [(PKPassBucketTemplate *)v11 setSitsOnStripImage:1];
  [(PKPassBucketTemplate *)v11 setMaxFields:1];
  defaultFieldTemplate4 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  v14 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:66.0];
  [defaultFieldTemplate4 setValueFont:v14];

  defaultFieldTemplate5 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  v16 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [defaultFieldTemplate5 setLabelFont:v16];

  defaultFieldTemplate6 = [(PKPassBucketTemplate *)v11 defaultFieldTemplate];
  [defaultFieldTemplate6 setSuppressesLabel:1];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v11];
  v18 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v18 setBucketAlignment:0];
  [(PKPassBucketTemplate *)v18 setBucketRect:15.0, 141.0, v12, 46.0];
  [(PKPassBucketTemplate *)v18 setSitsOnStripImage:1];
  [(PKPassBucketTemplate *)v18 setMaxFields:1];
  defaultFieldTemplate7 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  v20 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [defaultFieldTemplate7 setValueFont:v20];

  defaultFieldTemplate8 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  [defaultFieldTemplate8 setValueCanWrap:1];

  defaultFieldTemplate9 = [(PKPassBucketTemplate *)v18 defaultFieldTemplate];
  [defaultFieldTemplate9 setSuppressesLabel:1];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v18];
  pass = [(PKPassFaceView *)self pass];
  displayProfile = [pass displayProfile];
  PKPassFaceStripImageFrame();
  MaxY = CGRectGetMaxY(v32);

  v26 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v26 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v26 setBucketRect:15.0, MaxY + 8.0, v12, 46.0];
  [(PKPassBucketTemplate *)v26 setMinFieldPadding:16.0];
  [(PKPassBucketTemplate *)v26 setMaxFields:4];
  defaultFieldTemplate10 = [(PKPassBucketTemplate *)v26 defaultFieldTemplate];
  v28 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:26.0];
  [defaultFieldTemplate10 setValueFont:v28];

  defaultFieldTemplate11 = [(PKPassBucketTemplate *)v26 defaultFieldTemplate];
  [defaultFieldTemplate11 setVerticalPadding:2.0];

  [(PKPassFaceTemplate *)v6 addBucketTemplate:v26];

  return v6;
}

@end