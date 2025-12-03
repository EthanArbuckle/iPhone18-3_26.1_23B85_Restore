@interface PLQueryBuilder
+ (id)_combineFirstQuery:(id)query secondQuery:(id)secondQuery conjunction:(int)conjunction;
+ (id)notQuery:(id)query;
+ (id)validComparatorsForQueryKey:(int)key;
+ (id)validUnitValuesForQueryKey:(int)key;
- (PLQueryBuilder)initWithConjunction:(int)conjunction;
- (void)_addCircularRegionQueryKey:(int)key circularRegionValue:(id)value comparator:(int)comparator;
- (void)_addDateUnitQueryForKey:(int)key withValue:(id)value withType:(int)type withUnit:(int)unit exclude:(BOOL)exclude;
- (void)_addQueryForKey:(int)key withValue:(id)value withType:(int)type withComparator:(int)comparator;
- (void)_addQueryWithKey:(int)key firstValue:(id)value secondValue:(id)secondValue valueType:(int)type unit:(int)unit comparator:(int)comparator;
- (void)_addRangeQueryForKey:(int)key withFirstValue:(id)value withSecondValue:(id)secondValue withType:(int)type;
- (void)_addStringQueryKey:(int)key stringValue:(id)value comparator:(int)comparator;
- (void)addApertureRangeQueryBetweenValue:(double)value andValue:(double)andValue;
- (void)addAssetTypeQuery:(int)query exclude:(BOOL)exclude;
- (void)addDateRangeQueryKey:(int)key between:(id)between and:(id)and;
- (void)addDoubleQueryKey:(int)key withValue:(double)value comparator:(int)comparator;
- (void)addFlashQuery:(BOOL)query;
- (void)addHasLocationQuery:(BOOL)query;
- (void)addInTheLastDaysQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude;
- (void)addInTheLastMonthsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude;
- (void)addInTheLastSecondsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude;
- (void)addInTheLastWeeksQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude;
- (void)addInTheLastYearsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude;
- (void)addIntegerQueryKey:(int)key withValue:(int64_t)value comparator:(int)comparator;
- (void)addIsAdjustedQuery:(BOOL)query;
- (void)addIsAfterDateQueryKey:(int)key withDate:(id)date;
- (void)addIsBeforeDateQueryKey:(int)key withDate:(id)date;
- (void)addIsDateQueryKey:(int)key withDate:(id)date exclude:(BOOL)exclude;
- (void)addIsEmptyQueryForKey:(int)key isEmpty:(BOOL)empty;
- (void)addIsFavoriteQuery:(BOOL)query;
- (void)addIsHiddenQuery:(BOOL)query;
- (void)addIsProResQuery:(BOOL)query;
- (void)addIsRawQuery:(BOOL)query;
- (void)addIsReferencedMediaQuery:(BOOL)query;
- (void)addIsoRangeQueryBetweenValue:(int64_t)value andValue:(int64_t)andValue;
- (void)addKeywordQuery:(id)query exclude:(BOOL)exclude;
@end

@implementation PLQueryBuilder

- (void)_addQueryForKey:(int)key withValue:(id)value withType:(int)type withComparator:(int)comparator
{
  v6 = *&comparator;
  v7 = *&type;
  v8 = *&key;
  if (value)
  {
    v10 = convertToData(value);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [(PLQueryBuilder *)self _addQueryWithKey:v8 firstValue:v10 secondValue:0 valueType:v7 unit:0 comparator:v6];
}

- (void)addKeywordQuery:(id)query exclude:(BOOL)exclude
{
  if (exclude)
  {
    v4 = 23;
  }

  else
  {
    v4 = 22;
  }

  [(PLQueryBuilder *)self _addStringQueryKey:500 stringValue:query comparator:v4];
}

- (void)addIntegerQueryKey:(int)key withValue:(int64_t)value comparator:(int)comparator
{
  v5 = *&comparator;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidNumericComparator:*&comparator])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v10 = convertToData(v9);

    [(PLQueryBuilder *)self _addQueryWithKey:v7 firstValue:v10 secondValue:0 valueType:1 unit:0 comparator:v5];
  }
}

- (void)addDoubleQueryKey:(int)key withValue:(double)value comparator:(int)comparator
{
  v5 = *&comparator;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidNumericComparator:*&comparator])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    v10 = convertToData(v9);

    [(PLQueryBuilder *)self _addQueryWithKey:v7 firstValue:v10 secondValue:0 valueType:2 unit:0 comparator:v5];
  }
}

- (void)addHasLocationQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:319 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addFlashQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:302 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsEmptyQueryForKey:(int)key isEmpty:(BOOL)empty
{
  emptyCopy = empty;
  v5 = *&key;
  if ([(PLQueryBuilder *)self _validIsEmptyQueryKey:?])
  {
    if (emptyCopy)
    {
      v7 = 50;
    }

    else
    {
      v7 = 51;
    }

    [(PLQueryBuilder *)self _addQueryWithKey:v5 firstValue:0 secondValue:0 valueType:0 unit:0 comparator:v7];
  }
}

- (void)_addCircularRegionQueryKey:(int)key circularRegionValue:(id)value comparator:(int)comparator
{
  v5 = *&comparator;
  v6 = *&key;
  valueCopy = value;
  if ([(PLQueryBuilder *)self _isValidCircularRegionComparator:v5])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v6 withValue:valueCopy withType:5 withComparator:v5];
  }
}

- (void)_addStringQueryKey:(int)key stringValue:(id)value comparator:(int)comparator
{
  v5 = *&comparator;
  v6 = *&key;
  valueCopy = value;
  if ([(PLQueryBuilder *)self _isValidStringComparator:v5])
  {
    v8 = [valueCopy dataUsingEncoding:4];
    [(PLQueryBuilder *)self _addQueryWithKey:v6 firstValue:v8 secondValue:0 valueType:3 unit:0 comparator:v5];
  }
}

- (void)addDateRangeQueryKey:(int)key between:(id)between and:(id)and
{
  v6 = *&key;
  betweenCopy = between;
  andCopy = and;
  if ([(PLQueryBuilder *)self _isValidDateKey:v6])
  {
    [(PLQueryBuilder *)self _addRangeQueryForKey:v6 withFirstValue:betweenCopy withSecondValue:andCopy withType:4];
  }
}

- (void)addIsoRangeQueryBetweenValue:(int64_t)value andValue:(int64_t)andValue
{
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:andValue];
  [(PLQueryBuilder *)self _addRangeQueryForKey:304 withFirstValue:v7 withSecondValue:v6 withType:1];
}

- (void)addApertureRangeQueryBetweenValue:(double)value andValue:(double)andValue
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:andValue];
  [(PLQueryBuilder *)self _addRangeQueryForKey:300 withFirstValue:v7 withSecondValue:v6 withType:2];
}

- (void)_addRangeQueryForKey:(int)key withFirstValue:(id)value withSecondValue:(id)secondValue withType:(int)type
{
  v6 = *&type;
  v8 = *&key;
  secondValueCopy = secondValue;
  v12 = convertToData(value);
  v11 = convertToData(secondValueCopy);

  [(PLQueryBuilder *)self _addQueryWithKey:v8 firstValue:v12 secondValue:v11 valueType:v6 unit:0 comparator:30];
}

- (void)_addDateUnitQueryForKey:(int)key withValue:(id)value withType:(int)type withUnit:(int)unit exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v8 = *&unit;
  v9 = *&type;
  v10 = *&key;
  valueCopy = value;
  if ([(PLQueryBuilder *)self _isValidDateKey:v10])
  {
    v12 = convertToData(valueCopy);
    if (excludeCopy)
    {
      v13 = 41;
    }

    else
    {
      v13 = 40;
    }

    [(PLQueryBuilder *)self _addQueryWithKey:v10 firstValue:v12 secondValue:0 valueType:v9 unit:v8 comparator:v13];
  }
}

- (void)addInTheLastSecondsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:5 exclude:excludeCopy];
  }
}

- (void)addInTheLastYearsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:4 exclude:excludeCopy];
  }
}

- (void)addInTheLastMonthsQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:3 exclude:excludeCopy];
  }
}

- (void)addInTheLastWeeksQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:2 exclude:excludeCopy];
  }
}

- (void)addInTheLastDaysQueryKey:(int)key withCount:(int64_t)count exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v7 = *&key;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:1 exclude:excludeCopy];
  }
}

- (void)addIsBeforeDateQueryKey:(int)key withDate:(id)date
{
  v4 = *&key;
  dateCopy = date;
  if ([(PLQueryBuilder *)self _isValidDateKey:v4])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v4 withValue:dateCopy withType:4 withComparator:4];
  }
}

- (void)addIsAfterDateQueryKey:(int)key withDate:(id)date
{
  v4 = *&key;
  dateCopy = date;
  if ([(PLQueryBuilder *)self _isValidDateKey:v4])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v4 withValue:dateCopy withType:4 withComparator:5];
  }
}

- (void)addIsDateQueryKey:(int)key withDate:(id)date exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  v6 = *&key;
  dateCopy = date;
  if ([(PLQueryBuilder *)self _isValidDateKey:v6])
  {
    if (excludeCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(PLQueryBuilder *)self _addQueryForKey:v6 withValue:dateCopy withType:4 withComparator:v8];
  }
}

- (void)addIsReferencedMediaQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:6 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addAssetTypeQuery:(int)query exclude:(BOOL)exclude
{
  if (exclude)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&query];
  [(PLQueryBuilder *)self _addQueryForKey:5 withValue:v6 withType:1 withComparator:v5];
}

- (void)addIsProResQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:9 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsRawQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:4 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsAdjustedQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:3 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsHiddenQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:2 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsFavoriteQuery:(BOOL)query
{
  if (query)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:1 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)_addQueryWithKey:(int)key firstValue:(id)value secondValue:(id)secondValue valueType:(int)type unit:(int)unit comparator:(int)comparator
{
  v8 = *&comparator;
  v9 = *&unit;
  v10 = *&type;
  v12 = *&key;
  secondValueCopy = secondValue;
  valueCopy = value;
  v15 = objc_alloc_init(PLSingleQuery);
  [(PLSingleQuery *)v15 setKey:v12];
  [(PLSingleQuery *)v15 setValueType:v10];
  [(PLSingleQuery *)v15 setFirstValue:valueCopy];

  if (secondValueCopy)
  {
    [(PLSingleQuery *)v15 setSecondValue:secondValueCopy];
  }

  if (v8)
  {
    [(PLSingleQuery *)v15 setComparator:v8];
  }

  if (v9)
  {
    [(PLSingleQuery *)v15 setUnit:v9];
  }

  [(PLQuery *)self->_query addSingleQueries:v15];
}

- (PLQueryBuilder)initWithConjunction:(int)conjunction
{
  v3 = *&conjunction;
  v8.receiver = self;
  v8.super_class = PLQueryBuilder;
  v4 = [(PLQueryBuilder *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(PLQuery);
    query = v4->_query;
    v4->_query = v5;

    [(PLQuery *)v4->_query setConjunction:v3];
  }

  return v4;
}

+ (id)validUnitValuesForQueryKey:(int)key
{
  if ((key & 0xFFFFFFFE) == 0xC8)
  {
    return &unk_1F1F91250;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

+ (id)validComparatorsForQueryKey:(int)key
{
  result = &unk_1F1F91190;
  if (key > 399)
  {
    if (key > 549)
    {
      if (key > 552)
      {
        if (key == 1000)
        {
          return result;
        }

        if (key == 600)
        {
          return &unk_1F1F91238;
        }

        if (key != 553)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }

      if (key != 550)
      {
        if (key != 551)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }
    }

    else
    {
      if (key > 401)
      {
        if (key == 402)
        {
          return &unk_1F1F911F0;
        }

        if (key == 403)
        {
          return &unk_1F1F911D8;
        }

        if (key != 500)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }

      if (key != 400)
      {
        return &unk_1F1F911D8;
      }
    }

    return &unk_1F1F911C0;
  }

  if (key <= 199)
  {
    if (key <= 9 && ((1 << key) & 0x27E) != 0)
    {
      return result;
    }

    if (key != 100)
    {
      return MEMORY[0x1E695E0F0];
    }

    return &unk_1F1F911A8;
  }

  v4 = key - 44;
  if ((key - 300) > 0x13)
  {
    goto LABEL_22;
  }

  if (((1 << v4) & 0x59) != 0)
  {
    return &unk_1F1F91208;
  }

  if (((1 << v4) & 0x22) != 0)
  {
    return &unk_1F1F911D8;
  }

  if (key != 319)
  {
LABEL_22:
    if ((key - 200) < 2)
    {
      return &unk_1F1F91220;
    }

    return MEMORY[0x1E695E0F0];
  }

  return result;
}

+ (id)_combineFirstQuery:(id)query secondQuery:(id)secondQuery conjunction:(int)conjunction
{
  v5 = *&conjunction;
  secondQueryCopy = secondQuery;
  queryCopy = query;
  v9 = objc_alloc_init(PLQuery);
  [(PLQuery *)v9 setFirst:queryCopy];

  [(PLQuery *)v9 setSecond:secondQueryCopy];
  [(PLQuery *)v9 setConjunction:v5];

  return v9;
}

+ (id)notQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc_init(PLQuery);
  [(PLQuery *)v4 setConjunction:2];
  [(PLQuery *)v4 setFirst:queryCopy];

  return v4;
}

@end