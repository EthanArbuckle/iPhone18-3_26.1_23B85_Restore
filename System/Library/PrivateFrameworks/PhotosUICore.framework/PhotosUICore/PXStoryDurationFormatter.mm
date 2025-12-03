@interface PXStoryDurationFormatter
- (NSDateComponentsFormatter)dateComponentsFormatter;
- (id)stringFromTimeInterval:(double)interval;
@end

@implementation PXStoryDurationFormatter

- (id)stringFromTimeInterval:(double)interval
{
  if (fabs(interval) == INFINITY)
  {
    v4 = @"<infinite duration>";
    goto LABEL_5;
  }

  if (interval == 0.0)
  {
    v4 = @"0s";
    goto LABEL_5;
  }

  if (interval < 0.0)
  {
    dateComponentsFormatter = [(PXStoryDurationFormatter *)self stringFromTimeInterval:-interval];
    v4 = [@"-" stringByAppendingString:dateComponentsFormatter];
LABEL_10:

    goto LABEL_5;
  }

  if (interval * 1000000.0 >= 10.0)
  {
    if (interval * 1000.0 >= 1.0)
    {
      if (interval * 1000.0 >= 10.0)
      {
        if (interval >= 1.0)
        {
          if (interval >= 10.0)
          {
            dateComponentsFormatter = [(PXStoryDurationFormatter *)self dateComponentsFormatter];
            v8 = [dateComponentsFormatter stringFromTimeInterval:interval];
            v9 = v8;
            v10 = @"?";
            if (v8)
            {
              v10 = v8;
            }

            v4 = v10;

            goto LABEL_10;
          }

          v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fs", *&interval];
        }

        else
        {
          v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.0fms", interval * 1000.0];
        }
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fms", interval * 1000.0];
      }
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.0fµs", interval * 1000000.0];
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1fµs", interval * 1000000.0];
  }

  v4 = v7;
LABEL_5:

  return v4;
}

- (NSDateComponentsFormatter)dateComponentsFormatter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_dateComponentsFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
    dateComponentsFormatter = selfCopy->_dateComponentsFormatter;
    selfCopy->_dateComponentsFormatter = v3;

    [(NSDateComponentsFormatter *)selfCopy->_dateComponentsFormatter setAllowedUnits:224];
    [(NSDateComponentsFormatter *)selfCopy->_dateComponentsFormatter setUnitsStyle:1];
    [(NSDateComponentsFormatter *)selfCopy->_dateComponentsFormatter setZeroFormattingBehavior:1];
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_dateComponentsFormatter;

  return v5;
}

@end