@interface _UIDatePickerCalendarTimeValueStore
- (BOOL)roundToMinuteInterval;
- (_UIDatePickerCalendarTimeValueStore)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4 decrementBehaviour:(int64_t)a5;
- (unint64_t)__integerInBufferWithRange:(_NSRange)a3;
- (unint64_t)digitsInScope:(int64_t)a3;
- (void)__setIntegerInBuffer:(unint64_t)a3 range:(_NSRange)a4;
- (void)_removeLastDigitInRange:(_NSRange)a3;
- (void)_setDigits:(unint64_t)a3 count:(unint64_t)a4 inRange:(_NSRange)a5 append:(BOOL)a6;
- (void)_verifyInputWithScope:(int64_t)a3;
- (void)dealloc;
- (void)decrementDigitForScope:(int64_t)a3;
- (void)incrementDigitForScope:(int64_t)a3;
- (void)removeLastDigitInScope:(int64_t)a3;
- (void)setDigits:(unint64_t)a3 count:(unint64_t)a4 inScope:(int64_t)a5 append:(BOOL)a6;
- (void)setMinuteInterval:(int64_t)a3;
@end

@implementation _UIDatePickerCalendarTimeValueStore

- (_UIDatePickerCalendarTimeValueStore)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4 decrementBehaviour:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarTimeValueStore;
  v10 = [(_UIDatePickerCalendarTimeValueStore *)&v13 init];
  if (v10)
  {
    v10->_inputBuffer = malloc_type_calloc(8uLL, 4uLL, 0xA5110A84uLL);
    objc_storeStrong(&v10->_timeFormat, a3);
    if (a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a4;
    }

    v10->_minuteInterval = v11;
    v10->_decrementBehaviour = a5;
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

- (void)setMinuteInterval:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_minuteInterval = v3;
}

- (void)_verifyInputWithScope:(int64_t)a3
{
  v5 = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
  v6 = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
  v7 = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
  v8 = [v7 clockLayout];

  if (!v8 && v5 > 0x18 || (-[_UIDatePickerCalendarTimeValueStore timeFormat](self, "timeFormat"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 clockLayout], v9, v10) && v5 >= 0xD)
  {
    *[(_UIDatePickerCalendarTimeValueStore *)self inputBuffer]= 0;
  }

  if (v6 >= 0x3C && (a3 == 3 || v6 % 0xA >= 6))
  {
    [(_UIDatePickerCalendarTimeValueStore *)self inputBuffer][16] = 0;
  }
}

- (void)__setIntegerInBuffer:(unint64_t)a3 range:(_NSRange)a4
{
  v4 = a4.location + a4.length;
  if (a4.location + a4.length > a4.location)
  {
    location = a4.location;
    do
    {
      v7 = a3 / 0xA;
      *([(_UIDatePickerCalendarTimeValueStore *)self inputBuffer]+ 8 * v4-- - 8) = a3 % 0xA;
      a3 = v7;
    }

    while (v4 > location);
  }
}

- (unint64_t)__integerInBufferWithRange:(_NSRange)a3
{
  if (a3.location >= a3.location + a3.length)
  {
    return 0;
  }

  length = a3.length;
  v5 = 0;
  v6 = 8 * a3.location;
  do
  {
    v5 = [(_UIDatePickerCalendarTimeValueStore *)self inputBuffer][v6] + 10 * v5;
    v6 += 8;
    --length;
  }

  while (length);
  return v5;
}

- (void)_setDigits:(unint64_t)a3 count:(unint64_t)a4 inRange:(_NSRange)a5 append:(BOOL)a6
{
  length = a5.length;
  location = a5.location;
  v8 = a3;
  if (a6)
  {
    v10 = a4;
    if (a4)
    {
      v11 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:a5.location, a5.length];
    }

    else
    {
      v12 = a3;
      do
      {
        ++v10;
        v13 = v12 > 9;
        v12 /= 0xAuLL;
      }

      while (v13);
      v11 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:a5.location, a5.length];
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    do
    {
      v11 *= 10;
      --v10;
    }

    while (v10);
LABEL_8:
    v8 += v11;
  }

  [(_UIDatePickerCalendarTimeValueStore *)self __setIntegerInBuffer:v8 range:location, length];
}

- (void)_removeLastDigitInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(_UIDatePickerCalendarTimeValueStore *)self __integerInBufferWithRange:?]/ 0xA;

  [(_UIDatePickerCalendarTimeValueStore *)self __setIntegerInBuffer:v6 range:location, length];
}

- (void)setDigits:(unint64_t)a3 count:(unint64_t)a4 inScope:(int64_t)a5 append:(BOOL)a6
{
  v6 = a6;
  v9 = a5 - 2;
  if ((a5 - 2) > 2)
  {
    v10 = 0;
    v11 = 4;
  }

  else
  {
    v10 = qword_18A683B50[v9];
    v11 = qword_18A683B68[v9];
  }

  [(_UIDatePickerCalendarTimeValueStore *)self _setDigits:a3 count:a4 inRange:v10 append:v11, v6];

  [(_UIDatePickerCalendarTimeValueStore *)self _verifyInputWithScope:a5];
}

- (unint64_t)digitsInScope:(int64_t)a3
{
  v3 = a3 - 2;
  if ((a3 - 2) > 2)
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

- (void)removeLastDigitInScope:(int64_t)a3
{
  v3 = a3 - 2;
  if ((a3 - 2) > 2)
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
  v3 = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
  v4 = [(_UIDatePickerCalendarTimeValueStore *)self minuteInterval];
  v5 = floor(v3 / v4) * v4;
  v6 = v5;
  if (v3 != v5)
  {
    [(_UIDatePickerCalendarTimeValueStore *)self setMinuteValue:v5];
  }

  return v3 != v6;
}

- (void)incrementDigitForScope:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v13 = [(_UIDatePickerCalendarTimeValueStore *)self isPM]^ 1;

      [(_UIDatePickerCalendarTimeValueStore *)self setIsPM:v13];
      break;
    case 3:
      v8 = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
      minuteInterval = self->_minuteInterval;
      v10 = 59;
      if ((minuteInterval + v8) < 0 == __OFADD__(minuteInterval, v8))
      {
        v10 = minuteInterval + v8;
      }

      if ((minuteInterval + v8) <= 59)
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
      v4 = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
      v14 = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
      v5 = [v14 clock];
      if (v4 >= qword_18A683BA0[v5])
      {
        v6 = v4 + 1;
      }

      else
      {
        v6 = qword_18A683C00[v5];
      }

      if (v4 <= qword_18A683B80[v5])
      {
        v7 = v6;
      }

      else
      {
        v7 = qword_18A683C20[v5];
      }

      [(_UIDatePickerCalendarTimeValueStore *)self setHourValue:v7];

      break;
  }
}

- (void)decrementDigitForScope:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v16 = [(_UIDatePickerCalendarTimeValueStore *)self isPM]^ 1;

      [(_UIDatePickerCalendarTimeValueStore *)self setIsPM:v16];
      break;
    case 3:
      v7 = [(_UIDatePickerCalendarTimeValueStore *)self minuteValue];
      minuteInterval = self->_minuteInterval;
      if (v7 % minuteInterval)
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

      v11 = __OFSUB__(v7, v10);
      v12 = v7 - v10;
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
      v4 = [(_UIDatePickerCalendarTimeValueStore *)self hourValue];
      v17 = [(_UIDatePickerCalendarTimeValueStore *)self timeFormat];
      v5 = [v17 clock];
      v6 = v4 - 1;
      if (v4 < qword_18A683BE0[v5])
      {
        v6 = qword_18A683C00[v5];
      }

      if (v4 > qword_18A683BC0[v5])
      {
        v6 = qword_18A683C20[v5];
      }

      [(_UIDatePickerCalendarTimeValueStore *)self setHourValue:v6];

      break;
  }
}

@end