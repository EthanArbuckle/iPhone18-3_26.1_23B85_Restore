@interface NCSchedulerViewHeader
+ (double)preferredHeightForWidth:(double)a3;
+ (id)_text;
- (NCSchedulerViewHeader)initWithFrame:(CGRect)a3;
@end

@implementation NCSchedulerViewHeader

- (NCSchedulerViewHeader)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = NCSchedulerViewHeader;
  v3 = [(NCSchedulerViewHeader *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    v7 = v3->_label;
    v8 = [objc_opt_class() _text];
    [(UILabel *)v7 setText:v8];

    v9 = v3->_label;
    v10 = [objc_opt_class() _font];
    [(UILabel *)v9 setFont:v10];

    v11 = v3->_label;
    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v11 setTextColor:v12];

    [(NCSchedulerViewHeader *)v3 addSubview:v3->_label];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [(UILabel *)v3->_label centerYAnchor];
    v15 = [(NCSchedulerViewHeader *)v3 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
    [v13 addObject:v16];

    v17 = [(UILabel *)v3->_label leadingAnchor];
    v18 = [(NCSchedulerViewHeader *)v3 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];
    [v13 addObject:v19];

    v20 = [(NCSchedulerViewHeader *)v3 trailingAnchor];
    v21 = [(UILabel *)v3->_label trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:12.0];
    [v13 addObject:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
  }

  return v3;
}

+ (double)preferredHeightForWidth:(double)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!preferredHeightForWidth____drawingContext)
  {
    v5 = objc_alloc_init(MEMORY[0x277D74260]);
    v6 = preferredHeightForWidth____drawingContext;
    preferredHeightForWidth____drawingContext = v5;

    [preferredHeightForWidth____drawingContext setWantsNumberOfLineFragments:1];
  }

  v7 = [objc_opt_class() _text];
  v11 = *MEMORY[0x277D740A8];
  v8 = [a1 _font];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v7 boundingRectWithSize:1 options:v9 attributes:preferredHeightForWidth____drawingContext context:{fmax(a3 + -24.0, 0.0), 0.0}];
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
  v4 = [v3 localizedUppercaseString];

  return v4;
}

@end