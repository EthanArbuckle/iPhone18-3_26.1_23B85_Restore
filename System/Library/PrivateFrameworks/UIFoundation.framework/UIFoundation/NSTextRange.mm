@interface NSTextRange
+ (id)combineTextRanges:(id)ranges withTextRanges:(id)textRanges usingOperator:(int)operator;
- (BOOL)containsRange:(NSTextRange *)textRange;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextRange:(NSTextRange *)textRange;
- (NSTextRange)initWithLocation:(id)location endLocation:(id)endLocation;
- (NSTextRange)textRangeByFormingUnionWithTextRange:(NSTextRange *)textRange;
- (NSTextRange)textRangeByIntersectingWithTextRange:(NSTextRange *)textRange;
- (NSTextRange)textRangeWithAdjustment:(unint64_t)adjustment rangeProvider:(id)provider;
- (void)dealloc;
@end

@implementation NSTextRange

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextRange;
  [(NSTextRange *)&v3 dealloc];
}

- (NSTextRange)initWithLocation:(id)location endLocation:(id)endLocation
{
  if (initWithLocation_endLocation__onceToken == -1)
  {
    if (location)
    {
LABEL_3:
      if (endLocation && [location compare:endLocation] == 1)
      {
        goto LABEL_5;
      }

      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass())
      {
        if (!endLocation)
        {
          characterIndex = [location characterIndex];
          characterIndex2 = characterIndex;
          goto LABEL_12;
        }

        if (objc_opt_isKindOfClass())
        {
          characterIndex2 = [location characterIndex];
          characterIndex = [endLocation characterIndex];
LABEL_12:
          if (characterIndex2 != 0x7FFFFFFFFFFFFFFFLL && characterIndex != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [[NSCountableTextRange alloc] initWithRange:characterIndex2, characterIndex - characterIndex2];

            return &v12->super;
          }
        }
      }

      v15.receiver = self;
      v15.super_class = NSTextRange;
      v9 = [(NSTextRange *)&v15 init];
      if (v9)
      {
        v9->_location = location;
        if (endLocation)
        {
          v14 = endLocation;
        }

        else
        {
          v14 = location;
        }

        v9->_endLocation = v14;
      }

      return v9;
    }
  }

  else
  {
    [NSTextRange initWithLocation:endLocation:];
    if (location)
    {
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__NSTextRange_initWithLocation_endLocation___block_invoke_2;
  v16[3] = &unk_1E7267460;
  v16[4] = location;
  v16[5] = endLocation;
  _UIFoundationAssert(self, v8, 0, v16);

  return 0;
}

uint64_t __44__NSTextRange_initWithLocation_endLocation___block_invoke()
{
  initWithLocation_endLocation__countableTextLocationClass = objc_opt_class();
  result = objc_opt_class();
  initWithLocation_endLocation__countableTextRangeClass = result;
  return result;
}

- (BOOL)isEmpty
{
  location = [(NSTextRange *)self location];
  endLocation = [(NSTextRange *)self endLocation];

  return [location isEqual:endLocation];
}

- (BOOL)isEqualToTextRange:(NSTextRange *)textRange
{
  v5 = [-[NSTextRange location](self "location")];
  if (v5)
  {
    endLocation = [(NSTextRange *)self endLocation];
    endLocation2 = [(NSTextRange *)textRange endLocation];

    LOBYTE(v5) = [endLocation isEqual:endLocation2];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSTextRange *)self isEqualToTextRange:equal];
}

- (BOOL)containsRange:(NSTextRange *)textRange
{
  v5 = [(NSTextRange *)self containsLocation:[(NSTextRange *)textRange location]];
  if (v5)
  {
    LOBYTE(v5) = [-[NSTextRange endLocation](textRange "endLocation")] != 1;
  }

  return v5;
}

- (NSTextRange)textRangeByIntersectingWithTextRange:(NSTextRange *)textRange
{
  if (!textRange)
  {
    [(NSTextRange *)a2 textRangeByIntersectingWithTextRange:?];
  }

  if ([(NSTextRange *)self isEmpty]&& [(NSTextRange *)textRange containsLocation:[(NSTextRange *)self location]])
  {
    goto LABEL_19;
  }

  if ([(NSTextRange *)textRange isEmpty]&& [(NSTextRange *)self containsLocation:[(NSTextRange *)textRange location]])
  {
    goto LABEL_7;
  }

  if ([(NSTextRange *)self isEmpty]|| [(NSTextRange *)textRange isEmpty])
  {
    return 0;
  }

  location = [(NSTextRange *)self location];
  endLocation = [(NSTextRange *)self endLocation];
  location2 = [(NSTextRange *)textRange location];
  endLocation2 = [(NSTextRange *)textRange endLocation];
  v11 = [location compare:location2] == -1 ? location2 : location;
  v12 = [endLocation2 compare:endLocation] == -1 ? endLocation2 : endLocation;
  if (location == v11 && endLocation == v12)
  {
LABEL_19:
    selfCopy = self;
    goto LABEL_20;
  }

  if (location2 != v11 || endLocation2 != v12)
  {
    if ([v11 compare:v12] == -1)
    {
      selfCopy = [objc_alloc(objc_opt_class()) initWithLocation:v11 endLocation:v12];
      goto LABEL_20;
    }

    return 0;
  }

LABEL_7:
  selfCopy = textRange;
LABEL_20:

  return selfCopy;
}

- (NSTextRange)textRangeByFormingUnionWithTextRange:(NSTextRange *)textRange
{
  if ([(NSTextRange *)self isEmpty])
  {
    goto LABEL_2;
  }

  if ([(NSTextRange *)textRange isEmpty])
  {
    goto LABEL_13;
  }

  location = [(NSTextRange *)self location];
  endLocation = [(NSTextRange *)self endLocation];
  location2 = [(NSTextRange *)textRange location];
  endLocation2 = [(NSTextRange *)textRange endLocation];
  if ([location2 compare:location] == -1)
  {
    v10 = location2;
  }

  else
  {
    v10 = location;
  }

  if ([endLocation compare:endLocation2] == -1)
  {
    v11 = endLocation2;
  }

  else
  {
    v11 = endLocation;
  }

  if ([v10 compare:v11] != -1)
  {
    [NSTextRange textRangeByFormingUnionWithTextRange:];
  }

  if (location == v10 && endLocation == v11)
  {
LABEL_13:
    selfCopy = self;
  }

  else
  {
    if (location2 == v10 && endLocation2 == v11)
    {
LABEL_2:
      selfCopy = textRange;
      goto LABEL_14;
    }

    selfCopy = [objc_alloc(objc_opt_class()) initWithLocation:v10 endLocation:v11];
  }

LABEL_14:

  return selfCopy;
}

- (NSTextRange)textRangeWithAdjustment:(unint64_t)adjustment rangeProvider:(id)provider
{
  selfCopy = self;
  if ((adjustment & 3) == 0)
  {
    goto LABEL_9;
  }

  if ((adjustment & 3) == 3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  location = [(NSTextRange *)selfCopy location];
  v9 = (*(provider + 2))(provider, location, (adjustment & 2) == 0);
  location3 = v9;
  if (v9)
  {
    location2 = [v9 location];
    endLocation = location2;
    if ((adjustment & 2) == 0)
    {
      goto LABEL_8;
    }

    if ([location2 compare:location] == -1)
    {
      endLocation = [location3 endLocation];
LABEL_8:
      if ([location compare:endLocation] == -1)
      {
        location3 = [location3 location];
        goto LABEL_10;
      }
    }

LABEL_9:
    location3 = 0;
  }

LABEL_10:
  if ((adjustment & 0xC) == 0)
  {
    goto LABEL_19;
  }

  if ((adjustment & 0xC) == 0xC)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  endLocation2 = [(NSTextRange *)selfCopy endLocation];
  v14 = (*(provider + 2))(provider, endLocation2, (adjustment >> 2) & 1);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  if ((adjustment & 4) != 0)
  {
    if ([objc_msgSend(v14 "location")] != -1)
    {
LABEL_19:
      endLocation5 = 0;
      goto LABEL_20;
    }

    endLocation3 = [v15 endLocation];
    endLocation4 = endLocation2;
  }

  else
  {
    endLocation4 = [v14 endLocation];
    endLocation3 = endLocation2;
  }

  if ([endLocation4 compare:endLocation3] != -1)
  {
    goto LABEL_19;
  }

  endLocation5 = [v15 endLocation];
LABEL_20:
  if (!(location3 | endLocation5))
  {
    return selfCopy;
  }

  if (location3)
  {
    if (endLocation5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    location3 = [(NSTextRange *)selfCopy location];
    if (endLocation5)
    {
      goto LABEL_23;
    }
  }

  endLocation5 = [(NSTextRange *)selfCopy endLocation];
LABEL_23:
  if ([endLocation5 compare:location3] == -1)
  {
    return 0;
  }

  v19 = [[NSTextRange alloc] initWithLocation:location3 endLocation:endLocation5];

  return v19;
}

+ (id)combineTextRanges:(id)ranges withTextRanges:(id)textRanges usingOperator:(int)operator
{
  v58 = *MEMORY[0x1E69E9840];
  if (![ranges count] || objc_msgSend(ranges, "count") == 1 && objc_msgSend(objc_msgSend(ranges, "firstObject"), "isEmpty"))
  {
    if ((operator & 2) != 0)
    {
      return textRanges;
    }

    else
    {
      return 0;
    }
  }

  if (![textRanges count] || objc_msgSend(textRanges, "count") == 1 && objc_msgSend(objc_msgSend(textRanges, "firstObject"), "isEmpty"))
  {
    if (operator)
    {
      return ranges;
    }

    else
    {
      return 0;
    }
  }

  v9 = [ranges count];
  v10 = [textRanges count] + v9;
  v42 = 48 * v10;
  v44 = v10;
  if ((48 * v10) < 0x181)
  {
    __base = &v57;
  }

  else
  {
    __base = malloc_type_malloc(48 * v10, 0x10800402F72B0F7uLL);
  }

  operatorCopy = operator;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = [ranges countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v52;
    do
    {
      v15 = 0;
      v16 = &__base[24 * v13];
      v13 += 2 * v12;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(ranges);
        }

        v17 = *(*(&v51 + 1) + 8 * v15);
        *v16 = [v17 location];
        *(v16 + 2) = 0;
        v16[12] = 1;
        *(v16 + 2) = 0;
        *(v16 + 3) = [v17 endLocation];
        *(v16 + 8) = 0;
        v16[36] = 0;
        *(v16 + 5) = v17;
        ++v15;
        v16 += 48;
      }

      while (v12 != v15);
      v12 = [ranges countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = 2 * v44;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = [textRanges countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v48;
    do
    {
      v22 = 0;
      v23 = &__base[24 * v13];
      v13 += 2 * v20;
      do
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(textRanges);
        }

        v24 = *(*(&v47 + 1) + 8 * v22);
        *v23 = [v24 location];
        *(v23 + 2) = 1;
        v23[12] = 1;
        *(v23 + 2) = 0;
        *(v23 + 3) = [v24 endLocation];
        *(v23 + 8) = 1;
        v23[36] = 0;
        *(v23 + 5) = v24;
        ++v22;
        v23 += 48;
      }

      while (v20 != v22);
      v20 = [textRanges countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v20);
  }

  if (v13 != v18)
  {
    +[NSTextRange combineTextRanges:withTextRanges:usingOperator:];
  }

  qsort_b(__base, v18, 0x18uLL, &__block_literal_global_36_0);
  array = [MEMORY[0x1E695DF70] array];
  v26 = array;
  if (!v18)
  {
    goto LABEL_79;
  }

  v41 = array;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v45 = 0;
  endLocation = 0;
  v31 = 0;
  v32 = 1;
  v33 = __base;
  v34 = v18;
  do
  {
    if (*(v33 + 2))
    {
      v28 = v33[12];
    }

    else
    {
      v29 = v33[12];
    }

    if (v32 < v18 && ![*v33 compare:*(v33 + 3)])
    {
      goto LABEL_71;
    }

    if (((v29 | v28) & 1) == 0)
    {
      if ((v27 & 1) == 0)
      {
        v27 = 0;
        goto LABEL_71;
      }

LABEL_53:
      if (!v31)
      {
        +[NSTextRange combineTextRanges:withTextRanges:usingOperator:];
      }

      if ([v31 compare:*v33] == -1)
      {
        v37 = *(v33 + 2);
        if (v37 && ![v31 compare:{objc_msgSend(v37, "location")}])
        {
          v45 = *(v33 + 2);
          endLocation = [v45 endLocation];
        }

        else
        {
          endLocation = *v33;
        }
      }

      v27 = 0;
      if (!endLocation)
      {
        v31 = 0;
      }

      goto LABEL_71;
    }

    if (v28)
    {
      v35 = 4;
    }

    else
    {
      v35 = 1;
    }

    if ((v29 & 1) == 0)
    {
      v35 = 2;
    }

    v36 = v35 & operatorCopy;
    if ((v27 & 1) != (v36 != 0))
    {
      if (v36)
      {
        if (endLocation && v31)
        {
          if ([endLocation compare:*v33] != -1)
          {
            endLocation = 0;
LABEL_60:
            v45 = 0;
LABEL_70:
            v27 = 1;
            goto LABEL_71;
          }

          if (v45)
          {
            [v41 addObject:?];
          }

          else
          {
            v38 = [[NSTextRange alloc] initWithLocation:v31 endLocation:endLocation];
            [v41 addObject:v38];
          }

          endLocation = 0;
        }

        else if (v31)
        {
          goto LABEL_60;
        }

        v45 = 0;
        v31 = *v33;
        goto LABEL_70;
      }

      goto LABEL_53;
    }

LABEL_71:
    v33 += 24;
    ++v32;
    --v34;
  }

  while (v34);
  if (!endLocation || !v31)
  {
    if (v31)
    {
      +[NSTextRange combineTextRanges:withTextRanges:usingOperator:];
    }

    v26 = v41;
    if ((v27 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_76:
    +[NSTextRange combineTextRanges:withTextRanges:usingOperator:];
  }

  if (!v45)
  {
    v40 = [[NSTextRange alloc] initWithLocation:v31 endLocation:endLocation];
    v26 = v41;
    [v41 addObject:v40];

    if ((v27 & 1) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_76;
  }

  v26 = v41;
  [v41 addObject:?];
  if (v27)
  {
    goto LABEL_76;
  }

LABEL_79:
  if ([v26 count])
  {
    v8 = v26;
  }

  else
  {
    v8 = 0;
  }

  if (v42 >= 0x181)
  {
    free(__base);
  }

  return v8;
}

uint64_t __62__NSTextRange_combineTextRanges_withTextRanges_usingOperator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*a2 compare:*a3];
  if (!result)
  {
    if (*(a2 + 12))
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (*(a2 + 12) == *(a3 + 12))
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

@end