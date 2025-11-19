@interface NSDate(PhotosUICore)
+ (uint64_t)px_unionStartDate:()PhotosUICore endDate:withDate:;
+ (void)px_unionStartDate:()PhotosUICore endDate:withDateInterval:;
- (BOOL)px_isBetweenDate:()PhotosUICore andDate:;
- (BOOL)px_isWithinTimeInterval:()PhotosUICore sinceDate:;
- (id)px_dateTruncatedToCalendarUnit:()PhotosUICore calendar:;
- (uint64_t)px_isSameDayAsDate:()PhotosUICore;
- (unint64_t)px_yearsSinceDate:()PhotosUICore;
@end

@implementation NSDate(PhotosUICore)

- (id)px_dateTruncatedToCalendarUnit:()PhotosUICore calendar:
{
  v7 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NSDate+PhotosUIFoundation.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];
  }

  if (a3 > 31)
  {
    switch(a3)
    {
      case 32:
        v8 = 62;
        break;
      case 64:
        v8 = 126;
        break;
      case 128:
        v8 = 254;
        break;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v8 = 6;
        break;
      case 8:
        v8 = 14;
        break;
      case 16:
        v8 = 30;
        break;
      default:
LABEL_22:
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSCalendarUnit _CalendarUnitMaskForCalendarUnit(NSCalendarUnit)"];
        [v13 handleFailureInFunction:v14 file:@"NSDate+PhotosUIFoundation.m" lineNumber:102 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  v9 = [v7 components:v8 fromDate:a1];
  if (v9)
  {
    v10 = [v7 dateFromComponents:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)px_isBetweenDate:()PhotosUICore andDate:
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [v8 earlierDate:v7];
    v10 = [v8 laterDate:v7];

    [a1 timeIntervalSinceDate:v9];
    if (v11 >= 0.0)
    {
      [a1 timeIntervalSinceDate:v10];
      v4 = v12 <= 0.0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)px_isWithinTimeInterval:()PhotosUICore sinceDate:
{
  if (!a4)
  {
    return 0;
  }

  [a1 timeIntervalSinceDate:?];
  return v5 <= a2 && v5 >= 0.0;
}

- (unint64_t)px_yearsSinceDate:()PhotosUICore
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"NSDate+PhotosUIFoundation.m" lineNumber:23 description:@"date cannot be nil"];
  }

  [a1 timeIntervalSinceDate:v5];
  v7 = v6;
  if (v6 < 0.0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NSDate+PhotosUIFoundation.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"timeInterval >= 0"}];
  }

  v8 = v7 / 31557600.0;
  v9 = vcvtas_u32_f32(v8);

  return v9;
}

- (uint64_t)px_isSameDayAsDate:()PhotosUICore
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 inSameDayAsDate:v5];

  return v7;
}

+ (void)px_unionStartDate:()PhotosUICore endDate:withDateInterval:
{
  v7 = a5;
  if (v7)
  {
    v18 = v7;
    if (a3)
    {
      v8 = *a3;
      v9 = [v7 startDate];
      v10 = v9;
      if (v8)
      {
        v11 = [v8 earlierDate:v9];
        *a3 = v11;
      }

      else
      {
        v12 = v9;
        *a3 = v10;
      }

      v7 = v18;
    }

    if (a4)
    {
      v13 = *a4;
      v14 = [v7 endDate];
      v15 = v14;
      if (v13)
      {
        v16 = [v13 laterDate:v14];
        *a4 = v16;
      }

      else
      {
        v17 = v14;
        *a4 = v15;
      }

      v7 = v18;
    }
  }
}

+ (uint64_t)px_unionStartDate:()PhotosUICore endDate:withDate:
{
  v7 = a5;
  v8 = v7;
  if (v7)
  {
    v12 = v7;
    if (a3)
    {
      if (!*a3)
      {
        v7 = v7;
        v8 = v12;
        *a3 = v12;
        if (!a4)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      v9 = [*a3 earlierDate:v7];
      *a3 = v9;

      v8 = v12;
    }

    if (!a4)
    {
      goto LABEL_11;
    }

LABEL_6:
    if (*a4)
    {
      v10 = [*a4 laterDate:v12];
      *a4 = v10;

      v8 = v12;
    }

    else
    {
      v7 = v8;
      v8 = v12;
      *a4 = v12;
    }
  }

LABEL_11:

  return MEMORY[0x1EEE66BB8](v7, v8);
}

@end