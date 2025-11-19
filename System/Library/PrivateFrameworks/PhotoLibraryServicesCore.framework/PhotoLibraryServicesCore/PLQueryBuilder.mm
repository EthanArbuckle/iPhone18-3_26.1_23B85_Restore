@interface PLQueryBuilder
+ (id)_combineFirstQuery:(id)a3 secondQuery:(id)a4 conjunction:(int)a5;
+ (id)notQuery:(id)a3;
+ (id)validComparatorsForQueryKey:(int)a3;
+ (id)validUnitValuesForQueryKey:(int)a3;
- (PLQueryBuilder)initWithConjunction:(int)a3;
- (void)_addCircularRegionQueryKey:(int)a3 circularRegionValue:(id)a4 comparator:(int)a5;
- (void)_addDateUnitQueryForKey:(int)a3 withValue:(id)a4 withType:(int)a5 withUnit:(int)a6 exclude:(BOOL)a7;
- (void)_addQueryForKey:(int)a3 withValue:(id)a4 withType:(int)a5 withComparator:(int)a6;
- (void)_addQueryWithKey:(int)a3 firstValue:(id)a4 secondValue:(id)a5 valueType:(int)a6 unit:(int)a7 comparator:(int)a8;
- (void)_addRangeQueryForKey:(int)a3 withFirstValue:(id)a4 withSecondValue:(id)a5 withType:(int)a6;
- (void)_addStringQueryKey:(int)a3 stringValue:(id)a4 comparator:(int)a5;
- (void)addApertureRangeQueryBetweenValue:(double)a3 andValue:(double)a4;
- (void)addAssetTypeQuery:(int)a3 exclude:(BOOL)a4;
- (void)addDateRangeQueryKey:(int)a3 between:(id)a4 and:(id)a5;
- (void)addDoubleQueryKey:(int)a3 withValue:(double)a4 comparator:(int)a5;
- (void)addFlashQuery:(BOOL)a3;
- (void)addHasLocationQuery:(BOOL)a3;
- (void)addInTheLastDaysQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5;
- (void)addInTheLastMonthsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5;
- (void)addInTheLastSecondsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5;
- (void)addInTheLastWeeksQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5;
- (void)addInTheLastYearsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5;
- (void)addIntegerQueryKey:(int)a3 withValue:(int64_t)a4 comparator:(int)a5;
- (void)addIsAdjustedQuery:(BOOL)a3;
- (void)addIsAfterDateQueryKey:(int)a3 withDate:(id)a4;
- (void)addIsBeforeDateQueryKey:(int)a3 withDate:(id)a4;
- (void)addIsDateQueryKey:(int)a3 withDate:(id)a4 exclude:(BOOL)a5;
- (void)addIsEmptyQueryForKey:(int)a3 isEmpty:(BOOL)a4;
- (void)addIsFavoriteQuery:(BOOL)a3;
- (void)addIsHiddenQuery:(BOOL)a3;
- (void)addIsProResQuery:(BOOL)a3;
- (void)addIsRawQuery:(BOOL)a3;
- (void)addIsReferencedMediaQuery:(BOOL)a3;
- (void)addIsoRangeQueryBetweenValue:(int64_t)a3 andValue:(int64_t)a4;
- (void)addKeywordQuery:(id)a3 exclude:(BOOL)a4;
@end

@implementation PLQueryBuilder

- (void)_addQueryForKey:(int)a3 withValue:(id)a4 withType:(int)a5 withComparator:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a3;
  if (a4)
  {
    v10 = convertToData(a4);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [(PLQueryBuilder *)self _addQueryWithKey:v8 firstValue:v10 secondValue:0 valueType:v7 unit:0 comparator:v6];
}

- (void)addKeywordQuery:(id)a3 exclude:(BOOL)a4
{
  if (a4)
  {
    v4 = 23;
  }

  else
  {
    v4 = 22;
  }

  [(PLQueryBuilder *)self _addStringQueryKey:500 stringValue:a3 comparator:v4];
}

- (void)addIntegerQueryKey:(int)a3 withValue:(int64_t)a4 comparator:(int)a5
{
  v5 = *&a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidNumericComparator:*&a5])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v10 = convertToData(v9);

    [(PLQueryBuilder *)self _addQueryWithKey:v7 firstValue:v10 secondValue:0 valueType:1 unit:0 comparator:v5];
  }
}

- (void)addDoubleQueryKey:(int)a3 withValue:(double)a4 comparator:(int)a5
{
  v5 = *&a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidNumericComparator:*&a5])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v10 = convertToData(v9);

    [(PLQueryBuilder *)self _addQueryWithKey:v7 firstValue:v10 secondValue:0 valueType:2 unit:0 comparator:v5];
  }
}

- (void)addHasLocationQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:319 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addFlashQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:302 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsEmptyQueryForKey:(int)a3 isEmpty:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  if ([(PLQueryBuilder *)self _validIsEmptyQueryKey:?])
  {
    if (v4)
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

- (void)_addCircularRegionQueryKey:(int)a3 circularRegionValue:(id)a4 comparator:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  if ([(PLQueryBuilder *)self _isValidCircularRegionComparator:v5])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v6 withValue:v8 withType:5 withComparator:v5];
  }
}

- (void)_addStringQueryKey:(int)a3 stringValue:(id)a4 comparator:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v9 = a4;
  if ([(PLQueryBuilder *)self _isValidStringComparator:v5])
  {
    v8 = [v9 dataUsingEncoding:4];
    [(PLQueryBuilder *)self _addQueryWithKey:v6 firstValue:v8 secondValue:0 valueType:3 unit:0 comparator:v5];
  }
}

- (void)addDateRangeQueryKey:(int)a3 between:(id)a4 and:(id)a5
{
  v6 = *&a3;
  v9 = a4;
  v8 = a5;
  if ([(PLQueryBuilder *)self _isValidDateKey:v6])
  {
    [(PLQueryBuilder *)self _addRangeQueryForKey:v6 withFirstValue:v9 withSecondValue:v8 withType:4];
  }
}

- (void)addIsoRangeQueryBetweenValue:(int64_t)a3 andValue:(int64_t)a4
{
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(PLQueryBuilder *)self _addRangeQueryForKey:304 withFirstValue:v7 withSecondValue:v6 withType:1];
}

- (void)addApertureRangeQueryBetweenValue:(double)a3 andValue:(double)a4
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [(PLQueryBuilder *)self _addRangeQueryForKey:300 withFirstValue:v7 withSecondValue:v6 withType:2];
}

- (void)_addRangeQueryForKey:(int)a3 withFirstValue:(id)a4 withSecondValue:(id)a5 withType:(int)a6
{
  v6 = *&a6;
  v8 = *&a3;
  v10 = a5;
  v12 = convertToData(a4);
  v11 = convertToData(v10);

  [(PLQueryBuilder *)self _addQueryWithKey:v8 firstValue:v12 secondValue:v11 valueType:v6 unit:0 comparator:30];
}

- (void)_addDateUnitQueryForKey:(int)a3 withValue:(id)a4 withType:(int)a5 withUnit:(int)a6 exclude:(BOOL)a7
{
  v7 = a7;
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a3;
  v14 = a4;
  if ([(PLQueryBuilder *)self _isValidDateKey:v10])
  {
    v12 = convertToData(v14);
    if (v7)
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

- (void)addInTheLastSecondsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:5 exclude:v5];
  }
}

- (void)addInTheLastYearsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:4 exclude:v5];
  }
}

- (void)addInTheLastMonthsQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:3 exclude:v5];
  }
}

- (void)addInTheLastWeeksQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:2 exclude:v5];
  }
}

- (void)addInTheLastDaysQueryKey:(int)a3 withCount:(int64_t)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  if ([(PLQueryBuilder *)self _isValidDateKey:?])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(PLQueryBuilder *)self _addDateUnitQueryForKey:v7 withValue:v9 withType:1 withUnit:1 exclude:v5];
  }
}

- (void)addIsBeforeDateQueryKey:(int)a3 withDate:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([(PLQueryBuilder *)self _isValidDateKey:v4])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v4 withValue:v6 withType:4 withComparator:4];
  }
}

- (void)addIsAfterDateQueryKey:(int)a3 withDate:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([(PLQueryBuilder *)self _isValidDateKey:v4])
  {
    [(PLQueryBuilder *)self _addQueryForKey:v4 withValue:v6 withType:4 withComparator:5];
  }
}

- (void)addIsDateQueryKey:(int)a3 withDate:(id)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v9 = a4;
  if ([(PLQueryBuilder *)self _isValidDateKey:v6])
  {
    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(PLQueryBuilder *)self _addQueryForKey:v6 withValue:v9 withType:4 withComparator:v8];
  }
}

- (void)addIsReferencedMediaQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:6 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addAssetTypeQuery:(int)a3 exclude:(BOOL)a4
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  [(PLQueryBuilder *)self _addQueryForKey:5 withValue:v6 withType:1 withComparator:v5];
}

- (void)addIsProResQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:9 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsRawQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:4 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsAdjustedQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:3 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsHiddenQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:2 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)addIsFavoriteQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PLQueryBuilder *)self _addQueryForKey:1 withValue:MEMORY[0x1E695E118] withType:1 withComparator:v3];
}

- (void)_addQueryWithKey:(int)a3 firstValue:(id)a4 secondValue:(id)a5 valueType:(int)a6 unit:(int)a7 comparator:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = *&a6;
  v12 = *&a3;
  v16 = a5;
  v14 = a4;
  v15 = objc_alloc_init(PLSingleQuery);
  [(PLSingleQuery *)v15 setKey:v12];
  [(PLSingleQuery *)v15 setValueType:v10];
  [(PLSingleQuery *)v15 setFirstValue:v14];

  if (v16)
  {
    [(PLSingleQuery *)v15 setSecondValue:v16];
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

- (PLQueryBuilder)initWithConjunction:(int)a3
{
  v3 = *&a3;
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

+ (id)validUnitValuesForQueryKey:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 0xC8)
  {
    return &unk_1F1F91250;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

+ (id)validComparatorsForQueryKey:(int)a3
{
  result = &unk_1F1F91190;
  if (a3 > 399)
  {
    if (a3 > 549)
    {
      if (a3 > 552)
      {
        if (a3 == 1000)
        {
          return result;
        }

        if (a3 == 600)
        {
          return &unk_1F1F91238;
        }

        if (a3 != 553)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }

      if (a3 != 550)
      {
        if (a3 != 551)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }
    }

    else
    {
      if (a3 > 401)
      {
        if (a3 == 402)
        {
          return &unk_1F1F911F0;
        }

        if (a3 == 403)
        {
          return &unk_1F1F911D8;
        }

        if (a3 != 500)
        {
          return MEMORY[0x1E695E0F0];
        }

        return &unk_1F1F911A8;
      }

      if (a3 != 400)
      {
        return &unk_1F1F911D8;
      }
    }

    return &unk_1F1F911C0;
  }

  if (a3 <= 199)
  {
    if (a3 <= 9 && ((1 << a3) & 0x27E) != 0)
    {
      return result;
    }

    if (a3 != 100)
    {
      return MEMORY[0x1E695E0F0];
    }

    return &unk_1F1F911A8;
  }

  v4 = a3 - 44;
  if ((a3 - 300) > 0x13)
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

  if (a3 != 319)
  {
LABEL_22:
    if ((a3 - 200) < 2)
    {
      return &unk_1F1F91220;
    }

    return MEMORY[0x1E695E0F0];
  }

  return result;
}

+ (id)_combineFirstQuery:(id)a3 secondQuery:(id)a4 conjunction:(int)a5
{
  v5 = *&a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(PLQuery);
  [(PLQuery *)v9 setFirst:v8];

  [(PLQuery *)v9 setSecond:v7];
  [(PLQuery *)v9 setConjunction:v5];

  return v9;
}

+ (id)notQuery:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PLQuery);
  [(PLQuery *)v4 setConjunction:2];
  [(PLQuery *)v4 setFirst:v3];

  return v4;
}

@end