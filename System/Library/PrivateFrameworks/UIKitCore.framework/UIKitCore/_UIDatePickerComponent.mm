@interface _UIDatePickerComponent
+ (id)componentsFromDateFormatString:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 desiredUnits:(int64_t)a6;
- (_NSRange)unitRange;
- (id)_initWithFormatString:(id)a3 calendarUnit:(unint64_t)a4;
- (id)description;
@end

@implementation _UIDatePickerComponent

+ (id)componentsFromDateFormatString:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 desiredUnits:(int64_t)a6
{
  v11 = a4;
  v12 = MEMORY[0x1E695DF70];
  v13 = a3;
  v14 = [v12 array];
  v15 = _UIDateFormatReplaceKoreanYearFormatIfNeeded(v13, v11);

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __100___UIDatePickerComponent_componentsFromDateFormatString_locale_followsSystemHourCycle_desiredUnits___block_invoke;
  v39 = &unk_1E711BEE8;
  v43 = v48;
  v44 = a6;
  v16 = v15;
  v40 = v16;
  v36 = v11;
  v41 = v36;
  v47 = a5;
  v17 = v14;
  v42 = v17;
  v45 = a2;
  v46 = a1;
  v18 = v16;
  v19 = v37;
  v20 = [v18 length];
  if (!v20)
  {
    goto LABEL_21;
  }

  v34 = v17;
  v35 = v19;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v27 = [v18 characterAtIndex:v22];
    v28 = v27;
    if (v27 == 39)
    {
      v21 ^= 1u;
      goto LABEL_18;
    }

    if (v21)
    {
      v21 = 1;
      goto LABEL_18;
    }

    if (v27 == 46)
    {
      if (v26 <= 0x10 && ((1 << v26) & 0x10110) != 0 || v26 == 0x4000)
      {
LABEL_11:
        v21 = 0;
        ++v25;
        goto LABEL_18;
      }
    }

    else if ((v27 & 0xFFFE) == 0x28)
    {
      goto LABEL_11;
    }

    v29 = _UICalendarUnitForFormatCharacter(v27);
    if (v29 == v26)
    {
      v21 = 0;
      ++v25;
      v23 = v28;
    }

    else
    {
      v30 = v29;
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v49 = v26;
        v50 = v23;
        v51 = v24;
        v52 = v25;
        v38(v35, &v49);
      }

      v21 = 0;
      v25 = 1;
      v24 = v22;
      v23 = v28;
      v26 = v30;
    }

LABEL_18:
    ++v22;
  }

  while (v20 != v22);
  v17 = v34;
  v19 = v35;
  if (v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = v26;
    v50 = v23;
    v51 = v24;
    v52 = v25;
    v38(v35, &v49);
  }

LABEL_21:

  v31 = v42;
  v32 = v17;

  _Block_object_dispose(v48, 8);

  return v32;
}

- (id)_initWithFormatString:(id)a3 calendarUnit:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _UIDatePickerComponent;
  v8 = [(_UIDatePickerComponent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_formatString, a3);
    v9->_calendarUnit = a4;
    v9->_equivalentUnit = _UIDateComponentsEquivalentUnit(a4);
    v9->_width = 0.0;
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _UIDatePickerComponent;
  v4 = [(_UIDatePickerComponent *)&v11 description];
  formatString = self->_formatString;
  calendarUnit = self->_calendarUnit;
  if (calendarUnit <= 511)
  {
    if (calendarUnit <= 15)
    {
      switch(calendarUnit)
      {
        case 2:
          v7 = @"Era";
          goto LABEL_40;
        case 4:
          v7 = @"Year";
          goto LABEL_40;
        case 8:
          v7 = @"Month";
          goto LABEL_40;
      }
    }

    else if (calendarUnit > 63)
    {
      if (calendarUnit == 64)
      {
        v7 = @"Minute";
        goto LABEL_40;
      }

      if (calendarUnit == 128)
      {
        v7 = @"Second";
        goto LABEL_40;
      }
    }

    else
    {
      if (calendarUnit == 16)
      {
        v7 = @"Day";
        goto LABEL_40;
      }

      if (calendarUnit == 32)
      {
        v7 = @"Hour";
        goto LABEL_40;
      }
    }
  }

  else if (calendarUnit >= 0x2000)
  {
    if (calendarUnit >= 0x100000)
    {
      if (calendarUnit == 0x100000)
      {
        v7 = @"Calendar";
        goto LABEL_40;
      }

      if (calendarUnit == 0x200000)
      {
        v7 = @"TimeZone";
        goto LABEL_40;
      }
    }

    else
    {
      if (calendarUnit == 0x2000)
      {
        v7 = @"Week of Year";
        goto LABEL_40;
      }

      if (calendarUnit == 0x4000)
      {
        v7 = @"Year for Week of Year";
        goto LABEL_40;
      }
    }
  }

  else if (calendarUnit > 2047)
  {
    if (calendarUnit == 2048)
    {
      v7 = @"Quarter";
      goto LABEL_40;
    }

    if (calendarUnit == 4096)
    {
      v7 = @"Week of Month";
      goto LABEL_40;
    }
  }

  else
  {
    if (calendarUnit == 512)
    {
      v7 = @"Weekday";
      goto LABEL_40;
    }

    if (calendarUnit == 1024)
    {
      v7 = @"Weekday°";
      goto LABEL_40;
    }
  }

  if (calendarUnit == 0x10000)
  {
    v7 = @"AM/PM";
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

LABEL_40:
  v8 = v7;
  v9 = [v3 stringWithFormat:@"%@ (%@ => %@)", v4, formatString, v8];

  return v9;
}

- (_NSRange)unitRange
{
  length = self->_unitRange.length;
  location = self->_unitRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end