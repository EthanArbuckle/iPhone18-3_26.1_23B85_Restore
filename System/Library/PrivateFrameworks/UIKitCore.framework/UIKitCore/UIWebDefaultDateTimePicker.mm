@interface UIWebDefaultDateTimePicker
- (UIWebDefaultDateTimePicker)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode;
- (id)_sanitizeInputValueForFormatter:(id)formatter;
- (int64_t)_timeZoneOffsetFromGMT:(id)t;
- (void)_dateChanged;
- (void)_dateChangedSetAsNumber;
- (void)_dateChangedSetAsString;
- (void)controlBeginEditing;
- (void)dealloc;
@end

@implementation UIWebDefaultDateTimePicker

- (int64_t)_timeZoneOffsetFromGMT:(id)t
{
  if (!self->_shouldRemoveTimeZoneInformation)
  {
    return 0;
  }

  timeZone = [(UIDatePicker *)self->_datePicker timeZone];

  return [(NSTimeZone *)timeZone secondsFromGMTForDate:t];
}

- (void)_dateChangedSetAsNumber
{
  date = [(UIDatePicker *)self->_datePicker date];
  [(NSDate *)date timeIntervalSince1970];
  v5 = (v4 + [(UIWebDefaultDateTimePicker *)self _timeZoneOffsetFromGMT:date]) * 1000.0;
  WebThreadLock();
  inputElement = self->_inputElement;

  [(DOMHTMLInputElement *)inputElement setValueAsNumberWithChangeEvent:v5];
}

- (void)_dateChangedSetAsString
{
  date = [(UIDatePicker *)self->_datePicker date];
  v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setTimeZone:{-[UIDatePicker timeZone](self->_datePicker, "timeZone")}];
  [v4 setDateFormat:self->_formatString];
  [v4 setLocale:v6];
  v5 = [v4 stringFromDate:date];
  WebThreadLock();
  [(DOMHTMLInputElement *)self->_inputElement setValueWithChangeEvent:v5];
}

- (void)_dateChanged
{
  if (self->_formatString)
  {
    [(UIWebDefaultDateTimePicker *)self _dateChangedSetAsString];
  }

  else
  {
    [(UIWebDefaultDateTimePicker *)self _dateChangedSetAsNumber];
  }
}

- (UIWebDefaultDateTimePicker)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode
{
  v13.receiver = self;
  v13.super_class = UIWebDefaultDateTimePicker;
  v6 = [(UIWebDefaultDateTimePicker *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  [(UIWebDefaultDateTimePicker *)v6 set_inputElement:element];
  type = [(DOMHTMLInputElement *)v7->_inputElement type];
  *&v7->_shouldRemoveTimeZoneInformation = 0;
  v7->_formatString = 0;
  if ([(NSString *)type isEqualToString:@"date"])
  {
    v9 = @"yyyy-MM-dd";
LABEL_6:
    v7->_formatString = &v9->isa;
    goto LABEL_7;
  }

  if ([(NSString *)type isEqualToString:@"month"])
  {
    v9 = @"yyyy-MM";
    goto LABEL_6;
  }

  if ([(NSString *)type isEqualToString:@"time"])
  {
    v7->_formatString = @"HH:mm";
    v7->_isTimeInput = 1;
  }

  else
  {
    v7->_shouldRemoveTimeZoneInformation = [(NSString *)type isEqualToString:@"datetime-local"];
  }

LABEL_7:
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    +[UIPickerView defaultSizeForCurrentOrientation];
  }

  else
  {
    +[UIKeyboard defaultSizeForInterfaceOrientation:](UIKeyboard, "defaultSizeForInterfaceOrientation:", [UIApp _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0]);
  }

  [(UIWebDefaultDateTimePicker *)v7 set_datePicker:[[UIDatePicker alloc] initWithFrame:0.0, 0.0, v10, v11]];
  [(UIDatePicker *)v7->_datePicker setDatePickerMode:mode];
  [(UIView *)v7->_datePicker setHidden:0];
  [(UIControl *)v7->_datePicker addTarget:v7 action:sel__dateChangeHandler_ forControlEvents:4096];
  return v7;
}

- (void)dealloc
{
  [(UIControl *)self->_datePicker removeTarget:self action:0 forControlEvents:4096];
  [(UIWebDefaultDateTimePicker *)self set_inputElement:0];
  [(UIWebDefaultDateTimePicker *)self set_datePicker:0];
  v3.receiver = self;
  v3.super_class = UIWebDefaultDateTimePicker;
  [(UIWebDefaultDateTimePicker *)&v3 dealloc];
}

- (id)_sanitizeInputValueForFormatter:(id)formatter
{
  if (!self->_isTimeInput)
  {
    return formatter;
  }

  v4 = [@"HH:mm" length];

  return [formatter substringToIndex:v4];
}

- (void)controlBeginEditing
{
  -[UIDatePicker setTimeZone:](self->_datePicker, "setTimeZone:", [MEMORY[0x1E695DFE8] localTimeZone]);
  value = [(DOMHTMLInputElement *)self->_inputElement value];
  if ([(NSString *)value length])
  {
    if (self->_formatString)
    {
      v4 = [(UIWebDefaultDateTimePicker *)self _sanitizeInputValueForFormatter:value];
      v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
      v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v12 setTimeZone:{-[UIDatePicker timeZone](self->_datePicker, "timeZone")}];
      [v12 setDateFormat:self->_formatString];
      [v12 setLocale:v5];
      date = [v12 dateFromString:v4];
      if (!date)
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      [(UIDatePicker *)self->_datePicker setDate:date];
    }

    else
    {
      [(DOMHTMLInputElement *)self->_inputElement valueAsNumber];
      v8 = v7 / 1000.0;
      v9 = -[UIWebDefaultDateTimePicker _timeZoneOffsetFromGMT:](self, "_timeZoneOffsetFromGMT:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7 / 1000.0]);
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v8 - v9];
      datePicker = self->_datePicker;

      [(UIDatePicker *)datePicker setDate:v10];
    }
  }

  else
  {
    -[UIDatePicker setDate:](self->_datePicker, "setDate:", [MEMORY[0x1E695DF00] date]);

    [(UIWebDefaultDateTimePicker *)self _dateChanged];
  }
}

@end