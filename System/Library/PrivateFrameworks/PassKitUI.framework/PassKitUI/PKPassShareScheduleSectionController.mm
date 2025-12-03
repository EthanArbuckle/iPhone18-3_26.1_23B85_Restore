@interface PKPassShareScheduleSectionController
- (PKPassShareScheduleSectionController)initWithConfiguration:(id)configuration possibleTimeConfiguration:(id)timeConfiguration isEditable:(BOOL)editable isDisabled:(BOOL)disabled delegate:(id)delegate;
- (id)_formattedDate:(id)date;
- (id)cellRegistrationForItem:(id)item;
- (id)decorateCell:(id)cell forScheduleRowItem:(id)item;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_updateRowsIfNecessary;
- (void)decorateDayPicker:(id)picker forScheduleRowItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)setConfiguration:(id)configuration;
- (void)setIsDisabled:(BOOL)disabled;
- (void)timePickerValueDidChange:(id)change;
- (void)toggleValueChanged:(id)changed;
- (void)weekdaySelector:(id)selector didUpdateSelectedWeekdays:(id)weekdays;
@end

@implementation PKPassShareScheduleSectionController

- (PKPassShareScheduleSectionController)initWithConfiguration:(id)configuration possibleTimeConfiguration:(id)timeConfiguration isEditable:(BOOL)editable isDisabled:(BOOL)disabled delegate:(id)delegate
{
  configurationCopy = configuration;
  timeConfigurationCopy = timeConfiguration;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PKPassShareScheduleSectionController;
  v16 = [(PKPassShareSectionController *)&v21 initWithIdentifiers:MEMORY[0x1E695E0F0]];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeStrong(&v17->_possibleTimeConfiguration, timeConfiguration);
    v17->_isEditable = editable;
    v17->_isDisabled = disabled;
    objc_storeStrong(&v17->_delegate, delegate);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tags = v17->_tags;
    v17->_tags = v18;

    [(PKPassShareScheduleSectionController *)v17 _updateRowsIfNecessary];
  }

  return v17;
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);

  [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
}

- (void)setIsDisabled:(BOOL)disabled
{
  if (self->_isDisabled != disabled)
  {
    self->_isDisabled = disabled;
    [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
  }
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  hasDayPicker = [itemCopy hasDayPicker];
  v6 = MEMORY[0x1E69DC800];
  if (hasDayPicker)
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

- (void)decorateDayPicker:(id)picker forScheduleRowItem:(id)item
{
  pickerCopy = picker;
  [pickerCopy setUserInteractionEnabled:1];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [pickerCopy setBackgroundColor:secondarySystemBackgroundColor];

  [pickerCopy setDelegate:self];
  schedules = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
  firstObject = [schedules firstObject];

  schedules2 = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration schedules];
  firstObject2 = [schedules2 firstObject];

  daysOfWeek = [firstObject daysOfWeek];
  daysOfWeek2 = [firstObject2 daysOfWeek];
  [pickerCopy setSelectedDays:daysOfWeek possibleDays:daysOfWeek2];
}

- (id)decorateCell:(id)cell forScheduleRowItem:(id)item
{
  v32[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  configuration = [itemCopy configuration];
  title = [itemCopy title];
  [configuration setText:title];

  value = [itemCopy value];
  [configuration setSecondaryText:value];

  icon = [itemCopy icon];
  if (icon)
  {
    [configuration setImage:icon];
    imageProperties = [configuration imageProperties];
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:0];
    [configuration setImage:v13];

    imageProperties = [configuration imageProperties];
    [MEMORY[0x1E69DC888] clearColor];
  }
  v14 = ;
  [imageProperties setTintColor:v14];

  [configuration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  [cellCopy setContentConfiguration:configuration];
  userInteractionEnabled = [itemCopy userInteractionEnabled];
  if ([itemCopy hasToggle])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v16 setOn:{objc_msgSend(itemCopy, "isOn")}];
    v17 = MEMORY[0x1E696AD98];
    title2 = [itemCopy title];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(title2, "hash")}];

    [v16 setTag:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [(NSMutableDictionary *)self->_tags setObject:itemCopy forKeyedSubscript:v19];
    [v16 addTarget:self action:sel_toggleValueChanged_ forControlEvents:4096];
    [v16 setEnabled:userInteractionEnabled];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v16 placement:1];
    [v20 setMaintainsFixedSize:1];
    v32[0] = v20;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v32;
LABEL_8:
    v28 = [v21 arrayWithObjects:v22 count:1];
    [cellCopy setAccessories:v28];

LABEL_9:
    goto LABEL_10;
  }

  if ([itemCopy hasTimePicker])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DC920]);
    [v16 setDatePickerMode:0];
    [v16 setPreferredDatePickerStyle:3];
    date = [itemCopy date];
    [v16 setDate:date];

    minimumDate = [itemCopy minimumDate];
    [v16 setMinimumDate:minimumDate];

    maximumDate = [itemCopy maximumDate];
    [v16 setMaximumDate:maximumDate];

    [v16 setMinuteInterval:60];
    [v16 setRoundsToMinuteInterval:1];
    [v16 setEnabled:userInteractionEnabled];
    v26 = MEMORY[0x1E696AD98];
    title3 = [itemCopy title];
    v19 = [v26 numberWithUnsignedInteger:{objc_msgSend(title3, "hash")}];

    [v16 setTag:{objc_msgSend(v19, "unsignedIntegerValue")}];
    [(NSMutableDictionary *)self->_tags setObject:itemCopy forKeyedSubscript:v19];
    [v16 addTarget:self action:sel_timePickerValueDidChange_ forControlEvents:4096];
    v20 = [PKDatePickerCellAccessory accessoryWithDatePicker:v16];
    v31 = v20;
    v21 = MEMORY[0x1E695DEC8];
    v22 = &v31;
    goto LABEL_8;
  }

  if ((userInteractionEnabled & 1) != 0 || [itemCopy isSelectable])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v30 = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [cellCopy setAccessories:v19];
    goto LABEL_9;
  }

LABEL_10:
  [cellCopy setConfigurationUpdateHandler:&__block_literal_global_116];
  [cellCopy setUserInteractionEnabled:!self->_isDisabled];

  return configuration;
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

- (void)timePickerValueDidChange:(id)change
{
  v56 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  tags = self->_tags;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(changeCopy, "tag")}];
  v7 = [(NSMutableDictionary *)tags objectForKeyedSubscript:v6];

  schedules = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
  firstObject = [schedules firstObject];
  v10 = firstObject;
  if (firstObject)
  {
    emptySchedule = firstObject;
  }

  else
  {
    emptySchedule = [MEMORY[0x1E69B8A88] emptySchedule];
  }

  v12 = emptySchedule;

  hoursOfDay = [v12 hoursOfDay];
  v14 = hoursOfDay;
  v15 = MEMORY[0x1E695E0F0];
  if (hoursOfDay)
  {
    v15 = hoursOfDay;
  }

  v16 = v15;

  date = [changeCopy date];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  identifier = [v7 identifier];
  v47 = v7;
  v48 = changeCopy;
  v46 = v16;
  if (identifier == @"StartHourRow" || (v20 = identifier) != 0 && (v21 = [(__CFString *)identifier isEqualToString:@"StartHourRow"], v20, v20, v21))
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    integerValue2 = ([currentCalendar component:32 fromDate:date] + 1);

    lastObject = [v16 lastObject];
    integerValue = [lastObject integerValue];

    goto LABEL_16;
  }

  identifier2 = [v7 identifier];
  if (identifier2 != @"EndHourRow")
  {
    integerValue2 = identifier2;
    if (identifier2)
    {
      v27 = [(__CFString *)identifier2 isEqualToString:@"EndHourRow"];

      if (v27)
      {
        goto LABEL_13;
      }

      integerValue2 = 0;
    }

    integerValue = 0;
    goto LABEL_20;
  }

LABEL_13:
  firstObject2 = [v16 firstObject];
  integerValue2 = [firstObject2 integerValue];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v30 = [currentCalendar2 component:32 fromDate:date];

  if (v30)
  {
    integerValue = v30;
  }

  else
  {
    integerValue = 24;
  }

LABEL_16:
  if (integerValue2 > integerValue)
  {
    date2 = [v7 date];
    v32 = v48;
    [v48 setDate:date2 animated:1];

    goto LABEL_26;
  }

LABEL_20:
  v33 = integerValue2;
  do
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
    [v18 addObject:v34];

    v33 = (v33 + 1);
  }

  while ((integerValue + 1) != v33);
  [v12 setHoursOfDay:v18];
  v35 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2];
    v37 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
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
  currentCalendar3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v41 = [currentCalendar3 component:64 fromDate:date];

  v32 = v48;
  if (v41 >= 1)
  {
    currentCalendar4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v43 = [currentCalendar4 components:96 fromDate:date];

    [v43 setMinute:0];
    currentCalendar5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v45 = [currentCalendar5 dateFromComponents:v43];
    [v48 setDate:v45 animated:1];
  }

LABEL_26:
}

- (void)toggleValueChanged:(id)changed
{
  v25[1] = *MEMORY[0x1E69E9840];
  tags = self->_tags;
  v5 = MEMORY[0x1E696AD98];
  changedCopy = changed;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(changedCopy, "tag")}];
  v8 = [(NSMutableDictionary *)tags objectForKeyedSubscript:v7];

  [v8 setIsOn:{objc_msgSend(changedCopy, "isOn")}];
  isOn = [changedCopy isOn];

  identifier = [v8 identifier];
  if (identifier == @"DaysOfWeekRow" || (v11 = identifier) != 0 && (v12 = [(__CFString *)identifier isEqualToString:@"DaysOfWeekRow"], v11, v11, v12))
  {
    p_configuration = &self->_configuration;
    schedules = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    firstObject = [schedules firstObject];

    if (!isOn)
    {
      [firstObject setDaysOfWeek:0];
      goto LABEL_18;
    }

    if (!firstObject)
    {
      firstObject = [MEMORY[0x1E69B8A88] emptySchedule];
    }

    [firstObject setDaysOfWeek:MEMORY[0x1E695E0F0]];
    v16 = *p_configuration;
    v25[0] = firstObject;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v25;
LABEL_15:
    v23 = [v17 arrayWithObjects:v18 count:1];
    [(PKPassShareTimeConfiguration *)v16 setSchedules:v23];

LABEL_18:
    [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate timeConfigurationDidChange:*p_configuration];

    goto LABEL_19;
  }

  identifier2 = [v8 identifier];
  if (identifier2 == @"HoursOfDayRow" || (v20 = identifier2) != 0 && (v21 = [(__CFString *)identifier2 isEqualToString:@"HoursOfDayRow"], v20, v20, v21))
  {
    p_configuration = &self->_configuration;
    schedules2 = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    firstObject = [schedules2 firstObject];

    if (!isOn)
    {
      [firstObject setHoursOfDay:0];
      goto LABEL_18;
    }

    if (!firstObject)
    {
      firstObject = [MEMORY[0x1E69B8A88] emptySchedule];
    }

    [firstObject setHoursOfDay:&unk_1F3CC8438];
    v16 = *p_configuration;
    v24 = firstObject;
    v17 = MEMORY[0x1E695DEC8];
    v18 = &v24;
    goto LABEL_15;
  }

LABEL_19:
  [(PKPassShareScheduleSectionController *)self _updateRowsIfNecessary];
  [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate reloadDataAnimated:1];
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  isSelectable = [itemCopy isSelectable];
  v5 = itemCopy;
  if (isSelectable)
  {
    identifier = [itemCopy identifier];
    v7 = identifier;
    if (identifier != @"StartDateRow")
    {
      if (!identifier)
      {
LABEL_6:

        v5 = itemCopy;
        goto LABEL_7;
      }

      v8 = [(__CFString *)identifier isEqualToString:@"StartDateRow"];

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

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v18[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_showTimeLimitHeader)
  {
    goto LABEL_10;
  }

  identifiers = [(PKPaymentSetupListSectionController *)self identifiers];
  firstObject = [identifiers firstObject];
  v7 = identifierCopy;
  v8 = v7;
  if (firstObject == v7)
  {

    goto LABEL_8;
  }

  if (v7 && firstObject)
  {
    v9 = [firstObject isEqualToString:v7];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18[1] = secondaryLabelColor;
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
  support = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration support];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (support > 1 || !self->_isEditable && ([(PKPassShareTimeConfiguration *)self->_configuration schedules], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v67 = support;
    v68 = v4;
    [v4 addObject:@"DayModifierSection"];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [PKPassShareScheduleRowItem alloc];
    v8 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleD_0.isa);
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v10 = [(PKPassShareScheduleRowItem *)v7 initWithTitle:v8 icon:v9];

    [(PKPassShareScheduleRowItem *)v10 setIdentifier:@"DaysOfWeekRow"];
    [(PKPassShareScheduleRowItem *)v10 setSelectable:0];
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [(PKPassShareScheduleRowItem *)v10 setConfiguration:subtitleCellConfiguration];

    [(PKPassShareScheduleRowItem *)v10 setHasToggle:1];
    [(PKPassShareScheduleRowItem *)v10 setUserInteractionEnabled:self->_isEditable];
    [(NSMutableArray *)v6 addObject:v10];
    schedules = [(PKPassShareTimeConfiguration *)self->_configuration schedules];
    firstObject = [schedules firstObject];

    daysOfWeek = [firstObject daysOfWeek];
    if (daysOfWeek && !self->_isDisabled)
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
    subtitleCellConfiguration2 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [(PKPassShareScheduleRowItem *)v18 setConfiguration:subtitleCellConfiguration2];

    [(PKPassShareScheduleRowItem *)v18 setHasToggle:1];
    [(PKPassShareScheduleRowItem *)v18 setUserInteractionEnabled:self->_isEditable];
    [(NSMutableArray *)v6 addObject:v18];
    v66 = firstObject;
    hoursOfDay = [firstObject hoursOfDay];
    schedules2 = [(PKPassShareTimeConfiguration *)self->_possibleTimeConfiguration schedules];
    firstObject2 = [schedules2 firstObject];
    hoursOfDay2 = [firstObject2 hoursOfDay];

    v24 = v6;
    if (hoursOfDay && !self->_isDisabled)
    {
      [(PKPassShareScheduleRowItem *)v18 setIsOn:1];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
      v27 = [MEMORY[0x1E695DF00] now];
      v28 = [currentCalendar2 components:96 fromDate:v27];

      [v28 setMinute:0];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke;
      aBlock[3] = &unk_1E8019E50;
      v76 = v28;
      v77 = currentCalendar;
      v64 = currentCalendar;
      v63 = v28;
      v29 = _Block_copy(aBlock);
      firstObject3 = [hoursOfDay2 firstObject];
      integerValue = [firstObject3 integerValue];

      v32 = 0;
      if ([hoursOfDay2 count] && integerValue != 1)
      {
        v32 = v29[2](v29);
      }

      lastObject = [hoursOfDay2 lastObject];
      integerValue2 = [lastObject integerValue];

      v35 = 0;
      if ([hoursOfDay2 count] && integerValue2 != 24)
      {
        v35 = (v29[2])(v29, integerValue2);
      }

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __62__PKPassShareScheduleSectionController__updateRowsIfNecessary__block_invoke_2;
      v69[3] = &unk_1E8019E78;
      v70 = v32;
      v71 = v35;
      v74 = v29;
      selfCopy = self;
      v73 = v24;
      v62 = v35;
      v61 = v32;
      v60 = v29;
      v36 = _Block_copy(v69);
      v37 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleS.isa);
      firstObject4 = [hoursOfDay firstObject];
      v36[2](v36, v37, @"StartHourRow", [firstObject4 integerValue] - 1);

      v39 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleE.isa);
      lastObject2 = [hoursOfDay lastObject];
      v36[2](v36, v39, @"EndHourRow", [lastObject2 integerValue]);
    }

    dayRowItems = self->_dayRowItems;
    self->_dayRowItems = v24;

    v4 = v68;
    support = v67;
  }

  if (!support)
  {
    if (self->_isEditable)
    {
      goto LABEL_19;
    }

    startDate = [(PKPassShareTimeConfiguration *)self->_configuration startDate];
    if (startDate)
    {
    }

    else
    {
      expirationDate = [(PKPassShareTimeConfiguration *)self->_configuration expirationDate];

      if (!expirationDate)
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
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [(PKPassShareScheduleRowItem *)v44 setConfiguration:valueCellConfiguration];

  startDate2 = [(PKPassShareTimeConfiguration *)self->_configuration startDate];
  v47 = [(PKPassShareScheduleSectionController *)self _formattedDate:startDate2];
  [(PKPassShareScheduleRowItem *)v44 setValue:v47];

  v48 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  [(PKPassShareScheduleRowItem *)v44 setIcon:v48];

  v49 = [PKPassShareScheduleRowItem alloc];
  v50 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleE_0.isa);
  v51 = [(PKPassShareScheduleRowItem *)v49 initWithTitle:v50 icon:0];

  [(PKPassShareScheduleRowItem *)v51 setIdentifier:@"EndDateRow"];
  [(PKPassShareScheduleRowItem *)v51 setSelectable:self->_isEditable];
  [(PKPassShareScheduleRowItem *)v51 setUserInteractionEnabled:self->_isEditable];
  valueCellConfiguration2 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [(PKPassShareScheduleRowItem *)v51 setConfiguration:valueCellConfiguration2];

  expirationDate2 = [(PKPassShareTimeConfiguration *)self->_configuration expirationDate];
  v54 = [(PKPassShareScheduleSectionController *)self _formattedDate:expirationDate2];
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

- (id)_formattedDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    v7 = @"SHARE_SCHEDULE_DATE_NEVER";
    goto LABEL_5;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar isDateInToday:dateCopy];

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

  v8 = [(NSDateFormatter *)formatter stringFromDate:dateCopy];
LABEL_9:
  v12 = v8;

  return v12;
}

- (void)weekdaySelector:(id)selector didUpdateSelectedWeekdays:(id)weekdays
{
  v14[1] = *MEMORY[0x1E69E9840];
  configuration = self->_configuration;
  weekdaysCopy = weekdays;
  schedules = [(PKPassShareTimeConfiguration *)configuration schedules];
  firstObject = [schedules firstObject];
  v9 = firstObject;
  if (firstObject)
  {
    emptySchedule = firstObject;
  }

  else
  {
    emptySchedule = [MEMORY[0x1E69B8A88] emptySchedule];
  }

  v11 = emptySchedule;

  [v11 setDaysOfWeek:weekdaysCopy];
  v12 = self->_configuration;
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(PKPassShareTimeConfiguration *)v12 setSchedules:v13];

  [(PKPassShareScheduleSectionControllerDelegate *)self->_delegate timeConfigurationDidChange:self->_configuration];
}

@end