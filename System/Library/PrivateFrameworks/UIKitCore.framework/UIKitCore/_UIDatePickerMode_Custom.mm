@interface _UIDatePickerMode_Custom
- (_UIDatePickerMode_Custom)initWithFormatString:(id)string datePickerView:(id)view;
- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width;
- (id)_componentForCalendarUnit:(unint64_t)unit;
- (id)components;
- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit;
- (id)dateFormatForCalendarUnit:(unint64_t)unit;
- (int64_t)componentForCalendarUnit:(unint64_t)unit;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsInComponent:(int64_t)component;
- (int64_t)valueForRow:(int64_t)row inCalendarUnit:(unint64_t)unit;
- (unint64_t)calendarUnitForComponent:(int64_t)component;
- (unint64_t)extractableCalendarUnits;
- (unint64_t)numberOfComponents;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
@end

@implementation _UIDatePickerMode_Custom

- (_UIDatePickerMode_Custom)initWithFormatString:(id)string datePickerView:(id)view
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_Custom;
  v6 = [(_UIDatePickerMode *)&v10 init];
  if (v6)
  {
    v7 = [stringCopy copy];
    originalFormat = v6->_originalFormat;
    v6->_originalFormat = v7;
  }

  return v6;
}

- (void)noteCalendarChanged
{
  components = self->_components;
  self->_components = 0;

  v4.receiver = self;
  v4.super_class = _UIDatePickerMode_Custom;
  [(_UIDatePickerMode *)&v4 noteCalendarChanged];
}

- (void)resetComponentWidths
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  components = [(_UIDatePickerMode_Custom *)self components];
  v3 = [components countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(components);
        }

        [*(*(&v7 + 1) + 8 * v6++) setWidth:0.0];
      }

      while (v4 != v6);
      v4 = [components countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)components
{
  components = self->_components;
  if (!components)
  {
    originalFormat = self->_originalFormat;
    locale = [(_UIDatePickerMode *)self locale];
    v6 = [_UIDatePickerComponent componentsFromDateFormatString:originalFormat locale:locale followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle]];
    v7 = self->_components;
    self->_components = v6;

    calendar = [(_UIDatePickerMode *)self calendar];
    if ([(NSArray *)self->_components count])
    {
      v9 = 0;
      v10 = 0;
      v22 = *MEMORY[0x1E695D940];
      do
      {
        v11 = [(NSArray *)self->_components objectAtIndex:v10];
        equivalentUnit = [v11 equivalentUnit];
        if ((equivalentUnit & v9) != 0)
        {
          formatString = [v11 formatString];
          if (v10)
          {
            v14 = 0;
            while (1)
            {
              v15 = [(NSArray *)self->_components objectAtIndex:v14];
              if (equivalentUnit == [v15 equivalentUnit])
              {
                break;
              }

              if (v10 == ++v14)
              {
                goto LABEL_9;
              }
            }

            formatString2 = [v15 formatString];
          }

          else
          {
LABEL_9:
            formatString2 = 0;
          }

          [MEMORY[0x1E695DF30] raise:v22 format:{@"Conflicting date formats: %@ and %@", formatString2, formatString}];
        }

        v9 |= equivalentUnit;
        v17 = [calendar maximumRangeOfUnit:{objc_msgSend(v11, "calendarUnit")}];
        [v11 setUnitRange:{v17, v18}];

        ++v10;
      }

      while (v10 < [(NSArray *)self->_components count]);
    }

    v19 = [(NSArray *)self->_components sortedArrayUsingComparator:&__block_literal_global_431_0];
    sortedComponents = self->_sortedComponents;
    self->_sortedComponents = v19;

    components = self->_components;
  }

  return components;
}

- (unint64_t)calendarUnitForComponent:(int64_t)component
{
  components = [(_UIDatePickerMode_Custom *)self components];
  v5 = [components objectAtIndex:component];
  calendarUnit = [v5 calendarUnit];

  return calendarUnit;
}

- (int64_t)componentForCalendarUnit:(unint64_t)unit
{
  components = [(_UIDatePickerMode_Custom *)self components];
  v5 = [components count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [components objectAtIndex:v7];
      calendarUnit = [v8 calendarUnit];

      if (calendarUnit == unit)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)_componentForCalendarUnit:(unint64_t)unit
{
  v17 = *MEMORY[0x1E69E9840];
  [(_UIDatePickerMode_Custom *)self components];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 calendarUnit] == unit)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (unint64_t)extractableCalendarUnits
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  components = [(_UIDatePickerMode_Custom *)self components];
  v3 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(components);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) calendarUnit];
      }

      v4 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return (v5 >> 1) & 2 | v5;
}

- (int64_t)displayedCalendarUnits
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  components = [(_UIDatePickerMode_Custom *)self components];
  v3 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(components);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) calendarUnit];
      }

      v4 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfComponents
{
  components = [(_UIDatePickerMode_Custom *)self components];
  v3 = [components count];

  return v3;
}

- (int64_t)numberOfRowsInComponent:(int64_t)component
{
  components = [(_UIDatePickerMode_Custom *)self components];
  v5 = [components objectAtIndex:component];

  if ([v5 calendarUnit] == 0x10000)
  {
    v6 = 2;
  }

  else
  {
    v6 = 10000;
  }

  return v6;
}

- (id)dateFormatForCalendarUnit:(unint64_t)unit
{
  v3 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:unit];
  formatString = [v3 formatString];

  return formatString;
}

- (double)widthForCalendarUnit:(unint64_t)unit font:(id)font maxWidth:(double)width
{
  unitCopy = unit;
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = [(_UIDatePickerMode_Custom *)self components:unit];
  lastObject = [v8 lastObject];
  [lastObject width];
  v11 = v10;

  if (v11 == 0.0)
  {
    v44 = unitCopy;
    numberOfComponents = [(_UIDatePickerMode_Custom *)self numberOfComponents];
    if (numberOfComponents)
    {
      v12 = 0;
      v13 = *off_1E70EC918;
      v14 = 0.0;
      do
      {
        components = [(_UIDatePickerMode_Custom *)self components];
        v16 = [components objectAtIndex:v12];

        v46 = v16;
        unitRange = [v16 unitRange];
        v19 = 0;
        v20 = unitRange + v18;
        if ((unitRange + v18) >= 9000)
        {
          v20 = 9000;
        }

        v21 = 12;
        if (v18 < 0xC)
        {
          v21 = v18;
        }

        v22 = (v20 / v21);
        if (v21 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v21;
        }

        v24 = 0.0;
        do
        {
          v25 = [(_UIDatePickerMode *)self titleForRow:v19 inComponent:v12];
          v52 = v13;
          font = [(_UIDatePickerMode *)self font];
          v53[0] = font;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
          [v25 sizeWithAttributes:v27];
          v29 = v28;

          if (v24 < v29)
          {
            v24 = v29;
          }

          v19 += v22;
          --v23;
        }

        while (v23);
        [v46 setWidth:v24];
        v14 = v14 + v24;

        ++v12;
      }

      while (v12 != numberOfComponents);
    }

    else
    {
      v14 = 0.0;
    }

    unitCopy = v44;
    if (v14 > width)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      components2 = [(_UIDatePickerMode_Custom *)self components];
      v31 = [components2 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v48;
        v34 = width / v14;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v48 != v33)
            {
              objc_enumerationMutation(components2);
            }

            v36 = *(*(&v47 + 1) + 8 * i);
            [v36 width];
            [v36 setWidth:floor(v34 * v37)];
          }

          v32 = [components2 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v32);
      }
    }
  }

  v38 = [(_UIDatePickerMode_Custom *)self componentForCalendarUnit:unitCopy];
  components3 = [(_UIDatePickerMode_Custom *)self components];
  v40 = [components3 objectAtIndex:v38];

  [v40 width];
  v42 = v41;

  return v42;
}

- (id)dateForRow:(int64_t)row inCalendarUnit:(unint64_t)unit
{
  v7 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:unit];
  if ([v7 equivalentUnit] == 4)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIDatePickerMode_Custom;
    v8 = [(_UIDatePickerMode *)&v10 dateForRow:row inCalendarUnit:unit];
  }

  return v8;
}

- (int64_t)valueForRow:(int64_t)row inCalendarUnit:(unint64_t)unit
{
  if (unit != 0x10000)
  {
    v5 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:unit];
    v6 = v5;
    if (v5 && [v5 equivalentUnit] != 4)
    {
      unitRange = [v6 unitRange];
      row = row % v8 + unitRange;
    }

    else
    {
      row = 0;
    }
  }

  return row;
}

@end