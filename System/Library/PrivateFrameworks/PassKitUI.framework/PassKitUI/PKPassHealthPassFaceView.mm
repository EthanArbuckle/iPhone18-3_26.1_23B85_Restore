@interface PKPassHealthPassFaceView
- (id)templateForHeaderBucket;
- (id)templateForLayoutMode:(int64_t)a3;
@end

@implementation PKPassHealthPassFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  v4 = v3;
  v5 = PKIsSmallDevice();
  v6 = v5;
  if (v5)
  {
    v7 = 40.0;
  }

  else
  {
    v7 = 50.0;
  }

  v8 = v7 + 10.0;
  v9 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v9 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v9 setBarcodeMaxSize:100.0, 100.0];
  v10 = [(PKPassFaceTemplate *)v9 defaultFieldTemplate];
  [v10 setTextAlignment:0];

  v11 = [(PKPassFaceTemplate *)v9 defaultFieldTemplate];
  v12 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v11 setLabelFont:v12];

  v13 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v13 setBucketAlignment:3];
  v14 = v4 + -30.0;
  [(PKPassBucketTemplate *)v13 setBucketRect:15.0, 60.0, v14, v7];
  [(PKPassBucketTemplate *)v13 setMaxFields:1];
  v15 = [(PKPassBucketTemplate *)v13 defaultFieldTemplate];
  if (v6)
  {
    v16 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
    [v15 setValueFont:v16];

    [v15 setValueCanWrap:0];
    [v15 setSuppressesEmptyLabel:1];
    [(PKPassFaceTemplate *)v9 addBucketTemplate:v13];
    v17 = v7 + 10.0;
  }

  else
  {
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:28.0];
    [v15 setValueFont:v18];

    [v15 setValueCanWrap:0];
    [v15 setSuppressesEmptyLabel:1];
    [(PKPassFaceTemplate *)v9 addBucketTemplate:v13];
    v17 = v8 + -10.0;
  }

  v19 = v8 + 60.0;
  v20 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v20 setBucketAlignment:3];
  [(PKPassBucketTemplate *)v20 setBucketRect:15.0, v19, v14, 40.0];
  [(PKPassBucketTemplate *)v20 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v20 setMaxFields:2];
  v21 = [(PKPassBucketTemplate *)v20 defaultFieldTemplate];

  v22 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [v21 setValueFont:v22];

  [v21 setVerticalPadding:0.0];
  [(PKPassFaceTemplate *)v9 addBucketTemplate:v20];
  v23 = v19 + v17;
  v24 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v24 setBucketAlignment:3];
  [(PKPassBucketTemplate *)v24 setBucketRect:15.0, v23, v14, 40.0];
  [(PKPassBucketTemplate *)v24 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v24 setMaxFields:4];
  v25 = [(PKPassBucketTemplate *)v24 defaultFieldTemplate];

  v26 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [v25 setValueFont:v26];

  [v25 setVerticalPadding:0.0];
  [(PKPassFaceTemplate *)v9 addBucketTemplate:v24];
  v27 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v27 setBucketAlignment:3];
  [(PKPassBucketTemplate *)v27 setBucketRect:15.0, v17 + v23, v14, 40.0];
  [(PKPassBucketTemplate *)v27 setMinFieldPadding:12.0];
  [(PKPassBucketTemplate *)v27 setMaxFields:4];
  v28 = [(PKPassBucketTemplate *)v27 defaultFieldTemplate];

  v29 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
  [v28 setValueFont:v29];

  [v28 setVerticalPadding:0.0];
  [(PKPassFaceTemplate *)v9 addBucketTemplate:v27];

  return v9;
}

- (id)templateForHeaderBucket
{
  v6.receiver = self;
  v6.super_class = PKPassHealthPassFaceView;
  v2 = [(PKPassFrontFaceView *)&v6 templateForHeaderBucket];
  [v2 bucketRect];
  [v2 setBucketRect:?];
  v3 = [v2 defaultFieldTemplate];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
  [v3 setValueFont:v4];

  return v2;
}

@end