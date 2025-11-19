@interface UIDatePickerMode
@end

@implementation UIDatePickerMode

double __31___UIDatePickerMode_initialize__block_invoke()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  _UIDateComponentsUnitOrder = v0;
  *v0 = xmmword_18A680EE0;
  v0[1] = xmmword_18A680EF0;
  v0[2] = xmmword_18A680F00;
  v0[3] = xmmword_18A680F10;
  *&result = 2048;
  v0[4] = xmmword_18A680F20;
  v0[5] = xmmword_18A680F30;
  return result;
}

uint64_t __38___UIDatePickerMode_Custom_components__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 equivalentUnit];
  v7 = [v5 equivalentUnit];
  v8 = *_UIDateComponentsUnitOrder;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (*_UIDateComponentsUnitOrder == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v11 = 0;
  do
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL && v8 == v6)
    {
      v9 = v11;
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL && v8 == v7)
    {
      v10 = v11;
    }

    v14 = v10 == 0x7FFFFFFFFFFFFFFFLL;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v8 = *(_UIDateComponentsUnitOrder + 8 + 8 * v11++);
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

LABEL_21:
  if (v14)
  {
LABEL_2:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"unable to sort units: (%lu => %lu) and (%lu => %lu)", objc_msgSend(v4, "calendarUnit"), v6, objc_msgSend(v5, "calendarUnit"), v7}];
  }

  if (v9 < v10)
  {
    v16 = -1;
  }

  else
  {
    v16 = v9 > v10;
  }

  return v16;
}

@end