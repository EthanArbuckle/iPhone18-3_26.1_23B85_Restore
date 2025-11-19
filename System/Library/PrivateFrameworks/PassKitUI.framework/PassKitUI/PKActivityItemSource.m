@interface PKActivityItemSource
+ (id)actionableItemWithValue:(id)a3;
+ (id)placeholderURLItemWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
+ (id)placeholderURLItemWithTitle:(id)a3 subtitle:(id)a4 iconURL:(id)a5 iconPlaceholder:(id)a6;
- (PKActivityItemSource)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5 value:(id)a6;
- (PKActivityItemSource)initWithTitle:(id)a3 subtitle:(id)a4 iconURL:(id)a5 iconPlaceholder:(id)a6 value:(id)a7;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation PKActivityItemSource

+ (id)placeholderURLItemWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v7 = MEMORY[0x1E695DFF8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithString:@"https://apple.com"];
  v12 = [[PKActivityItemSource alloc] initWithTitle:v10 subtitle:v9 icon:v8 value:v11];

  return v12;
}

+ (id)placeholderURLItemWithTitle:(id)a3 subtitle:(id)a4 iconURL:(id)a5 iconPlaceholder:(id)a6
{
  v9 = MEMORY[0x1E695DFF8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v9 alloc] initWithString:@"https://apple.com"];
  v15 = [[PKActivityItemSource alloc] initWithTitle:v13 subtitle:v12 iconURL:v11 iconPlaceholder:v10 value:v14];

  return v15;
}

+ (id)actionableItemWithValue:(id)a3
{
  v3 = a3;
  v4 = [[PKActivityItemSource alloc] initWithTitle:0 subtitle:0 icon:0 value:v3];

  return v4;
}

- (PKActivityItemSource)initWithTitle:(id)a3 subtitle:(id)a4 iconURL:(id)a5 iconPlaceholder:(id)a6 value:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = PKActivityItemSource;
  v18 = [(PKActivityItemSource *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a3);
    objc_storeStrong(&v19->_subtitle, a4);
    objc_storeStrong(&v19->_value, a7);
    objc_storeStrong(&v19->_iconURL, a5);
    if (v19->_iconURL)
    {
      v20 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v21 = objc_opt_class();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77__PKActivityItemSource_initWithTitle_subtitle_iconURL_iconPlaceholder_value___block_invoke;
      v27[3] = &unk_1E8027050;
      v22 = v19;
      v28 = v22;
      [v20 registerObjectOfClass:v21 visibility:0 loadHandler:v27];
      if (v16)
      {
        v23 = [objc_alloc(MEMORY[0x1E696EC60]) initWithPlatformImage:v16];
      }

      else
      {
        v23 = 0;
      }

      v24 = [objc_alloc(MEMORY[0x1E696EC60]) initWithItemProvider:v20 properties:0 placeholderImage:v23];
      icon = v22->_icon;
      v22->_icon = v24;
    }
  }

  return v19;
}

uint64_t __77__PKActivityItemSource_initWithTitle_subtitle_iconURL_iconPlaceholder_value___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKActivityItemSource_initWithTitle_subtitle_iconURL_iconPlaceholder_value___block_invoke_2;
  v8[3] = &unk_1E8012AF0;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  PKCommonCachedImageFromURL(v5, v8);

  return 0;
}

void __77__PKActivityItemSource_initWithTitle_subtitle_iconURL_iconPlaceholder_value___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(a1 + 32) + 32), obj);
  v5 = obj;
  (*(*(a1 + 40) + 16))();
}

- (PKActivityItemSource)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5 value:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = PKActivityItemSource;
  v15 = [(PKActivityItemSource *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_subtitle, a4);
    objc_storeStrong(&v16->_value, a6);
    objc_storeStrong(&v16->_iconImage, a5);
    if (v13)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v18 = objc_opt_class();
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __58__PKActivityItemSource_initWithTitle_subtitle_icon_value___block_invoke;
      v22[3] = &unk_1E8027050;
      v23 = v13;
      [v17 registerObjectOfClass:v18 visibility:0 loadHandler:v22];
      v19 = [objc_alloc(MEMORY[0x1E696EC60]) initWithItemProvider:v17 properties:0 placeholderImage:0];
      icon = v16->_icon;
      v16->_icon = v19;
    }
  }

  return v16;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696EC98]);
  [v4 setTitle:self->_title];
  [v4 setSummary:self->_subtitle];
  [v4 setImage:self->_icon];

  return v4;
}

@end