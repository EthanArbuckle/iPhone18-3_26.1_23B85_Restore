@interface SCLTimePickerTableViewCell
- (SCLTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SCLTimePickerTableViewCellDelegate)delegate;
- (void)_updateConstraintModeWithInterval:(id)a3 selectedDate:(id)a4;
- (void)datePickerDidChangeDate:(id)a3;
- (void)setCalendar:(id)a3;
- (void)setConstraintInterval:(id)a3;
- (void)setSelectedDate:(id)a3;
@end

@implementation SCLTimePickerTableViewCell

- (SCLTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[3] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = SCLTimePickerTableViewCell;
  v4 = [(SCLTimePickerTableViewCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_constraintMode = 0;
    v6 = objc_alloc(MEMORY[0x277D753E8]);
    v7 = [(SCLTimePickerTableViewCell *)v5 contentView];
    [v7 frame];
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
    v14 = [(SCLTimePickerTableViewCell *)v5 contentView];
    [v14 addSubview:v5->_datePicker];

    v15 = [(UIDatePicker *)v5->_datePicker topAnchor];
    v16 = [(SCLTimePickerTableViewCell *)v5 contentView];
    v17 = [v16 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];

    v19 = [(UIDatePicker *)v5->_datePicker bottomAnchor];
    v20 = [(SCLTimePickerTableViewCell *)v5 contentView];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];

    v23 = [(UIDatePicker *)v5->_datePicker centerXAnchor];
    v24 = [(SCLTimePickerTableViewCell *)v5 contentView];
    v25 = [v24 centerXAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];

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

- (void)setCalendar:(id)a3
{
  datePicker = self->_datePicker;
  v7 = a3;
  [(UIDatePicker *)datePicker setCalendar:v7];
  v5 = self->_datePicker;
  v6 = [v7 timeZone];
  [(UIDatePicker *)v5 setTimeZone:v6];

  [(NSDateIntervalFormatter *)self->_intervalFormatter setCalendar:v7];
  [(NSDateFormatter *)self->_dateFormatter setCalendar:v7];
}

- (void)setConstraintInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  constraintInterval = self->_constraintInterval;
  self->_constraintInterval = v5;

  v7 = [(UIDatePicker *)self->_datePicker date];
  [(SCLTimePickerTableViewCell *)self _updateConstraintModeWithInterval:v4 selectedDate:v7];
}

- (void)setSelectedDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLTimePickerTableViewCell *)self datePicker];
  v6 = [v5 date];
  v7 = [v4 isEqualToDate:v6];

  v8 = scl_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v4];
    v11 = 138412546;
    v12 = v9;
    v13 = 1024;
    v14 = v7 ^ 1;
    _os_log_impl(&dword_26486D000, v8, OS_LOG_TYPE_INFO, "Set Selected Date: %@; shouldSet=%{BOOL}d", &v11, 0x12u);
  }

  if ((v7 & 1) == 0)
  {
    [(UIDatePicker *)self->_datePicker setDate:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)datePickerDidChangeDate:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 date];
  v6 = scl_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v5];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_constraintMode];
    *buf = 138412546;
    v35 = v7;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_26486D000, v6, OS_LOG_TYPE_INFO, "Did pick date: %@; constraintMode = %@", buf, 0x16u);
  }

  if (self->_constraintMode == 2 && ![(NSDateInterval *)self->_constraintInterval containsDate:v5])
  {
    v9 = [(SCLTimePickerTableViewCell *)self calendar];
    v10 = [v9 components:96 fromDate:v5];
    if ([v10 hour] || objc_msgSend(v10, "minute"))
    {
      v11 = [(NSDateInterval *)self->_constraintInterval startDate];
      v12 = [v9 components:33022 fromDate:v11];

      v13 = [v12 copy];
      [v13 setHour:{objc_msgSend(v10, "hour")}];
      [v13 setMinute:{objc_msgSend(v10, "minute")}];
      v14 = [v9 dateFromComponents:v13];

      if ([(NSDateInterval *)self->_constraintInterval containsDate:v14])
      {
        v15 = scl_framework_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v33 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v14];
          dateFormatter = self->_dateFormatter;
          v31 = [v4 date];
          v17 = [(NSDateFormatter *)dateFormatter stringFromDate:v31];
          *buf = 138412546;
          v35 = v33;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_26486D000, v15, OS_LOG_TYPE_INFO, "Normalizing back to date %@ from %@", buf, 0x16u);
        }

        [v4 setDate:v14 animated:0];
      }

      else
      {
        v32 = v9;
        v18 = [v10 hour];
        v19 = [v10 minute] + 60 * v18;
        v20 = [v12 hour];
        v21 = [v12 minute]- v19 + 60 * v20;
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
        v9 = v32;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v29 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v23];
          v25 = self->_dateFormatter;
          v30 = [v4 date];
          v26 = [(NSDateFormatter *)v25 stringFromDate:v30];
          *buf = 138412546;
          v35 = v29;
          v36 = 2112;
          v37 = v26;
          _os_log_impl(&dword_26486D000, v24, OS_LOG_TYPE_INFO, "Date %@ falls outside of constraint interval. Setting to %@", buf, 0x16u);
        }

        [v4 setDate:v23 animated:1];
        v14 = v23;
      }

      v5 = v14;
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

  [(SCLTimePickerTableViewCell *)self _updateConstraintModeWithInterval:self->_constraintInterval selectedDate:v5];
  v27 = [(SCLTimePickerTableViewCell *)self delegate];
  [v27 timePickerCell:self didUpdateDate:v5];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updateConstraintModeWithInterval:(id)a3 selectedDate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(SCLTimePickerTableViewCell *)self calendar];
    v9 = scl_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NSDateIntervalFormatter *)self->_intervalFormatter stringFromDateInterval:v6];
      v11 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
      v21 = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_26486D000, v9, OS_LOG_TYPE_INFO, "Update constraint with interval %@; selected date %@", &v21, 0x16u);
    }

    v12 = [v6 endDate];
    v13 = [v8 components:96 fromDate:v12];

    if ([v13 hour] || objc_msgSend(v13, "minute"))
    {
      self->_constraintMode = 1;
      datePicker = self->_datePicker;
      v15 = [v6 startDate];
      [(UIDatePicker *)datePicker setMinimumDate:v15];

      v16 = self->_datePicker;
      v17 = [v6 endDate];
      [(UIDatePicker *)v16 setMaximumDate:v17];

      v18 = scl_framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(NSDateIntervalFormatter *)self->_intervalFormatter stringFromDateInterval:v6];
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
    v8 = scl_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_26486D000, v8, OS_LOG_TYPE_INFO, "Setting constraint mode to  none", &v21, 2u);
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