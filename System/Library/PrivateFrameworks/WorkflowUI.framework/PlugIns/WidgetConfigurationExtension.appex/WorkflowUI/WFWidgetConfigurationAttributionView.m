@interface WFWidgetConfigurationAttributionView
+ (id)attributionViewForAppBundleIdentifier:(id)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (WFWidgetConfigurationAttributionView)initWithLegacyWidgetAttributionAttributedString:(id)a3;
- (WFWidgetConfigurationAttributionView)initWithWidgetAttributionAttributedString:(id)a3;
- (id)_attributionFont;
- (id)_paragraphStyle;
- (void)_configureAttributedString;
- (void)layoutSubviews;
@end

@implementation WFWidgetConfigurationAttributionView

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  if ((a6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015D0C;
    block[3] = &unk_10002DA10;
    v11 = v7;
    dispatch_async(v8, block);
  }

  return 0;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFWidgetConfigurationAttributionView;
  [(WFWidgetConfigurationAttributionView *)&v3 layoutSubviews];
  [(WFWidgetConfigurationAttributionView *)self _configureAttributedString];
}

- (void)_configureAttributedString
{
  v3 = [(NSMutableAttributedString *)self->_widgetAttributedString length];
  [(NSMutableAttributedString *)self->_widgetAttributedString removeAttribute:NSForegroundColorAttributeName range:0, v3];
  [(NSMutableAttributedString *)self->_widgetAttributedString removeAttribute:NSFontAttributeName range:0, v3];
  widgetAttributedString = self->_widgetAttributedString;
  v5 = [(WFWidgetConfigurationAttributionView *)self _attributionFont];
  [(NSMutableAttributedString *)widgetAttributedString addAttribute:NSFontAttributeName value:v5 range:0, v3];

  v6 = self->_widgetAttributedString;
  v7 = [(WFWidgetConfigurationAttributionView *)self _paragraphStyle];
  [(NSMutableAttributedString *)v6 addAttribute:NSParagraphStyleAttributeName value:v7 range:0, v3];

  v8 = [(WFWidgetConfigurationAttributionView *)self _attributionTitleColor];
  [(NSMutableAttributedString *)self->_widgetAttributedString addAttribute:NSForegroundColorAttributeName value:v8 range:0, v3];
  v11[0] = NSForegroundColorAttributeName;
  v11[1] = NSUnderlineStyleAttributeName;
  v12[0] = v8;
  v12[1] = &off_10002E258;
  v11[2] = NSUnderlineColorAttributeName;
  v9 = [v8 colorWithAlphaComponent:0.4];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(WFWidgetConfigurationAttributionView *)self setLinkTextAttributes:v10];

  [(WFWidgetConfigurationAttributionView *)self setAttributedText:self->_widgetAttributedString];
  [(WFWidgetConfigurationAttributionView *)self invalidateIntrinsicContentSize];
}

- (id)_paragraphStyle
{
  v2 = objc_alloc_init(NSMutableParagraphStyle);
  [v2 setAlignment:1];

  return v2;
}

- (id)_attributionFont
{
  v2 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
  v3 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v3];
  v5 = [v2 scaledFontForFont:v4 maximumPointSize:28.0];

  return v5;
}

- (WFWidgetConfigurationAttributionView)initWithWidgetAttributionAttributedString:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFWidgetConfigurationAttributionView;
  v5 = [(WFWidgetConfigurationAttributionView *)&v12 initWithFrame:0 textContainer:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [[NSMutableAttributedString alloc] initWithAttributedString:v4];
    widgetAttributedString = v5->_widgetAttributedString;
    v5->_widgetAttributedString = v6;

    [(WFWidgetConfigurationAttributionView *)v5 _configureAttributedString];
    v8 = [(WFWidgetConfigurationAttributionView *)v5 _attributionBackgroundColor];
    [(WFWidgetConfigurationAttributionView *)v5 setBackgroundColor:v8];

    [(WFWidgetConfigurationAttributionView *)v5 setOpaque:0];
    [(WFWidgetConfigurationAttributionView *)v5 setEditable:0];
    [(WFWidgetConfigurationAttributionView *)v5 setScrollEnabled:0];
    [(WFWidgetConfigurationAttributionView *)v5 _setInteractiveTextSelectionDisabled:0];
    [(WFWidgetConfigurationAttributionView *)v5 setAdjustsFontForContentSizeCategory:1];
    [(WFWidgetConfigurationAttributionView *)v5 setTextContainerInset:8.0, 16.0, 12.0, 16.0];
    [(WFWidgetConfigurationAttributionView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11.receiver = v5;
    v11.super_class = WFWidgetConfigurationAttributionView;
    [(WFWidgetConfigurationAttributionView *)&v11 setDelegate:v5];
    v9 = v5;
  }

  return v5;
}

- (WFWidgetConfigurationAttributionView)initWithLegacyWidgetAttributionAttributedString:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100016618;
  v30 = sub_100016628;
  v31 = 0;
  if ([v4 containsAttachmentsInRange:{0, v5}])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100016630;
    v23[3] = &unk_10002D8D0;
    v25 = &v26;
    v24 = v4;
    [v24 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v5 usingBlock:{0, v23}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100016618;
  v21 = sub_100016628;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000166B4;
  v13[3] = &unk_10002D8F8;
  v15 = &v26;
  v16 = &v17;
  v6 = v4;
  v14 = v6;
  [v6 enumerateAttribute:NSLinkAttributeName inRange:0 options:v5 usingBlock:{0, v13}];
  if (v18[5] || v27[5])
  {
    v7 = [NSMutableAttributedString alloc];
    v8 = sub_100018264(@"Data provided by ");
    v9 = [v7 initWithString:v8];

    v10 = v18[5];
    if (!v10)
    {
      v10 = v27[5];
    }

    [v9 appendAttributedString:v10];
  }

  else
  {
    v9 = [[NSMutableAttributedString alloc] initWithAttributedString:v6];
  }

  v11 = [(WFWidgetConfigurationAttributionView *)self initWithWidgetAttributionAttributedString:v9];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

+ (id)attributionViewForAppBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.stocks"])
  {
    v4 = [NSMutableAttributedString alloc];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v5 = off_100034CD0;
    v25 = off_100034CD0;
    if (!off_100034CD0)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100016B08;
      v20 = &unk_10002D948;
      v21 = &v22;
      sub_100016B08(&v17);
      v5 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v5)
    {
      v6 = v5();
      v7 = [v4 initWithAttributedString:v6];

      v8 = [v7 length];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100016C8C;
      v15[3] = &unk_10002D8A8;
      v16 = v7;
      v9 = v7;
      [v9 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v8 usingBlock:{0, v15}];
      v10 = [[WFWidgetConfigurationAttributionView alloc] initWithLegacyWidgetAttributionAttributedString:v9];

LABEL_14:
      goto LABEL_15;
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"NSAttributedString *WFStocksAttributionString(void)"];
    [v13 handleFailureInFunction:v14 file:@"WFWidgetConfigurationAttributionView.m" lineNumber:23 description:{@"%s", dlerror()}];
    goto LABEL_20;
  }

  if ([v3 isEqualToString:@"com.apple.weather"])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v11 = off_100034CE0;
    v25 = off_100034CE0;
    if (!off_100034CE0)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100016D68;
      v20 = &unk_10002D948;
      v21 = &v22;
      sub_100016D68(&v17);
      v11 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v11)
    {
      v9 = v11();
      if ([v9 length])
      {
        v10 = [[WFWidgetConfigurationAttributionView alloc] initWithWidgetAttributionAttributedString:v9];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_14;
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"NSAttributedString *WFWAAttributionString(void)"];
    [v13 handleFailureInFunction:v14 file:@"WFWidgetConfigurationAttributionView.m" lineNumber:26 description:{@"%s", dlerror()}];
LABEL_20:

    __break(1u);
    return result;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

@end