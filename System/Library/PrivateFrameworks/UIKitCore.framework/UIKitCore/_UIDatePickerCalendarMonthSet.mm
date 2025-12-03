@interface _UIDatePickerCalendarMonthSet
- (_NSRange)_loadOffsetRange:(__UISignedRange)range;
- (_UIDatePickerCalendarMonthSet)initWithCalendar:(id)calendar rangeLength:(unint64_t)length;
- (__UISignedRange)_offsetRangeForMonth:(id)month;
- (id)_monthAtOffset:(int64_t)offset;
- (unint64_t)_shiftReferenceMonthToFitOffsetMonthsIfNecessary:(__UISignedRange)necessary;
- (void)_clearLoadedData;
- (void)_ensureReferenceMonthWithFallbackMonth:(id)month;
- (void)insertMonthsAroundMonth:(id)month loadedIndexRange:(_NSRange *)range;
- (void)reloadWithMonthsAroundMonth:(id)month;
@end

@implementation _UIDatePickerCalendarMonthSet

- (_UIDatePickerCalendarMonthSet)initWithCalendar:(id)calendar rangeLength:(unint64_t)length
{
  calendarCopy = calendar;
  if (length)
  {
    if (length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"rangeLength > 0"}];
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:34 description:@"length needs to be an odd number."];

LABEL_3:
  v14.receiver = self;
  v14.super_class = _UIDatePickerCalendarMonthSet;
  v9 = [(_UIDatePickerCalendarMonthSet *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    v10->_rangeLength = length;
    [(_UIDatePickerCalendarMonthSet *)v10 _clearLoadedData];
  }

  return v10;
}

- (void)_clearLoadedData
{
  referenceMonth = self->_referenceMonth;
  self->_referenceMonth = 0;

  v4 = objc_opt_new();
  loadedMonthOffsets = self->_loadedMonthOffsets;
  self->_loadedMonthOffsets = v4;

  v6 = objc_opt_new();
  loadedMonths = self->_loadedMonths;
  self->_loadedMonths = v6;
}

- (void)_ensureReferenceMonthWithFallbackMonth:(id)month
{
  monthCopy = month;
  referenceMonth = self->_referenceMonth;
  p_referenceMonth = &self->_referenceMonth;
  if (!referenceMonth)
  {
    v8 = monthCopy;
    objc_storeStrong(p_referenceMonth, month);
    monthCopy = v8;
  }
}

- (id)_monthAtOffset:(int64_t)offset
{
  if (self->_referenceMonth)
  {
    if (offset)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = self->_referenceMonth;
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"_referenceMonth"}];

  if (!offset)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (offset < 0 || ![(NSMutableIndexSet *)self->_loadedMonthOffsets containsIndex:offset])
  {
    calendar = self->_calendar;
    referenceMonth = self->_referenceMonth;
    v8 = calendar;
    date = [(_UIDatePickerCalendarDateComponent *)referenceMonth date];
    v10 = objc_opt_new();
    [v10 setMonth:offset];
    v11 = [(NSCalendar *)v8 dateByAddingComponents:v10 toDate:date options:0];
    v12 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarMonth alloc] initWithDate:v11 calendar:v8];

    goto LABEL_10;
  }

  v5 = [(NSMutableOrderedSet *)self->_loadedMonths objectAtIndexedSubscript:[(NSMutableIndexSet *)self->_loadedMonthOffsets countOfIndexesInRange:0, offset]];
LABEL_9:
  v12 = v5;
LABEL_10:

  return v12;
}

- (__UISignedRange)_offsetRangeForMonth:(id)month
{
  monthCopy = month;
  [(_UIDatePickerCalendarMonthSet *)self _ensureReferenceMonthWithFallbackMonth:monthCopy];
  referenceMonth = self->_referenceMonth;
  v6 = self->_calendar;
  v7 = monthCopy;
  v8 = referenceMonth;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _offsetForMonth(NSCalendar * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v19 file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"month"}];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _offsetForMonth(NSCalendar * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong)"}];
  [currentHandler2 handleFailureInFunction:v17 file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_10:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _offsetForMonth(NSCalendar * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong, _UIDatePickerCalendarMonth * _Nonnull __strong)"}];
  [currentHandler3 handleFailureInFunction:v21 file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"referenceMonth"}];

LABEL_4:
  if (v8 == v7)
  {
    month = 0;
  }

  else
  {
    date = [(_UIDatePickerCalendarDateComponent *)v8 date];
    date2 = [(_UIDatePickerCalendarDateComponent *)v7 date];
    v11 = [(NSCalendar *)v6 components:8 fromDate:date toDate:date2 options:0];

    month = [v11 month];
  }

  rangeLength = self->_rangeLength;
  v14 = month - (rangeLength >> 1);
  v15 = rangeLength;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (unint64_t)_shiftReferenceMonthToFitOffsetMonthsIfNecessary:(__UISignedRange)necessary
{
  var0 = necessary.var0;
  if (!self->_referenceMonth)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"_referenceMonth"}];

    if ((var0 & 0x8000000000000000) == 0)
    {
      return 0;
    }

LABEL_5:
    v5 = -var0;
    v8 = [(_UIDatePickerCalendarMonthSet *)self _monthAtOffset:var0, necessary.var1];
    referenceMonth = self->_referenceMonth;
    self->_referenceMonth = v8;
    v10 = v8;

    [(NSMutableIndexSet *)self->_loadedMonthOffsets shiftIndexesStartingAtIndex:0 by:v5];
    return v5;
  }

  if (necessary.var0 < 0)
  {
    goto LABEL_5;
  }

  return 0;
}

- (_NSRange)_loadOffsetRange:(__UISignedRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  if (!self->_referenceMonth)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"_referenceMonth"}];
  }

  v7 = [(_UIDatePickerCalendarMonthSet *)self _shiftReferenceMonthToFitOffsetMonthsIfNecessary:var0, var1]+ var0;
  if (v7 < 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:137 description:{@"After adjusting the reference month, the requested range should no longer be negative."}];
  }

  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, var1}];
  v9 = [v8 mutableCopy];
  [v9 removeIndexes:self->_loadedMonthOffsets];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v41 = "";
  v42 = xmmword_18A678470;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __50___UIDatePickerCalendarMonthSet__loadOffsetRange___block_invoke;
  v32 = &unk_1E70FA400;
  v36 = &v38;
  v37 = a2;
  selfCopy = self;
  v10 = v8;
  v34 = v10;
  v11 = v9;
  v35 = v11;
  [v11 enumerateRangesUsingBlock:&v29];
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v39[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(NSMutableOrderedSet *)self->_loadedMonths count];
    v15 = [(NSMutableIndexSet *)self->_loadedMonthOffsets countOfIndexesInRange:0, v39[4]];
    v12 = v15;
    v16 = v39[4];
    v13 = v39[5];
    if (v16 >= v16 + v13)
    {
      v19 = v39[5];
    }

    else
    {
      v17 = v15;
      do
      {
        v18 = [(_UIDatePickerCalendarMonthSet *)self _monthAtOffset:v16];
        [(NSMutableOrderedSet *)self->_loadedMonths insertObject:v18 atIndex:v17++];

        ++v16;
        v19 = v39[5];
      }

      while (v16 < v19 + v39[4]);
      v16 = v39[4];
    }

    [(NSMutableIndexSet *)self->_loadedMonthOffsets addIndexesInRange:v16, v19];
    v20 = [(NSMutableOrderedSet *)self->_loadedMonths count];
    if (v20 != v39[5] + v14)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [(NSMutableOrderedSet *)self->_loadedMonths count];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:173 description:{@"Invalid update: invalid number of loaded months. The number of loaded months after the update (%lu) must be equal to the number of loaded months before the update (%lu) plus the number of months inserted (%lu).", v27, v14, v39[5], v29, v30, v31, v32, selfCopy, v34}];
    }

    v21 = [(NSMutableOrderedSet *)self->_loadedMonths count];
    if (v21 != [(NSMutableIndexSet *)self->_loadedMonthOffsets count])
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:174 description:{@"Internal inconsistency: the number of loaded months (%lu) must be equal to the number of stored month offsets (%lu).", -[NSMutableOrderedSet count](self->_loadedMonths, "count"), -[NSMutableIndexSet count](self->_loadedMonthOffsets, "count")}];
    }
  }

  _Block_object_dispose(&v38, 8);
  v22 = v12;
  v23 = v13;
  result.length = v23;
  result.location = v22;
  return result;
}

- (void)reloadWithMonthsAroundMonth:(id)month
{
  monthCopy = month;
  [(_UIDatePickerCalendarMonthSet *)self _clearLoadedData];
  [(_UIDatePickerCalendarMonthSet *)self insertMonthsAroundMonth:monthCopy loadedIndexRange:0];
}

- (void)insertMonthsAroundMonth:(id)month loadedIndexRange:(_NSRange *)range
{
  v6 = [(_UIDatePickerCalendarMonthSet *)self _offsetRangeForMonth:month];
  v8 = [(_UIDatePickerCalendarMonthSet *)self _loadOffsetRange:v6, v7];
  if (range)
  {
    range->location = v8;
    range->length = v9;
  }
}

@end