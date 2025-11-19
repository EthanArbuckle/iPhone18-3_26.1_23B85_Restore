@interface PKPassShareScheduleSectionController
- (PKPassShareScheduleSectionController)initWithConfiguration:(id)a3 possibleTimeConfiguration:(id)a4 isEditable:(BOOL)a5 isDisabled:(BOOL)a6 delegate:(id)a7;
- (id)_formattedDate:(id)a3;
- (id)cellRegistrationForItem:(id)a3;
- (id)decorateCell:(id)a3 forScheduleRowItem:(id)a4;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_updateRowsIfNecessary;
- (void)decorateDayPicker:(id)a3 forScheduleRowItem:(id)a4;
- (void)didSelectItem:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setIsDisabled:(BOOL)a3;
- (void)timePickerValueDidChange:(id)a3;
- (void)toggleValueChanged:(id)a3;
- (void)weekdaySelector:(id)a3 didUpdateSelectedWeekdays:(id)a4;
@end

@implementation PKPassShareScheduleSectionController

- (PKPassShareScheduleSectionController)initWithConfiguration:(id)a3 possibleTimeConfiguration:(id)a4 isEditable:(BOOL)a5 isDisabled:(BOOL)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = PKPassShareScheduleSectionController;
  v16 = [(PKPassShareSectionController *)&v21 initWithIdentifiers:MEMORY[0x1E695E0F0]];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_configuration, a3);
    objc_storeStrong(&v17->_possibleTimeConfiguration, a4);
    v17->_isEditable = a5;
    v17->_isDisabled = a6;
    objc_storeStrong(&v17->_delegate, a7);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tags = v17->_tags;
    v17->_tags = v18;

    [(PKPassShareScheduleSectionController *)v17 _updateRowsIfNecessary];
  }

  return v17;
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);

  [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
}

- (void)setIsDisabled:(BOOL)a3
{
  if (self->_isDisabled != a3)
  {
    self->_isDisabled = a3;
    [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
  }
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 hasDayPicker];
  v6 = MEMORY[0x1E69DC800];
  if (v5)
  {
    v7 = objc_opt_class();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PKPassShareScheduleSectionController_cellRegistrationForItem___block_invoke;
    v15[3] = &unk_1E8019E28;
    v8 = &v16;
    objc_copyWeak(&v16, &location);
    v9 = [v6 registrationWithCellClass:v7 configurationHandler:v15];
  }

  else
  {
    v10 = objc_opt_class();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__PKPassShareScheduleSectionController_cellRegistrationForItem___block_invoke_2;
    v13[3] = &unk_1E8012088;
    v8 = &v14;
    objc_copyWeak(&v14, &location);
    v9 = [v6 registrationWithCellClass:v10 configurationHandler:v13];
  }

  v11 = v9;
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v11;
}

void __64__PKPassShareScheduleSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained decorateDayPicker:v8 forScheduleRowItem:v6];
  }
}

void __64__PKPassShareScheduleSectionController_cellRegistrationForItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateCell:v9 forScheduleRowItem:v6];
  }
}

- (void)decorateDayPicker:(id)a3 forScheduleRowItem:(id)a4
{
  v5 = a3;
  [v5 setUserInteractionEnabled:1];
  v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v5 setDelegate:self];
  v7 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
  v12 = [v7 firstObject];

  v8 = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration schedules];
  v9 = [v8 firstObject];

  v10 = [v12 daysOfWeek];
  v11 = [v9 daysOfWeek];
  [v5 setSelectedDays:v10 possibleDays:v11];
}

- (id)decorateCell:(id)a3 forScheduleRowItem:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 configuration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 value];
  [v8 setSecondaryText:v10];

  v11 = [v7 icon];
  if (v11)
  {
    [v8 setImage:v11];
    v12 = [v8 imageProperties];
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:0];
    [v8 setImage:v13];

    v12 = [v8 imageProperties];
    [MEMORY[0x1E69DC888] clearColor];
  }
  v14 = ;
  [v12 setTintColor:v14];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  [v6 setContentConfiguration:v8];
  v15 = [v7 userInteractionEnabled];
  if ([v7 hasToggle])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v16 setOn:{objc_msgSend(v7, "isOn")}];
    v17 = MEMORY[0x1E696AD98];
    v18 = [v7 title];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "hash")}];

    [v16 setTag:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [(NSMutableDictionary *)self->_tags setObject:v7 forKeyedSubscript:v19];
    [v16 addTarget:self action:sel_toggleValueChanged_ forControlEvents:4096];
    [v16 setEnabled:v15];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v16 placement:1];
    [v20 setMaintainsFixedSize:1];
    v32[0] = v20;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v32;
LABEL_8:
    v28 = [v21 arrayWithObjects:v22 count:1];
    [v6 setAccessories:v28];

LABEL_9:
    goto LABEL_10;
  }

  if ([v7 hasTimePicker])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DC920]);
    [v16 setDatePickerMode:0];
    [v16 setPreferredDatePickerStyle:3];
    v23 = [v7 date];
    [v16 setDate:v23];

    v24 = [v7 minimumDate];
    [v16 setMinimumDate:v24];

    v25 = [v7 maximumDate];
    [v16 setMaximumDate:v25];

    [v16 setMinuteInterval:60];
    [v16 setRoundsToMinuteInterval:1];
    [v16 setEnabled:v15];
    v26 = MEMORY[0x1E696AD98];
    v27 = [v7 title];
    v19 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "hash")}];

    [v16 setTag:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [(NSMutableDictionary *)self->_tags setObject:v7 forKeyedSubscript:v19];
    [v16 addTarget:self action:sel_timePickerValueDidChange_ forControlEvents:4096];
    v20 = [PKDatePickerCellAccessory accessoryWithDatePicker:v16];
    v31 = v20;
    v21 = MEMORY[0x1E695DEC8];
    v22 = &v31;
    goto LABEL_8;
  }

  if ((v15 & 1) != 0 || [v7 isSelectable])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v30 = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v6 setAccessories:v19];
    goto LABEL_9;
  }

LABEL_10:
  [v6 setConfigurationUpdateHandler:&__block_literal_global_116];
  [v6 setUserInteractionEnabled:!self->_isDisabled];

  return v8;
}

void __72__PKPassShareScheduleSectionController_decorateCell_forScheduleRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (void)timePickerValueDidChange:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  tags = self->_tags;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "tag")}];
  v7 = [(NSMutableDictionary *)tags objectForKeyedSubscript:v6];

  v8 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
  v9 = [v8 firstObject];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69B8A88] emptySchedule];
  }

  v12 = v11;

  v13 = [v12 hoursOfDay];
  v14 = v13;
  v15 = MEMORY[0x1E695E0F0];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v4 date];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v7 identifier];
  v47 = v7;
  v48 = v4;
  v46 = v16;
  if (v19 == @"StartHourRow" || (v20 = v19) != 0 && (v21 = [(__CFString *)v19 isEqualToString:@"StartHourRow"], v20, v20, v21))
  {
    v22 = [MEMORY[0x1E695DEE8] currentCalendar];
    v23 = ([v22 component:32 fromDate:v17] + 1);

    v24 = [v16 lastObject];
    v25 = [v24 integerValue];

    goto LABEL_16;
  }

  v26 = [v7 identifier];
  if (v26 != @"EndHourRow")
  {
    v23 = v26;
    if (v26)
    {
      v27 = [(__CFString *)v26 isEqualToString:@"EndHourRow"];

      if (v27)
      {
        goto LABEL_13;
      }

      v23 = 0;
    }

    v25 = 0;
    goto LABEL_20;
  }

LABEL_13:
  v28 = [v16 firstObject];
  v23 = [v28 integerValue];

  v29 = [MEMORY[0x1E695DEE8] currentCalendar];
  v30 = [v29 component:32 fromDate:v17];

  if (v30)
  {
    v25 = v30;
  }

  else
  {
    v25 = 24;
  }

LABEL_16:
  if (v23 > v25)
  {
    v31 = [v7 date];
    v32 = v48;
    [v48 setDate:v31 animated:1];

    goto LABEL_26;
  }

LABEL_20:
  v33 = v23;
  do
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
    [v18 addObject:v34];

    v33 = (v33 + 1);
  }

  while ((v25 + 1) != v33);
  [v12 setHoursOfDay:v18];
  v35 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
    v37 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
    *buf = 138412802;
    v51 = v36;
    v52 = 2112;
    v53 = v37;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&dword_1BD026000, v35, OS_LOG_TYPE_DEFAULT, "TimeConfiguration: Updated startHour: %@ endHour: %@. New Hours: %@", buf, 0x20u);
  }

  configuration = self->_configuration;
  v49 = v12;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [(PKPassShareTimeConfiguration *)configuration setSchedules:v39];

  [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate timeConfigurationDidChange:self->_configuration];
  v40 = [MEMORY[0x1E695DEE8] currentCalendar];
  v41 = [v40 component:64 fromDate:v17];

  v32 = v48;
  if (v41 >= 1)
  {
    v42 = [MEMORY[0x1E695DEE8] currentCalendar];
    v43 = [v42 components:96 fromDate:v17];

    [v43 setMinute:0];
    v44 = [MEMORY[0x1E695DEE8] currentCalendar];
    v45 = [v44 dateFromComponents:v43];
    [v48 setDate:v45 animated:1];
  }

LABEL_26:
}

- (void)toggleValueChanged:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  tags = self->_tags;
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "tag")}];
  v8 = [(NSMutableDictionary *)tags objectForKeyedSubscript:v7];

  [v8 setIsOn:{objc_msgSend(v6, "isOn")}];
  v9 = [v6 isOn];

  v10 = [v8 identifier];
  if (v10 == @"DaysOfWeekRow" || (v11 = v10) != 0 && (v12 = [(__CFString *)v10 isEqualToString:@"DaysOfWeekRow"], v11, v11, v12))
  {
    p_configuration = &self->_configuration;
    v14 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    v15 = [v14 firstObject];

    if (!v9)
    {
      [v15 setDaysOfWeek:0];
      goto LABEL_18;
    }

    if (!v15)
    {
      v15 = [MEMORY[0x1E69B8A88] emptySchedule];
    }

    [v15 setDaysOfWeek:MEMORY[0x1E695E0F0]];
    v16 = *p_configuration;
    v25[0] = v15;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v25;
LABEL_15:
    v23 = [v17 arrayWithObjects:v18 count:1];
    [(PKPassShareTimeConfiguration *)v16 setSchedules:v23];

LABEL_18:
    [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate timeConfigurationDidChange:*p_configuration];

    goto LABEL_19;
  }

  v19 = [v8 identifier];
  if (v19 == @"HoursOfDayRow" || (v20 = v19) != 0 && (v21 = [(__CFString *)v19 isEqualToString:@"HoursOfDayRow"], v20, v20, v21))
  {
    p_configuration = &self->_configuration;
    v22 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    v15 = [v22 firstObject];

    if (!v9)
    {
      [v15 setHoursOfDay:0];
      goto LABEL_18;
    }

    if (!v15)
    {
      v15 = [MEMORY[0x1E69B8A88] emptySchedule];
    }

    [v15 setHoursOfDay:&unk_1F3CC8438];
    v16 = *p_configuration;
    v24 = v15;
    v17 = MEMORY[0x1E695DEC8];
    v18 = &v24;
    goto LABEL_15;
  }

LABEL_19:
  [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
  [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate reloadDataAnimated:1];
}

- (void)didSelectItem:(id)a3
{
  v12 = a3;
  v4 = [v12 isSelectable];
  v5 = v12;
  if (v4)
  {
    v6 = [v12 identifier];
    v7 = v6;
    if (v6 != @"StartDateRow")
    {
      if (!v6)
      {
LABEL_6:

        v5 = v12;
        goto LABEL_7;
      }

      v8 = [(__CFString *)v6 isEqualToString:@"StartDateRow"];

      if (!v8)
      {
        v9 = v7;
        if (v9 == @"EndDateRow" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"EndDateRow"], v10, v11))
        {
          [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate didSelectEditEndDate];
        }

        goto LABEL_6;
      }
    }

    [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate didSelectEditStartDate];
    goto LABEL_6;
  }

LABEL_7:
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (PKEqualObjects())
  {
    v7 = &OBJC_IVAR___PKPassShareScheduleSectionController__dayRowItems;
  }

  else
  {
    if (!PKEqualObjects())
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR___PKPassShareScheduleSectionController__dateRowItems;
  }

  [v6 appendItems:*(&self->super.super.super.isa + *v7)];
LABEL_6:

  return v6;
}

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_showTimeLimitHeader)
  {
    goto LABEL_10;
  }

  v5 = [(PKPaymentSetupListSectionController *)self identifiers];
  v6 = [v5 firstObject];
  v7 = v4;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (v7 && v6)
  {
    v9 = [v6 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v10 = PKLocalizedShareableCredentialString(&cfstr_ShareSchedules_3.isa);
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v17[0] = *MEMORY[0x1E69DB648];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
    v18[0] = v12;
    v17[1] = *MEMORY[0x1E69DB650];
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15 = [v11 initWithString:v10 attributes:v14];

    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

- (void)_updateRowsIfNecessary
{
  v78[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration support];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3 > 1 || !self->_isEditable && ([(PKPassShareTimeConfiguration *)self->_configuration schedules], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v67 = v3;
    v68 = v4;
    [v4 addObject:@"DayModifierSection"];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [PKPassShareScheduleRowItem alloc];
    v8 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleD_0.isa);
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v10 = [(PKPassShareScheduleRowItem *)v7 initWithTitle:v8 icon:v9];

    [(PKPassShareScheduleRowItem *)v10 setIdentifier:@"DaysOfWeekRow"];
    [(PKPassShareScheduleRowItem *)v10 setSelectable:0];
    v11 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [(PKPassShareScheduleRowItem *)v10 setConfiguration:v11];

    [(PKPassShareScheduleRowItem *)v10 setHasToggle:1];
    [(PKPassShareScheduleRowItem *)v10 setUserInteractionEnabled:self->_isEditable];
    [(NSMutableArray *)v6 addObject:v10];
    v12 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    v13 = [v12 firstObject];

    v65 = [v13 daysOfWeek];
    if (v65 && !self->_isDisabled)
    {
      [(PKPassShareScheduleRowItem *)v10 setIsOn:1];
      v14 = [[PKPassShareScheduleRowItem alloc] initWithTitle:0 icon:0];
      [(PKPassShareScheduleRowItem *)v14 setIdentifier:@"DaysSelectionRow"];
      [(PKPassShareScheduleRowItem *)v14 setHasDayPicker:1];
      [(PKPassShareScheduleRowItem *)v14 setUserInteractionEnabled:self->_isEditable];
      [(NSMutableArray *)v6 addObject:v14];
    }

    v15 = [PKPassShareScheduleRowItem alloc];
    v16 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleT.isa);
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.fill"];
    v18 = [(PKPassShareScheduleRowItem *)v15 initWithTitle:v16 icon:v17];

    [(PKPassShareScheduleRowItem *)v18 setIdentifier:@"HoursOfDayRow"];
    [(PKPassShareScheduleRowItem *)v18 setSelectable:0];
    v19 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [(PKPassShareScheduleRowItem *)v18 setConfiguration:v19];

    [(PKPassShareScheduleRowItem *)v18 setHasToggle:1];
    [(PKPassShareScheduleRowItem *)v18 setUserInteractionEnabled:self->_isEditable];
    [(NSMutableArray *)v6 addObject:v18];
    v66 = v13;
    v20 = [v13 hoursOfDay];
    v21 = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration schedules];
    v22 = [v21 firstObject];
    v23 = [v22 hoursOfDay];

    v24 = v6;
    if (v20 && !self->_isDisabled)
    {
      [(PKPassShareScheduleRowItem *)v18 setIsOn:1];
      v25 = [MEMORY[0x1E695DEE8] currentCalendar];
      v26 = [MEMORY[0x1E695DEE8] currentCalendar];
      v27 = [MEMORY[0x1E695DF00] now];
      v28 = [v26 components:96 fromDate:v27];

      [v28 setMinute:0];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke;
      aBlock[3] = &unk_1E8019E50;
      v76 = v28;
      v77 = v25;
      v64 = v25;
      v63 = v28;
      v29 = _Block_copy(aBlock);
      v30 = [v23 firstObject];
      v31 = [v30 integerValue];

      v32 = 0;
      if ([v23 count] && v31 != 1)
      {
        v32 = v29[2](v29);
      }

      v33 = [v23 lastObject];
      v34 = [v33 integerValue];

      v35 = 0;
      if ([v23 count] && v34 != 24)
      {
        v35 = (v29[2])(v29, v34);
      }

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke_2;
      v69[3] = &unk_1E8019E78;
      v70 = v32;
      v71 = v35;
      v74 = v29;
      v72 = self;
      v73 = v24;
      v62 = v35;
      v61 = v32;
      v60 = v29;
      v36 = _Block_copy(v69);
      v37 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleS.isa);
      v38 = [v20 firstObject];
      v36[2](v36, v37, @"StartHourRow", [v38 integerValue] - 1);

      v39 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleE.isa);
      v40 = [v20 lastObject];
      v36[2](v36, v39, @"EndHourRow", [v40 integerValue]);
    }

    dayRowItems = self->_dayRowItems;
    self->_dayRowItems = v24;

    v4 = v68;
    v3 = v67;
  }

  if (!v3)
  {
    if (self->_isEditable)
    {
      goto LABEL_19;
    }

    v58 = [(PKPassShareTimeConfiguration *)self->_configuration startDate];
    if (v58)
    {
    }

    else
    {
      v59 = [(PKPassShareTimeConfiguration *)self->_configuration expirationDate];

      if (!v59)
      {
        goto LABEL_19;
      }
    }
  }

  [v4 addObject:@"DateModifierSection"];
  v42 = [PKPassShareScheduleRowItem alloc];
  v43 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleS_0.isa);
  v44 = [(PKPassShareScheduleRowItem *)v42 initWithTitle:v43 icon:0];

  [(PKPassShareScheduleRowItem *)v44 setIdentifier:@"StartDateRow"];
  [(PKPassShareScheduleRowItem *)v44 setSelectable:self->_isEditable];
  [(PKPassShareScheduleRowItem *)v44 setUserInteractionEnabled:self->_isEditable];
  v45 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [(PKPassShareScheduleRowItem *)v44 setConfiguration:v45];

  v46 = [(PKPassShareTimeConfiguration *)self->_configuration startDate];
  v47 = [(PKPassShareScheduleSectionController *)self _formattedDate:v46];
  [(PKPassShareScheduleRowItem *)v44 setValue:v47];

  v48 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  [(PKPassShareScheduleRowItem *)v44 setIcon:v48];

  v49 = [PKPassShareScheduleRowItem alloc];
  v50 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleE_0.isa);
  v51 = [(PKPassShareScheduleRowItem *)v49 initWithTitle:v50 icon:0];

  [(PKPassShareScheduleRowItem *)v51 setIdentifier:@"EndDateRow"];
  [(PKPassShareScheduleRowItem *)v51 setSelectable:self->_isEditable];
  [(PKPassShareScheduleRowItem *)v51 setUserInteractionEnabled:self->_isEditable];
  v52 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [(PKPassShareScheduleRowItem *)v51 setConfiguration:v52];

  v53 = [(PKPassShareTimeConfiguration *)self->_configuration expirationDate];
  v54 = [(PKPassShareScheduleSectionController *)self _formattedDate:v53];
  [(PKPassShareScheduleRowItem *)v51 setValue:v54];

  v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  [(PKPassShareScheduleRowItem *)v51 setIcon:v55];

  v78[0] = v44;
  v78[1] = v51;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  dateRowItems = self->_dateRowItems;
  self->_dateRowItems = v56;

LABEL_19:
  [(PKPaymentSetupListSectionController *)self setIdentifiers:v4];
}

uint64_t __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setHour:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 dateFromComponents:v4];
}

void __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [[PKPassShareScheduleRowItem alloc] initWithTitle:v6 icon:0];

  [(PKPassShareScheduleRowItem *)v9 setIdentifier:v5];
  [(PKPassShareScheduleRowItem *)v9 setSelectable:0];
  v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [(PKPassShareScheduleRowItem *)v9 setConfiguration:v7];

  [(PKPassShareScheduleRowItem *)v9 setHasTimePicker:1];
  v8 = (*(*(a1 + 64) + 16))();
  [(PKPassShareScheduleRowItem *)v9 setDate:v8];

  [(PKPassShareScheduleRowItem *)v9 setMinimumDate:*(a1 + 32)];
  [(PKPassShareScheduleRowItem *)v9 setMaximumDate:*(a1 + 40)];
  [(PKPassShareScheduleRowItem *)v9 setUserInteractionEnabled:*(*(a1 + 48) + 104)];
  [*(a1 + 56) addObject:v9];
}

- (id)_formattedDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = @"SHARE_SCHEDULE_DATE_NEVER";
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 isDateInToday:v4];

  if (v6)
  {
    v7 = @"SHARE_SCHEDULE_DATE_TODAY";
LABEL_5:
    v8 = PKLocalizedShareableCredentialString(&v7->isa);
    goto LABEL_9;
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v11 = self->_formatter;
    self->_formatter = v10;

    [(NSDateFormatter *)self->_formatter setLocalizedDateFormatFromTemplate:@"E, d MMM, yyyy"];
    formatter = self->_formatter;
  }

  v8 = [(NSDateFormatter *)formatter stringFromDate:v4];
LABEL_9:
  v12 = v8;

  return v12;
}

- (void)weekdaySelector:(id)a3 didUpdateSelectedWeekdays:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  configuration = self->_configuration;
  v6 = a4;
  v7 = [(PKPassShareTimeConfiguration *)configuration schedules];
  v8 = [v7 firstObject];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69B8A88] emptySchedule];
  }

  v11 = v10;

  [v11 setDaysOfWeek:v6];
  v12 = self->_configuration;
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(PKPassShareTimeConfiguration *)v12 setSchedules:v13];

  [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate timeConfigurationDidChange:self->_configuration];
}

@end