@interface WFMenuItem
+ (id)platformImageForIcon:(id)icon;
- (WFMenuItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon state:(int64_t)state isDestructive:(BOOL)destructive handler:(id)handler;
- (id)generateAttributedStringForText:(id)text font:(id)font color:(id)color;
- (id)menuElementRepresentationShowingStatus:(BOOL)status;
@end

@implementation WFMenuItem

+ (id)platformImageForIcon:(id)icon
{
  iconCopy = icon;
  if (!iconCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = 0;
    goto LABEL_10;
  }

  v4 = iconCopy;
  if (![iconCopy hasClearBackground])
  {
LABEL_10:
    v7 = [WFIconViewImageGenerator loadIcon:iconCopy size:0 style:25.0, 25.0];
    goto LABEL_11;
  }

  symbolName = [iconCopy symbolName];
  if ([(__CFString *)symbolName hasSuffix:@".fill"])
  {
    v6 = -[__CFString substringToIndex:](symbolName, "substringToIndex:", -[__CFString length](symbolName, "length") - [@".fill" length]);

    symbolName = v6;
  }

  if ([(__CFString *)symbolName isEqualToString:@"f.cursive"])
  {

    symbolName = @"f.cursive.circle";
  }

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:symbolName];

  v4 = iconCopy;
LABEL_11:

  return v7;
}

- (WFMenuItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon state:(int64_t)state isDestructive:(BOOL)destructive handler:(id)handler
{
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  handlerCopy = handler;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMenuItem.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v29.receiver = self;
  v29.super_class = WFMenuItem;
  v19 = [(WFMenuItem *)&v29 init];
  if (v19)
  {
    v20 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v20;

    v22 = [subtitleCopy copy];
    subtitle = v19->_subtitle;
    v19->_subtitle = v22;

    objc_storeStrong(&v19->_icon, icon);
    v19->_state = state;
    v19->_isDestructive = destructive;
    v24 = [handlerCopy copy];
    handler = v19->_handler;
    v19->_handler = v24;

    v26 = v19;
  }

  return v19;
}

- (id)generateAttributedStringForText:(id)text font:(id)font color:(id)color
{
  colorCopy = color;
  v9 = MEMORY[0x1E696AD40];
  fontCopy = font;
  textCopy = text;
  v12 = [[v9 alloc] initWithString:textCopy];

  v13 = [v12 length];
  [v12 addAttribute:*MEMORY[0x1E69DB648] value:fontCopy range:{0, v13}];

  handler = [(WFMenuItem *)self handler];

  if (handler)
  {
    secondaryLabelColor = colorCopy;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  v16 = secondaryLabelColor;
  [v12 addAttribute:*MEMORY[0x1E69DB650] value:secondaryLabelColor range:{0, v13}];

  return v12;
}

- (id)menuElementRepresentationShowingStatus:(BOOL)status
{
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  title = [(WFMenuItem *)self title];
  v6 = [v4 initWithString:title];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke;
  v28[3] = &unk_1E83080E8;
  v28[4] = self;
  v7 = [MEMORY[0x1E69DC628] actionWithTitle:v6 image:0 identifier:0 handler:v28];
  subtitle = [(WFMenuItem *)self subtitle];
  [v7 setSubtitle:subtitle];

  state = [(WFMenuItem *)self state];
  if (state == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = state == 1;
  }

  [v7 setState:v10];
  handler = [(WFMenuItem *)self handler];

  if (!handler)
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") | 1}];
  }

  if ([(WFMenuItem *)self isDestructive])
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") | 2}];
  }

  title2 = [(WFMenuItem *)self title];
  v13 = [title2 isEqualToString:&stru_1F480C910];

  if (v13)
  {
    [v7 setAttributes:4];
  }

  icon = [(WFMenuItem *)self icon];

  if (icon)
  {
    icon2 = [(WFMenuItem *)self icon];
    v16 = [WFMenuItem platformImageForIcon:icon2];
    [v7 setImage:v16];
  }

  icon3 = [(WFMenuItem *)self icon];
  if (icon3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = icon3;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  bundleIdentifier = [v19 bundleIdentifier];

  if (bundleIdentifier)
  {
    image = [v7 image];

    if (!image)
    {
      v22 = MEMORY[0x1E69DC928];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_2;
      v25[3] = &unk_1E8308160;
      v26 = bundleIdentifier;
      v27 = v7;
      v23 = v7;
      v7 = [v22 elementWithProvider:v25];
    }
  }

  return v7;
}

void __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    v3[2]();
  }
}

void __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69E0A90] currentDevice];
  [v4 screenScale];
  v6 = v5;

  v7 = MEMORY[0x1E69E0B58];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_3;
  v10[3] = &unk_1E8308138;
  v13 = vdupq_n_s64(0x404A000000000000uLL);
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v9 = v3;
  [v7 applicationIconImageForBundleIdentifier:v8 length:v10 scale:52.0 completionHandler:v6];
}

void __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_4;
  block[3] = &unk_1E8308110;
  v9 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__WFMenuItem_UIKit__menuElementRepresentationShowingStatus___block_invoke_4(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) roundedWithContinuousCornerRadius:*(a1 + 64) * 0.95 * *MEMORY[0x1E69E0FE0] size:*(a1 + 56)];
  v3 = [v2 platformImage];
  [*(a1 + 32) setImage:v3];

  v4 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  (*(v4 + 16))(v4, v5);
}

@end