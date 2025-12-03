@interface PSDateTimePickerCell
- (PSDateTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)dealloc;
- (void)timeZoneChanged:(id)changed;
@end

@implementation PSDateTimePickerCell

- (PSDateTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v94.receiver = self;
  v94.super_class = PSDateTimePickerCell;
  v9 = [(PSTableCell *)&v94 initWithStyle:style reuseIdentifier:identifier];
  if (!v9)
  {
    goto LABEL_16;
  }

  target = [specifierCopy target];
  if (([target conformsToProtocol:&unk_1EFEC6610] & 1) == 0)
  {

    goto LABEL_6;
  }

  target2 = [specifierCopy target];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
LABEL_6:
    v16 = objc_alloc(MEMORY[0x1E69DC920]);
    v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    datePicker = v9->_datePicker;
    v9->_datePicker = v17;

    v19 = v9->_datePicker;
    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:2145988800.0];
    [(UIDatePicker *)v19 setMaximumDate:v20];

    v21 = v9->_datePicker;
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    [(UIDatePicker *)v21 setMinimumDate:v22];

    [(UIDatePicker *)v9->_datePicker setDatePickerMode:2];
    [(UIDatePicker *)v9->_datePicker setPreferredDatePickerStyle:3];
    v23 = v9->_datePicker;
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    [(UIDatePicker *)v23 setTimeZone:systemTimeZone];
    goto LABEL_7;
  }

  systemTimeZone = [specifierCopy target];
  v14 = [systemTimeZone datePickerForSpecifier:specifierCopy];
  v15 = v9->_datePicker;
  v9->_datePicker = v14;

LABEL_7:
  v24 = v9->_datePicker;
  v25 = MEMORY[0x1E69DC628];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __64__PSDateTimePickerCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
  v91[3] = &unk_1E71DCAD8;
  v26 = v9;
  v92 = v26;
  v90 = specifierCopy;
  v27 = specifierCopy;
  v93 = v27;
  v28 = [v25 actionWithHandler:v91];
  [(UIDatePicker *)v24 addAction:v28 forControlEvents:4096];

  v29 = objc_opt_new();
  v30 = v26[152];
  v26[152] = v29;

  v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v26[152] setFont:v31];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v26[152] setTextColor:labelColor];

  [v26[152] setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [v26 contentView];
  [contentView addSubview:v26[152]];

  [(UIDatePicker *)v9->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)v9->_datePicker setClipsToBounds:1];
  contentView2 = [v26 contentView];
  [contentView2 addSubview:v9->_datePicker];

  v35 = [v27 propertyForKey:@"InlineDatePicker"];
  bOOLValue = [v35 BOOLValue];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v39 = 0;
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v39 = [currentDevice sf_isiPhone] & bOOLValue;
  }

  contentView3 = [v26 contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];

  contentView4 = [v26 contentView];
  if (v39)
  {
    [v26[152] setNumberOfLines:0];
    topAnchor = [v26[152] topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v46 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    [v46 setActive:1];

    leadingAnchor = [v26[152] leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v49 setActive:1];

    trailingAnchor = [v26[152] trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v52 setActive:1];

    topAnchor3 = [(UIDatePicker *)v9->_datePicker topAnchor];
    bottomAnchor = [v26[152] bottomAnchor];
    v55 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    [v55 setActive:1];

    leadingAnchor3 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
    leadingAnchor4 = [contentView4 leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v58 setActive:1];

    trailingAnchor3 = [(UIDatePicker *)v9->_datePicker trailingAnchor];
    trailingAnchor4 = [contentView4 trailingAnchor];
    v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v61 setActive:1];

    bottomAnchor2 = [contentView4 bottomAnchor];
    bottomAnchor3 = [(UIDatePicker *)v9->_datePicker bottomAnchor];
    v64 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  }

  else
  {
    if (bOOLValue)
    {
      v65 = [v27 objectForKeyedSubscript:@"allowMultilineTitleKey"];
      [v26[152] setNumberOfLines:{objc_msgSend(v65, "BOOLValue") ^ 1}];

      topAnchor4 = [v26[152] topAnchor];
      topAnchor5 = [layoutMarginsGuide topAnchor];
      v68 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      [v68 setActive:1];

      leadingAnchor5 = [v26[152] leadingAnchor];
      leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
      v71 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v71 setActive:1];

      bottomAnchor4 = [v26[152] bottomAnchor];
      bottomAnchor5 = [layoutMarginsGuide bottomAnchor];
      v74 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      [v74 setActive:1];

      topAnchor6 = [(UIDatePicker *)v9->_datePicker topAnchor];
      topAnchor7 = [contentView4 topAnchor];
      v77 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
      [v77 setActive:1];

      leadingAnchor7 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
      trailingAnchor5 = [v26[152] trailingAnchor];
      [leadingAnchor7 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:1.0];
    }

    else
    {
      [v26[152] setHidden:1];
      topAnchor8 = [(UIDatePicker *)v9->_datePicker topAnchor];
      topAnchor9 = [contentView4 topAnchor];
      v82 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
      [v82 setActive:1];

      leadingAnchor7 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
      trailingAnchor5 = [contentView4 leadingAnchor];
      [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5];
    }
    v83 = ;
    [v83 setActive:1];

    trailingAnchor6 = [(UIDatePicker *)v9->_datePicker trailingAnchor];
    trailingAnchor7 = [contentView4 trailingAnchor];
    v86 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v86 setActive:1];

    bottomAnchor2 = [(UIDatePicker *)v9->_datePicker bottomAnchor];
    bottomAnchor3 = [contentView4 bottomAnchor];
    v64 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  }

  v87 = v64;
  [v64 setActive:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v26 selector:sel_timeZoneChanged_ name:*MEMORY[0x1E695DA68] object:0];

  specifierCopy = v90;
LABEL_16:

  return v9;
}

void __64__PSDateTimePickerCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) cellTarget];

  if (v3)
  {
    v4 = [*(a1 + 32) cellTarget];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  v8 = [v15 sender];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);

  [MEMORY[0x1E69CA9B0] trackingControlValueChanged:v6 sender:v10];
  v11 = [*(a1 + 40) target];
  v12 = [v11 conformsToProtocol:&unk_1EFEC6610];

  if (v12)
  {
    v13 = [*(a1 + 40) target];
    v14 = [v15 sender];
    [v13 datePickerChanged:v14];
  }
}

- (void)timeZoneChanged:(id)changed
{
  datePicker = self->_datePicker;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(UIDatePicker *)datePicker setTimeZone:systemTimeZone];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSDateTimePickerCell;
  [(PSTableCell *)&v4 dealloc];
}

@end