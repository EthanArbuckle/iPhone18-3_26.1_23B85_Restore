@interface PXTimelineSchedulerOptions
+ (id)_sortTimelineSizesFromSet:(id)a3;
- (PXTimelineSchedulerOptions)init;
- (void)updateOptionsForTimelineSize:(unint64_t)a3 withTimelineSizes:(id)a4;
@end

@implementation PXTimelineSchedulerOptions

- (void)updateOptionsForTimelineSize:(unint64_t)a3 withTimelineSizes:(id)a4
{
  v6 = a4;
  v10 = [objc_opt_class() _sortTimelineSizesFromSet:v6];

  [(PXTimelineSchedulerOptions *)self setTimelineForSize:a3];
  -[PXTimelineSchedulerOptions setNumberOfTimelines:](self, "setNumberOfTimelines:", [v10 count]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v10 indexOfObject:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [(PXTimelineSchedulerOptions *)self setTimelineIndex:v9];
}

- (PXTimelineSchedulerOptions)init
{
  v8.receiver = self;
  v8.super_class = PXTimelineSchedulerOptions;
  v2 = [(PXTimelineSchedulerOptions *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E69BF138];
    v2->_timelineEntryDuration = 3600.0;
    v2->_bestContentEntryDuration = *v4;
    v5 = [*MEMORY[0x1E69BF140] copy];
    bestContentStartTimeHours = v3->_bestContentStartTimeHours;
    v3->_bestContentStartTimeHours = v5;

    v3->_timelineForSize = 0;
    v3->_timelineIndex = 0;
    v3->_numberOfTimelines = 1;
  }

  return v3;
}

+ (id)_sortTimelineSizesFromSet:(id)a3
{
  v5 = [a3 allObjects];
  v6 = [v5 mutableCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXTimelineSchedulerOptions__sortTimelineSizesFromSet___block_invoke;
  v8[3] = &unk_1E773B870;
  v9 = &unk_1F1910D80;
  v10 = a2;
  v11 = a1;
  [v6 sortUsingComparator:v8];

  return v6;
}

uint64_t __56__PXTimelineSchedulerOptions__sortTimelineSizesFromSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) indexOfObject:v5];
  v8 = [*(a1 + 32) indexOfObject:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    PXAssertGetLog();
  }

  if (v7 < v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end