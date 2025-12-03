@interface NCSchedulerViewHeader
+ (double)preferredHeightForWidth:(double)width;
+ (id)_text;
- (NCSchedulerViewHeader)initWithFrame:(CGRect)frame;
@end

@implementation NCSchedulerViewHeader

- (NCSchedulerViewHeader)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = NCSchedulerViewHeader;
  v3 = [(NCSchedulerViewHeader *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    v7 = v3->_label;
    _text = [objc_opt_class() _text];
    [(UILabel *)v7 setText:_text];

    v9 = v3->_label;
    _font = [objc_opt_class() _font];
    [(UILabel *)v9 setFont:_font];

    v11 = v3->_label;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v11 setTextColor:secondaryLabelColor];

    [(NCSchedulerViewHeader *)v3 addSubview:v3->_label];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    centerYAnchor = [(UILabel *)v3->_label centerYAnchor];
    centerYAnchor2 = [(NCSchedulerViewHeader *)v3 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v13 addObject:v16];

    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(NCSchedulerViewHeader *)v3 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    [v13 addObject:v19];

    trailingAnchor = [(NCSchedulerViewHeader *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_label trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
    [v13 addObject:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
  }

  return v3;
}

+ (double)preferredHeightForWidth:(double)width
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth____drawingContext)
  {
    v5 = objc_alloc_init(MEMORY[0x277D74260]);
    v6 = preferredHeightForWidth____drawingContext;
    preferredHeightForWidth____drawingContext = v5;

    [preferredHeightForWidth____drawingContext setWantsNumberOfLineFragments:1];
  }

  _text = [objc_opt_class() _text];
  v11 = *MEMORY[0x277D740A8];
  _font = [self _font];
  v12[0] = _font;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [_text boundingRectWithSize:1 options:v9 attributes:preferredHeightForWidth____drawingContext context:{fmax(width + -24.0, 0.0), 0.0}];
  CGRectGetHeight(v13);

  _NCMainScreenScale();
  UICeilToScale();
  if (result < 30.0)
  {
    return 30.0;
  }

  return result;
}

+ (id)_text
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_SCHEDULER_ITEM_HEADER" value:&stru_282FE84F8 table:0];
  localizedUppercaseString = [v3 localizedUppercaseString];

  return localizedUppercaseString;
}

@end