@interface PSDateTimePickerCell
- (PSDateTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)dealloc;
- (void)timeZoneChanged:(id)a3;
@end

@implementation PSDateTimePickerCell

- (PSDateTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v94.receiver = self;
  v94.super_class = PSDateTimePickerCell;
  v9 = [(PSTableCell *)&v94 initWithStyle:a3 reuseIdentifier:a4];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = [v8 target];
  if (([v10 conformsToProtocol:&unk_1EFEC6610] & 1) == 0)
  {

    goto LABEL_6;
  }

  v11 = [v8 target];
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
    v13 = [MEMORY[0x1E695DFE8] systemTimeZone];
    [(UIDatePicker *)v23 setTimeZone:v13];
    goto LABEL_7;
  }

  v13 = [v8 target];
  v14 = [v13 datePickerForSpecifier:v8];
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
  v90 = v8;
  v27 = v8;
  v93 = v27;
  v28 = [v25 actionWithHandler:v91];
  [(UIDatePicker *)v24 addAction:v28 forControlEvents:4096];

  v29 = objc_opt_new();
  v30 = v26[152];
  v26[152] = v29;

  v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v26[152] setFont:v31];

  v32 = [MEMORY[0x1E69DC888] labelColor];
  [v26[152] setTextColor:v32];

  [v26[152] setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [v26 contentView];
  [v33 addSubview:v26[152]];

  [(UIDatePicker *)v9->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIDatePicker *)v9->_datePicker setClipsToBounds:1];
  v34 = [v26 contentView];
  [v34 addSubview:v9->_datePicker];

  v35 = [v27 propertyForKey:@"InlineDatePicker"];
  v36 = [v35 BOOLValue];

  v37 = [MEMORY[0x1E69DC668] sharedApplication];
  v38 = [v37 preferredContentSizeCategory];
  v39 = 0;
  if (UIContentSizeCategoryIsAccessibilityCategory(v38))
  {
    v40 = [MEMORY[0x1E69DC938] currentDevice];
    v39 = [v40 sf_isiPhone] & v36;
  }

  v41 = [v26 contentView];
  v42 = [v41 layoutMarginsGuide];

  v43 = [v26 contentView];
  if (v39)
  {
    [v26[152] setNumberOfLines:0];
    v44 = [v26[152] topAnchor];
    v45 = [v42 topAnchor];
    v46 = [v44 constraintEqualToSystemSpacingBelowAnchor:v45 multiplier:1.0];
    [v46 setActive:1];

    v47 = [v26[152] leadingAnchor];
    v48 = [v42 leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [v26[152] trailingAnchor];
    v51 = [v42 trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [(UIDatePicker *)v9->_datePicker topAnchor];
    v54 = [v26[152] bottomAnchor];
    v55 = [v53 constraintEqualToSystemSpacingBelowAnchor:v54 multiplier:1.0];
    [v55 setActive:1];

    v56 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
    v57 = [v43 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [v58 setActive:1];

    v59 = [(UIDatePicker *)v9->_datePicker trailingAnchor];
    v60 = [v43 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [v61 setActive:1];

    v62 = [v43 bottomAnchor];
    v63 = [(UIDatePicker *)v9->_datePicker bottomAnchor];
    v64 = [v62 constraintEqualToSystemSpacingBelowAnchor:v63 multiplier:1.0];
  }

  else
  {
    if (v36)
    {
      v65 = [v27 objectForKeyedSubscript:@"allowMultilineTitleKey"];
      [v26[152] setNumberOfLines:{objc_msgSend(v65, "BOOLValue") ^ 1}];

      v66 = [v26[152] topAnchor];
      v67 = [v42 topAnchor];
      v68 = [v66 constraintEqualToAnchor:v67];
      [v68 setActive:1];

      v69 = [v26[152] leadingAnchor];
      v70 = [v42 leadingAnchor];
      v71 = [v69 constraintEqualToAnchor:v70];
      [v71 setActive:1];

      v72 = [v26[152] bottomAnchor];
      v73 = [v42 bottomAnchor];
      v74 = [v72 constraintEqualToAnchor:v73];
      [v74 setActive:1];

      v75 = [(UIDatePicker *)v9->_datePicker topAnchor];
      v76 = [v43 topAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];
      [v77 setActive:1];

      v78 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
      v79 = [v26[152] trailingAnchor];
      [v78 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v79 multiplier:1.0];
    }

    else
    {
      [v26[152] setHidden:1];
      v80 = [(UIDatePicker *)v9->_datePicker topAnchor];
      v81 = [v43 topAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];
      [v82 setActive:1];

      v78 = [(UIDatePicker *)v9->_datePicker leadingAnchor];
      v79 = [v43 leadingAnchor];
      [v78 constraintEqualToAnchor:v79];
    }
    v83 = ;
    [v83 setActive:1];

    v84 = [(UIDatePicker *)v9->_datePicker trailingAnchor];
    v85 = [v43 trailingAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    [v86 setActive:1];

    v62 = [(UIDatePicker *)v9->_datePicker bottomAnchor];
    v63 = [v43 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
  }

  v87 = v64;
  [v64 setActive:1];

  v88 = [MEMORY[0x1E696AD88] defaultCenter];
  [v88 addObserver:v26 selector:sel_timeZoneChanged_ name:*MEMORY[0x1E695DA68] object:0];

  v8 = v90;
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

- (void)timeZoneChanged:(id)a3
{
  datePicker = self->_datePicker;
  v4 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(UIDatePicker *)datePicker setTimeZone:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSDateTimePickerCell;
  [(PSTableCell *)&v4 dealloc];
}

@end