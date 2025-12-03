@interface _UIDatePickerCalendarTimeValueStore
- (BOOL)roundToMinuteInterval;
- (_UIDatePickerCalendarTimeValueStore)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval decrementBehaviour:(int64_t)behaviour;
- (unint64_t)__integerInBufferWithRange:(_NSRange)range;
- (unint64_t)digitsInScope:(int64_t)scope;
- (void)__setIntegerInBuffer:(unint64_t)buffer range:(_NSRange)range;
- (void)_removeLastDigitInRange:(_NSRange)range;
- (void)_setDigits:(unint64_t)digits count:(unint64_t)count inRange:(_NSRange)range append:(BOOL)append;
- (void)_verifyInputWithScope:(int64_t)scope;
- (void)dealloc;
- (void)decrementDigitForScope:(int64_t)scope;
- (void)incrementDigitForScope:(int64_t)scope;
- (void)removeLastDigitInScope:(int64_t)scope;
- (void)setDigits:(unint64_t)digits count:(unint64_t)count inScope:(int64_t)scope append:(BOOL)append;
- (void)setMinuteInterval:(int64_t)interval;
@end

@implementation _UIDatePickerCalendarTimeValueStore

- (_UIDatePickerCalendarTimeValueStore)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval decrementBehaviour:(int64_t)behaviour
{
  formatCopy = format;
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarTimeValueStore;
  v10 = [(_UIDatePickerCalendarTimeValueStore *)&v13 init];
  if (v10)
  {
    v10->_inputBuffer = malloc_type_calloc(8uLL, 4uLL, 0xA5110A84uLL);
    objc_storeStrong(&v10->_timeFormat, format);
    if (interval <= 1)
    {
      intervalCopy = 1;
    }

    else
    {
      intervalCopy = interval;
    }

    v10->_minuteInterval = intervalCopy;
    v10->_decrementBehaviour = behaviour;
  }

  return v10;
}

- (void)dealloc
{
  free(self->_inputBuffer);
  self->_inputBuffer = 0;
  v3.receiver = self;
  v3.super_class = _UIDatePickerCalendarTimeValueStore;
  [(_UIDatePickerCalendarTimeValueStore *)&v3 dealloc];
}

- (void)setMinuteInterval:(int64_t)interval
{
  if (interval <= 1)
  {
    intervalCopy = 1;
  }

  else
  {
    intervalCopy = interval;
  }

  self->_minuteInterval = intervalCopy;
}

- (void)_verifyInputWithScope:(int64_t)scope
{
  hourValue = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
  minuteValue = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
  timeFormat = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
  clockLayout = [timeFormat clockLayout];

  if (!clockLayout && hourValue > 0x18 || (-[_UIDatePickerCalendarTimeValueStore timeFormat](self, "timeFormat"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 clockLayout], v9, v10) && hourValue >= 0xD)
  {
    *[(_UIDatePickerCalendarTimeValueStore *)self inputBuffer]= 0;
  }

  if (minuteValue >= 0x3C && (scope == 3 || minuteValue % 0xA >= 6))
  {
    [(_UIDatePickerCalendarTimeValueStore *)self inputBuffer][16] = 0;
  }
}

- (void)__setIntegerInBuffer:(unint64_t)buffer range:(_NSRange)range
{
  v4 = range.location + range.length;
  if (range.location + range.length > range.location)
  {
    location = range.location;
    do
    {
      v7 = buffer / 0xA;
      *([(_UIDatePickerCalendarTimeValueStore *)self inputBuffer]+ 8 * v4-- - 8) = buffer % 0xA;
      buffer = v7;
    }

    while (v4 > location);
  }
}

- (unint64_t)__integerInBufferWithRange:(_NSRange)range
{
  if (range.location >= range.location + range.length)
  {
    return 0;
  }

  length = range.length;
  v5 = 0;
  v6 = 8 * range.location;
  do
  {
    v5 = [(_UIDatePickerCalendarTimeValueStore *)self inputBuffer][v6] + 10 * v5;
    v6 += 8;
    --length;
  }

  while (length);
  return v5;
}

- (void)_setDigits:(unint64_t)digits count:(unint64_t)count inRange:(_NSRange)range append:(BOOL)append
{
  length = range.length;
  location = range.location;
  digitsCopy = digits;
  if (append)
  {
    countCopy = count;
    if (count)
    {
      v11 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:range.location, range.length];
    }

    else
    {
      digitsCopy2 = digits;
      do
      {
        ++countCopy;
        v13 = digitsCopy2 > 9;
        digitsCopy2 /= 0xAuLL;
      }

      while (v13);
      v11 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:range.location, range.length];
      if (!countCopy)
      {
        goto LABEL_8;
      }
    }

    do
    {
      v11 *= 10;
      --countCopy;
    }

    while (countCopy);
LABEL_8:
    digitsCopy += v11;
  }

  [(_UIDatePickerCalendarTimeValueStore *)self __setIntegerInBuffer:digitsCopy range:location, length];
}

- (void)_removeLastDigitInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:?]/ 0xA;

  [(_UIDatePickerCalendarTimeValueStore *)self __setIntegerInBuffer:v6 range:location, length];
}

- (void)setDigits:(unint64_t)digits count:(unint64_t)count inScope:(int64_t)scope append:(BOOL)append
{
  appendCopy = append;
  v9 = scope - 2;
  if ((scope - 2) > 2)
  {
    v10 = 0;
    v11 = 4;
  }

  else
  {
    v10 = qword_18A683B50[v9];
    v11 = qword_18A683B68[v9];
  }

  [(_UIDatePickerCalendarTimeValueStore *)self _setDigits:digits count:count inRange:v10 append:v11, appendCopy];

  [(_UIDatePickerCalendarTimeValueStore *)self _verifyInputWithScope:scope];
}

- (unint64_t)digitsInScope:(int64_t)scope
{
  v3 = scope - 2;
  if ((scope - 2) > 2)
  {
    v4 = 0;
    v5 = 4;
  }

  else
  {
    v4 = qword_18A683B50[v3];
    v5 = qword_18A683B68[v3];
  }

  return [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:v4, v5];
}

- (void)removeLastDigitInScope:(int64_t)scope
{
  v3 = scope - 2;
  if ((scope - 2) > 2)
  {
    v4 = 0;
    v5 = 4;
  }

  else
  {
    v4 = qword_18A683B50[v3];
    v5 = qword_18A683B68[v3];
  }

  [(_UIDatePickerCalendarTimeValueStore *)self _removeLastDigitInRange:v4, v5];
}

- (BOOL)roundToMinuteInterval
{
  minuteValue = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
  minuteInterval = [(_UIDatePickerCalendarTimeValueStore *)self minuteInterval];
  v5 = floor(minuteValue / minuteInterval) * minuteInterval;
  v6 = v5;
  if (minuteValue != v5)
  {
    [(_UIDatePickerCalendarTimeValueStore *)self setMinuteValue:v5];
  }

  return minuteValue != v6;
}

- (void)incrementDigitForScope:(int64_t)scope
{
  switch(scope)
  {
    case 4:
      v13 = [(_UIDatePickerCalendarTimeValueStore *)self isPM]^ 1;

      [(_UIDatePickerCalendarTimeValueStore *)self setIsPM:v13];
      break;
    case 3:
      minuteValue = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
      minuteInterval = self->_minuteInterval;
      v10 = 59;
      if ((minuteInterval + minuteValue) < 0 == __OFADD__(minuteInterval, minuteValue))
      {
        v10 = minuteInterval + minuteValue;
      }

      if ((minuteInterval + minuteValue) <= 59)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = (floor(v11 / minuteInterval) * minuteInterval);

      [(_UIDatePickerCalendarTimeValueStore *)self setMinuteValue:v12];
      break;
    case 2:
      hourValue = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
      timeFormat = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
      clock = [timeFormat clock];
      if (hourValue >= qword_18A683BA0[clock])
      {
        v6 = hourValue + 1;
      }

      else
      {
        v6 = qword_18A683C00[clock];
      }

      if (hourValue <= qword_18A683B80[clock])
      {
        v7 = v6;
      }

      else
      {
        v7 = qword_18A683C20[clock];
      }

      [(_UIDatePickerCalendarTimeValueStore *)self setHourValue:v7];

      break;
  }
}

- (void)decrementDigitForScope:(int64_t)scope
{
  switch(scope)
  {
    case 4:
      v16 = [(_UIDatePickerCalendarTimeValueStore *)self isPM]^ 1;

      [(_UIDatePickerCalendarTimeValueStore *)self setIsPM:v16];
      break;
    case 3:
      minuteValue = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
      minuteInterval = self->_minuteInterval;
      if (minuteValue % minuteInterval)
      {
        v9 = self->_decrementBehaviour == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = self->_minuteInterval;
      }

      v11 = __OFSUB__(minuteValue, v10);
      v12 = minuteValue - v10;
      v13 = 59;
      if (v12 < 0 == v11)
      {
        v13 = v12;
      }

      if (v12 <= 59)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = (floor(v14 / minuteInterval) * minuteInterval);

      [(_UIDatePickerCalendarTimeValueStore *)self setMinuteValue:v15];
      break;
    case 2:
      hourValue = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
      timeFormat = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
      clock = [timeFormat clock];
      v6 = hourValue - 1;
      if (hourValue < qword_18A683BE0[clock])
      {
        v6 = qword_18A683C00[clock];
      }

      if (hourValue > qword_18A683BC0[clock])
      {
        v6 = qword_18A683C20[clock];
      }

      [(_UIDatePickerCalendarTimeValueStore *)self setHourValue:v6];

      break;
  }
}

@end