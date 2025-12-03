@interface SCLTimePickerTableViewCell
- (SCLTimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SCLTimePickerTableViewCellDelegate)delegate;
- (void)_updateConstraintModeWithInterval:(id)interval selectedDate:(id)date;
- (void)datePickerDidChangeDate:(id)date;
- (void)setCalendar:(id)calendar;
- (void)setConstraintInterval:(id)interval;
- (void)setSelectedDate:(id)date;
@end

@implementation SCLTimePickerTableViewCell

- (SCLTimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32[3] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = SCLTimePickerTableViewCell;
  v4 = [(SCLTimePickerTableViewCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_constraintMode = 0;
    v6 = objc_alloc(MEMORY[0x277D753E8]);
    contentView = [(SCLTimePickerTableViewCell *)v5 contentView];
    [contentView frame];
    v8 = [v6 initWithFrame:?];
    datePicker = v5->_datePicker;
    v5->_datePicker = v8;

    [(UIDatePicker *)v5->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)v5->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v5->_datePicker setPreferredDatePickerStyle:1];
    [(UIDatePicker *)v5->_datePicker addTarget:v5 action:sel_datePickerDidChangeDate_ forControlEvents:4096];
    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v10;

    [(NSDateFormatter *)v5->_dateFormatter setTimeStyle:1];
    [(NSDateFormatter *)v5->_dateFormatter setDateStyle:1];
    v12 = objc_alloc_init(MEMORY[0x277CCA978]);
    intervalFormatter = v5->_intervalFormatter;
    v5->_intervalFormatter = v12;

    [(NSDateIntervalFormatter *)v5->_intervalFormatter setTimeStyle:1];
    [(NSDateIntervalFormatter *)v5->_intervalFormatter setDateStyle:1];
    [(UIDatePicker *)v5->_datePicker sizeToFit];
    contentView2 = [(SCLTimePickerTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_datePicker];

    topAnchor = [(UIDatePicker *)v5->_datePicker topAnchor];
    contentView3 = [(SCLTimePickerTableViewCell *)v5 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(UIDatePicker *)v5->_datePicker bottomAnchor];
    contentView4 = [(SCLTimePickerTableViewCell *)v5 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    centerXAnchor = [(UIDatePicker *)v5->_datePicker centerXAnchor];
    contentView5 = [(SCLTimePickerTableViewCell *)v5 contentView];
    centerXAnchor2 = [contentView5 centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    v27 = MEMORY[0x277CCAAD0];
    v32[0] = v18;
    v32[1] = v22;
    v32[2] = v26;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    [v27 activateConstraints:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setCalendar:(id)calendar
{
  datePicker = self->_datePicker;
  calendarCopy = calendar;
  [(UIDatePicker *)datePicker setCalendar:calendarCopy];
  v5 = self->_datePicker;
  timeZone = [calendarCopy timeZone];
  [(UIDatePicker *)v5 setTimeZone:timeZone];

  [(NSDateIntervalFormatter *)self->_intervalFormatter setCalendar:calendarCopy];
  [(NSDateFormatter *)self->_dateFormatter setCalendar:calendarCopy];
}

- (void)setConstraintInterval:(id)interval
{
  intervalCopy = interval;
  v5 = [intervalCopy copy];
  constraintInterval = self->_constraintInterval;
  self->_constraintInterval = v5;

  date = [(UIDatePicker *)self->_datePicker date];
  [(SCLTimePickerTableViewCell *)self _updateConstraintModeWithInterval:intervalCopy selectedDate:date];
}

- (void)setSelectedDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  datePicker = [(SCLTimePickerTableViewCell *)self datePicker];
  date = [datePicker date];
  v7 = [dateCopy isEqualToDate:date];

  v8 = scl_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:dateCopy];
    v11 = 138412546;
    v12 = v9;
    v13 = 1024;
    v14 = v7 ^ 1;
    _os_log_impl(&dword_26486D000, v8, OS_LOG_TYPE_INFO, "Set Selected Date: %@; shouldSet=%{BOOL}d", &v11, 0x12u);
  }

  if ((v7 & 1) == 0)
  {
    [(UIDatePicker *)self->_datePicker setDate:dateCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)datePickerDidChangeDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [dateCopy date];
  v6 = scl_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:date];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_constraintMode];
    *buf = 138412546;
    v35 = v7;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_26486D000, v6, OS_LOG_TYPE_INFO, "Did pick date: %@; constraintMode = %@", buf, 0x16u);
  }

  if (self->_constraintMode == 2 && ![(NSDateInterval *)self->_constraintInterval containsDate:date])
  {
    calendar = [(SCLTimePickerTableViewCell *)self calendar];
    v10 = [calendar components:96 fromDate:date];
    if ([v10 hour] || objc_msgSend(v10, "minute"))
    {
      startDate = [(NSDateInterval *)self->_constraintInterval startDate];
      v12 = [calendar components:33022 fromDate:startDate];

      v13 = [v12 copy];
      [v13 setHour:{objc_msgSend(v10, "hour")}];
      [v13 setMinute:{objc_msgSend(v10, "minute")}];
      v14 = [calendar dateFromComponents:v13];

      if ([(NSDateInterval *)self->_constraintInterval containsDate:v14])
      {
        v15 = scl_framework_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v33 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v14];
          dateFormatter = self->_dateFormatter;
          date2 = [dateCopy date];
          v17 = [(NSDateFormatter *)dateFormatter stringFromDate:date2];
          *buf = 138412546;
          v35 = v33;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_26486D000, v15, OS_LOG_TYPE_INFO, "Normalizing back to date %@ from %@", buf, 0x16u);
        }

        [dateCopy setDate:v14 animated:0];
      }

      else
      {
        v32 = calendar;
        hour = [v10 hour];
        v19 = [v10 minute] + 60 * hour;
        hour2 = [v12 hour];
        v21 = [v12 minute]- v19 + 60 * hour2;
        if (v21 < 0)
        {
          v21 = -v21;
        }

        constraintInterval = self->_constraintInterval;
        if (v21 <= v19)
        {
          [(NSDateInterval *)constraintInterval startDate];
        }

        else
        {
          [(NSDateInterval *)constraintInterval endDate];
        }
        v23 = ;

        v24 = scl_framework_log();
        calendar = v32;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v29 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v23];
          v25 = self->_dateFormatter;
          date3 = [dateCopy date];
          v26 = [(NSDateFormatter *)v25 stringFromDate:date3];
          *buf = 138412546;
          v35 = v29;
          v36 = 2112;
          v37 = v26;
          _os_log_impl(&dword_26486D000, v24, OS_LOG_TYPE_INFO, "Date %@ falls outside of constraint interval. Setting to %@", buf, 0x16u);
        }

        [dateCopy setDate:v23 animated:1];
        v14 = v23;
      }

      date = v14;
    }

    else
    {
      v12 = scl_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26486D000, v12, OS_LOG_TYPE_INFO, "Picked midnight", buf, 2u);
      }
    }
  }

  [(SCLTimePickerTableViewCell *)self _updateConstraintModeWithInterval:self->_constraintInterval selectedDate:date];
  delegate = [(SCLTimePickerTableViewCell *)self delegate];
  [delegate timePickerCell:self didUpdateDate:date];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updateConstraintModeWithInterval:(id)interval selectedDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  dateCopy = date;
  if (intervalCopy)
  {
    calendar = [(SCLTimePickerTableViewCell *)self calendar];
    v9 = scl_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NSDateIntervalFormatter *)self->_intervalFormatter stringFromDateInterval:intervalCopy];
      v11 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:dateCopy];
      v21 = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_26486D000, v9, OS_LOG_TYPE_INFO, "Update constraint with interval %@; selected date %@", &v21, 0x16u);
    }

    endDate = [intervalCopy endDate];
    v13 = [calendar components:96 fromDate:endDate];

    if ([v13 hour] || objc_msgSend(v13, "minute"))
    {
      self->_constraintMode = 1;
      datePicker = self->_datePicker;
      startDate = [intervalCopy startDate];
      [(UIDatePicker *)datePicker setMinimumDate:startDate];

      v16 = self->_datePicker;
      endDate2 = [intervalCopy endDate];
      [(UIDatePicker *)v16 setMaximumDate:endDate2];

      v18 = scl_framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(NSDateIntervalFormatter *)self->_intervalFormatter stringFromDateInterval:intervalCopy];
        v21 = 138412290;
        v22 = v19;
        _os_log_impl(&dword_26486D000, v18, OS_LOG_TYPE_INFO, "Setting constraint mode to picker: %@", &v21, 0xCu);
      }
    }

    else
    {
      self->_constraintMode = 2;
      [(UIDatePicker *)self->_datePicker setMinimumDate:0];
      [(UIDatePicker *)self->_datePicker setMaximumDate:0];
      v18 = scl_framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_26486D000, v18, OS_LOG_TYPE_INFO, "Setting constraint mode to manual workaround", &v21, 2u);
      }
    }
  }

  else
  {
    self->_constraintMode = 0;
    [(UIDatePicker *)self->_datePicker setMinimumDate:0];
    [(UIDatePicker *)self->_datePicker setMaximumDate:0];
    calendar = scl_framework_log();
    if (os_log_type_enabled(calendar, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_26486D000, calendar, OS_LOG_TYPE_INFO, "Setting constraint mode to  none", &v21, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (SCLTimePickerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end