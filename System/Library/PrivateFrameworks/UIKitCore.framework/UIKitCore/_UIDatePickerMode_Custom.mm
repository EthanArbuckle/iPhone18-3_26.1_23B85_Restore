@interface _UIDatePickerMode_Custom
- (_UIDatePickerMode_Custom)initWithFormatString:(id)a3 datePickerView:(id)a4;
- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5;
- (id)_componentForCalendarUnit:(unint64_t)a3;
- (id)components;
- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4;
- (id)dateFormatForCalendarUnit:(unint64_t)a3;
- (int64_t)componentForCalendarUnit:(unint64_t)a3;
- (int64_t)displayedCalendarUnits;
- (int64_t)numberOfRowsInComponent:(int64_t)a3;
- (int64_t)valueForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4;
- (unint64_t)calendarUnitForComponent:(int64_t)a3;
- (unint64_t)extractableCalendarUnits;
- (unint64_t)numberOfComponents;
- (void)noteCalendarChanged;
- (void)resetComponentWidths;
@end

@implementation _UIDatePickerMode_Custom

- (_UIDatePickerMode_Custom)initWithFormatString:(id)a3 datePickerView:(id)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UIDatePickerMode_Custom;
  v6 = [(_UIDatePickerMode *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
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
  v2 = [(_UIDatePickerMode_Custom *)self components];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setWidth:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
    v5 = [(_UIDatePickerMode *)self locale];
    v6 = [_UIDatePickerComponent componentsFromDateFormatString:originalFormat locale:v5 followsSystemHourCycle:[(_UIDatePickerMode *)self followsSystemHourCycle]];
    v7 = self->_components;
    self->_components = v6;

    v8 = [(_UIDatePickerMode *)self calendar];
    if ([(NSArray *)self->_components count])
    {
      v9 = 0;
      v10 = 0;
      v22 = *MEMORY[0x1E695D940];
      do
      {
        v11 = [(NSArray *)self->_components objectAtIndex:v10];
        v12 = [v11 equivalentUnit];
        if ((v12 & v9) != 0)
        {
          v13 = [v11 formatString];
          if (v10)
          {
            v14 = 0;
            while (1)
            {
              v15 = [(NSArray *)self->_components objectAtIndex:v14];
              if (v12 == [v15 equivalentUnit])
              {
                break;
              }

              if (v10 == ++v14)
              {
                goto LABEL_9;
              }
            }

            v16 = [v15 formatString];
          }

          else
          {
LABEL_9:
            v16 = 0;
          }

          [MEMORY[0x1E695DF30] raise:v22 format:{@"Conflicting date formats: %@ and %@", v16, v13}];
        }

        v9 |= v12;
        v17 = [v8 maximumRangeOfUnit:{objc_msgSend(v11, "calendarUnit")}];
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

- (unint64_t)calendarUnitForComponent:(int64_t)a3
{
  v4 = [(_UIDatePickerMode_Custom *)self components];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 calendarUnit];

  return v6;
}

- (int64_t)componentForCalendarUnit:(unint64_t)a3
{
  v4 = [(_UIDatePickerMode_Custom *)self components];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [v4 objectAtIndex:v7];
      v9 = [v8 calendarUnit];

      if (v9 == a3)
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

- (id)_componentForCalendarUnit:(unint64_t)a3
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
        if ([v9 calendarUnit] == a3)
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
  v2 = [(_UIDatePickerMode_Custom *)self components];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) calendarUnit];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(_UIDatePickerMode_Custom *)self components];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) calendarUnit];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(_UIDatePickerMode_Custom *)self components];
  v3 = [v2 count];

  return v3;
}

- (int64_t)numberOfRowsInComponent:(int64_t)a3
{
  v4 = [(_UIDatePickerMode_Custom *)self components];
  v5 = [v4 objectAtIndex:a3];

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

- (id)dateFormatForCalendarUnit:(unint64_t)a3
{
  v3 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:a3];
  v4 = [v3 formatString];

  return v4;
}

- (double)widthForCalendarUnit:(unint64_t)a3 font:(id)a4 maxWidth:(double)a5
{
  v6 = a3;
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = [(_UIDatePickerMode_Custom *)self components:a3];
  v9 = [v8 lastObject];
  [v9 width];
  v11 = v10;

  if (v11 == 0.0)
  {
    v44 = v6;
    v45 = [(_UIDatePickerMode_Custom *)self numberOfComponents];
    if (v45)
    {
      v12 = 0;
      v13 = *off_1E70EC918;
      v14 = 0.0;
      do
      {
        v15 = [(_UIDatePickerMode_Custom *)self components];
        v16 = [v15 objectAtIndex:v12];

        v46 = v16;
        v17 = [v16 unitRange];
        v19 = 0;
        v20 = v17 + v18;
        if ((v17 + v18) >= 9000)
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
          v26 = [(_UIDatePickerMode *)self font];
          v53[0] = v26;
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

      while (v12 != v45);
    }

    else
    {
      v14 = 0.0;
    }

    v6 = v44;
    if (v14 > a5)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v30 = [(_UIDatePickerMode_Custom *)self components];
      v31 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v48;
        v34 = a5 / v14;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v48 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v47 + 1) + 8 * i);
            [v36 width];
            [v36 setWidth:floor(v34 * v37)];
          }

          v32 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v32);
      }
    }
  }

  v38 = [(_UIDatePickerMode_Custom *)self componentForCalendarUnit:v6];
  v39 = [(_UIDatePickerMode_Custom *)self components];
  v40 = [v39 objectAtIndex:v38];

  [v40 width];
  v42 = v41;

  return v42;
}

- (id)dateForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4
{
  v7 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:a4];
  if ([v7 equivalentUnit] == 4)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIDatePickerMode_Custom;
    v8 = [(_UIDatePickerMode *)&v10 dateForRow:a3 inCalendarUnit:a4];
  }

  return v8;
}

- (int64_t)valueForRow:(int64_t)a3 inCalendarUnit:(unint64_t)a4
{
  if (a4 != 0x10000)
  {
    v5 = [(_UIDatePickerMode_Custom *)self _componentForCalendarUnit:a4];
    v6 = v5;
    if (v5 && [v5 equivalentUnit] != 4)
    {
      v7 = [v6 unitRange];
      a3 = a3 % v8 + v7;
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

@end