@interface PXStoryDurationFormatter
- (NSDateComponentsFormatter)dateComponentsFormatter;
- (id)stringFromTimeInterval:(double)a3;
@end

@implementation PXStoryDurationFormatter

- (id)stringFromTimeInterval:(double)a3
{
  if (fabs(a3) == INFINITY)
  {
    v4 = @"<infinite duration>";
    goto LABEL_5;
  }

  if (a3 == 0.0)
  {
    v4 = @"0s";
    goto LABEL_5;
  }

  if (a3 < 0.0)
  {
    v6 = [(PXStoryDurationFormatter *)self stringFromTimeInterval:-a3];
    v4 = [@"-" stringByAppendingString:v6];
LABEL_10:

    goto LABEL_5;
  }

  if (a3 * 1000000.0 >= 10.0)
  {
    if (a3 * 1000.0 >= 1.0)
    {
      if (a3 * 1000.0 >= 10.0)
      {
        if (a3 >= 1.0)
        {
          if (a3 >= 10.0)
          {
            v6 = [(PXStoryDurationFormatter *)self dateComponentsFormatter];
            v8 = [v6 stringFromTimeInterval:a3];
            v9 = v8;
            v10 = @"?";
            if (v8)
            {
              v10 = v8;
            }

            v4 = v10;

            goto LABEL_10;
          }

          v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fs", *&a3];
        }

        else
        {
          v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.0fms", a3 * 1000.0];
        }
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fms", a3 * 1000.0];
      }
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.0fµs", a3 * 1000000.0];
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fµs", a3 * 1000000.0];
  }

  v4 = v7;
LABEL_5:

  return v4;
}

- (NSDateComponentsFormatter)dateComponentsFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_dateComponentsFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
    dateComponentsFormatter = v2->_dateComponentsFormatter;
    v2->_dateComponentsFormatter = v3;

    [(NSDateComponentsFormatter *)v2->_dateComponentsFormatter setAllowedUnits:224];
    [(NSDateComponentsFormatter *)v2->_dateComponentsFormatter setUnitsStyle:1];
    [(NSDateComponentsFormatter *)v2->_dateComponentsFormatter setZeroFormattingBehavior:1];
  }

  objc_sync_exit(v2);

  v5 = v2->_dateComponentsFormatter;

  return v5;
}

@end