@interface ACTUserMentalCursor
- (ACTUserMentalCursor)initWithInternalSegments:(id)a3 externalSegments:(id)a4 segmentCursor:(unint64_t)a5 position:(unint64_t)a6;
- (BOOL)advanceSegmentCursor;
- (BOOL)atEndOfText;
- (BOOL)nextLongCharacterEndsSegment;
- (BOOL)rewindSegmentCursor;
- (NSString)currentComposedCharacter;
- (NSString)currentExternalSegment;
- (NSString)currentInternalSegment;
- (NSString)currentLongCharacter;
- (NSString)nextLongCharacter;
- (NSString)previousLongCharacter;
- (_NSRange)rangeOfInputSegmentsForCandidate:(id)a3;
- (id)longCharacterAtSegment:(unint64_t)a3 position:(unint64_t)a4;
- (void)advancePositionByString:(id)a3;
- (void)enumerateRemainingLongCharactersForCurrentSegment:(id)a3;
- (void)rewindPositionByString:(id)a3;
@end

@implementation ACTUserMentalCursor

- (NSString)currentComposedCharacter
{
  v3 = [(ACTUserMentalCursor *)self currentInternalSegment];
  v4 = [v3 rangeOfComposedCharacterSequenceAtIndex:{-[ACTUserMentalCursor positionInCurrentInternalSegment](self, "positionInCurrentInternalSegment")}];
  v6 = v5;

  if (v4 == [(ACTUserMentalCursor *)self positionInCurrentInternalSegment])
  {
    v7 = [(ACTUserMentalCursor *)self currentInternalSegment];
    v8 = [v7 substringWithRange:{v4, v6}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)longCharacterAtSegment:(unint64_t)a3 position:(unint64_t)a4
{
  v6 = [(ACTUserMentalCursor *)self internalSegments];
  v7 = [v6 objectAtIndex:a3];

  v8 = [v7 _rangeOfLongCharacterAtIndex:a4];
  if (v8 == a4)
  {
    v10 = [v7 substringWithRange:{v8, v9}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)previousLongCharacter
{
  v3 = [(ACTUserMentalCursor *)self segmentCursor];
  v4 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  if (v4)
  {
    v5 = [(ACTUserMentalCursor *)self longCharacterAtSegment:v3 position:v4 - 1];
  }

  else if (v3)
  {
    v6 = [(ACTUserMentalCursor *)self internalSegments];
    v7 = v3 - 1;
    v8 = [v6 objectAtIndex:v7];

    v5 = -[ACTUserMentalCursor longCharacterAtSegment:position:](self, "longCharacterAtSegment:position:", v7, [v8 length] - 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)nextLongCharacter
{
  v3 = [(ACTUserMentalCursor *)self currentLongCharacter];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [(ACTUserMentalCursor *)self segmentCursor];
  v5 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  v6 = [v3 length] + v5;
  v7 = [(ACTUserMentalCursor *)self currentInternalSegment];
  v8 = [v7 length];

  if (v6 >= v8)
  {
    ++v4;
  }

  v9 = [(ACTUserMentalCursor *)self internalSegments];
  v10 = [v9 count];

  if (v4 < v10)
  {
    if (v6 < v8)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(ACTUserMentalCursor *)self longCharacterAtSegment:v4 position:v11];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (NSString)currentLongCharacter
{
  if ([(ACTUserMentalCursor *)self atEndOfText])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ACTUserMentalCursor *)self longCharacterAtSegment:[(ACTUserMentalCursor *)self segmentCursor] position:[(ACTUserMentalCursor *)self positionInCurrentInternalSegment]];
  }

  return v3;
}

- (BOOL)nextLongCharacterEndsSegment
{
  v3 = [(ACTUserMentalCursor *)self currentLongCharacter];
  v4 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  v5 = [v3 length] + v4;
  v6 = [(ACTUserMentalCursor *)self currentInternalSegment];
  LOBYTE(v5) = v5 >= [v6 length];

  return v5;
}

- (BOOL)atEndOfText
{
  v3 = [(ACTUserMentalCursor *)self segmentCursor];
  v4 = [(ACTUserMentalCursor *)self internalSegments];
  if (v3 >= [v4 count])
  {
    v9 = 1;
  }

  else
  {
    v5 = [(ACTUserMentalCursor *)self segmentCursor]+ 1;
    v6 = [(ACTUserMentalCursor *)self internalSegments];
    if (v5 == [v6 count])
    {
      v7 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      v8 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v9 = v7 >= [v8 length];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)enumerateRemainingLongCharactersForCurrentSegment:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  v6 = [(ACTUserMentalCursor *)self currentInternalSegment];
  v7 = [v6 length];

  if (v5 < v7)
  {
    while (1)
    {
      v8 = [(ACTUserMentalCursor *)self longCharacterAtSegment:[(ACTUserMentalCursor *)self segmentCursor] position:v5];
      if (v8)
      {
        v4[2](v4, v8, &v11);
        if (v11 == 1)
        {
          break;
        }
      }

      v5 += [v8 length];

      v9 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v10 = [v9 length];

      if (v5 >= v10)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (_NSRange)rangeOfInputSegmentsForCandidate:(id)a3
{
  v4 = a3;
  for (i = [(ACTUserMentalCursor *)self segmentCursor]; ; ++i)
  {
    v6 = [(ACTUserMentalCursor *)self externalSegments];
    v7 = [v6 count];

    if (i > v7)
    {
      v9 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_19;
    }

    v8 = [(ACTUserMentalCursor *)self segmentCursor];
    v9 = i - [(ACTUserMentalCursor *)self segmentCursor];
    v10 = [(ACTUserMentalCursor *)self externalSegments];
    v11 = [v10 subarrayWithRange:{v8, v9}];
    v12 = [v11 componentsJoinedByString:&stru_287EC4808];

    v13 = [v4 input];
    v14 = [v13 length];

    if (!v14)
    {
      v25 = [v4 candidate];
      v26 = [v25 isEqualToString:v12];

      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (![v12 length])
    {
      break;
    }

    v15 = [v4 candidate];
    v16 = [v15 hasSuffix:v12];

    if (v16)
    {
      break;
    }

    v27 = [v12 length];
    v28 = [v4 candidate];
    v29 = [v28 length];

    if (v27 >= v29)
    {
      v9 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

LABEL_15:
  }

  v17 = [(ACTUserMentalCursor *)self segmentCursor];
  if (v17 == -1)
  {
    goto LABEL_15;
  }

  v9 = i - v17;
  while (1)
  {
    v8 = v17;
    v18 = [(ACTUserMentalCursor *)self externalSegments];
    v19 = [v18 subarrayWithRange:{v8, v9}];
    v20 = [v19 componentsJoinedByString:&stru_287EC4808];

    v21 = [v4 candidate];
    LOBYTE(v19) = [v21 isEqualToString:v20];

    if (v19)
    {
      break;
    }

    v22 = [v20 length];
    v23 = [v4 candidate];
    v24 = [v23 length];

    if (v22 < v24)
    {
      v17 = v8 - 1;
      ++v9;
      if (v8)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

LABEL_18:
LABEL_19:

  v30 = v8;
  v31 = v9;
  result.length = v31;
  result.location = v30;
  return result;
}

- (void)rewindPositionByString:(id)a3
{
  v12 = a3;
  v4 = v12;
  if ([v12 length])
  {
    v5 = v12;
    do
    {
      if (![(ACTUserMentalCursor *)self positionInCurrentInternalSegment])
      {
        [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]- 1];
        v6 = [(ACTUserMentalCursor *)self currentInternalSegment];
        -[ACTUserMentalCursor setPositionInCurrentInternalSegment:](self, "setPositionInCurrentInternalSegment:", [v6 length]);
      }

      v7 = [v5 length];
      v8 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      v9 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v10 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      if (v7 <= v8)
      {
        [v9 substringWithRange:{v10 - objc_msgSend(v5, "length"), objc_msgSend(v5, "length")}];
      }

      else
      {
        [v9 substringToIndex:v10];
      }
      v11 = ;

      v4 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v11, "length")}];

      -[ACTUserMentalCursor setPositionInCurrentInternalSegment:](self, "setPositionInCurrentInternalSegment:", -[ACTUserMentalCursor positionInCurrentInternalSegment](self, "positionInCurrentInternalSegment") - [v11 length]);
      v5 = v4;
    }

    while ([v4 length]);
  }
}

- (void)advancePositionByString:(id)a3
{
  v13 = a3;
  v4 = v13;
  if ([v13 length])
  {
    v4 = v13;
    do
    {
      v5 = [v4 length];
      v6 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v7 = [v6 length];
      v8 = v7 - [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];

      v9 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v10 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      if (v5 >= v8)
      {
        v11 = [v9 substringFromIndex:v10];

        v12 = [v4 substringFromIndex:{objc_msgSend(v11, "length")}];

        [(ACTUserMentalCursor *)self advanceSegmentCursor];
      }

      else
      {
        v11 = [v9 substringWithRange:{v10, objc_msgSend(v4, "length")}];

        -[ACTUserMentalCursor setPositionInCurrentInternalSegment:](self, "setPositionInCurrentInternalSegment:", -[ACTUserMentalCursor positionInCurrentInternalSegment](self, "positionInCurrentInternalSegment") + [v4 length]);
        v12 = [v4 substringFromIndex:{objc_msgSend(v11, "length")}];
      }

      v4 = v12;
    }

    while ([v12 length]);
  }
}

- (BOOL)rewindSegmentCursor
{
  v3 = [(ACTUserMentalCursor *)self segmentCursor];
  if (v3)
  {
    [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]- 1];
    [(ACTUserMentalCursor *)self setPositionInCurrentInternalSegment:0];
    LOBYTE(v3) = [(ACTUserMentalCursor *)self segmentCursor]!= 0;
  }

  return v3;
}

- (BOOL)advanceSegmentCursor
{
  v3 = [(ACTUserMentalCursor *)self externalSegments];
  v4 = [v3 count];
  v5 = [(ACTUserMentalCursor *)self segmentCursor];

  if (v4 == v5)
  {
    return 0;
  }

  [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]+ 1];
  [(ACTUserMentalCursor *)self setPositionInCurrentInternalSegment:0];
  v7 = [(ACTUserMentalCursor *)self segmentCursor];
  v8 = [(ACTUserMentalCursor *)self externalSegments];
  v6 = v7 < [v8 count];

  return v6;
}

- (NSString)currentInternalSegment
{
  v3 = [(ACTUserMentalCursor *)self segmentCursor];
  v4 = [(ACTUserMentalCursor *)self internalSegments];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(ACTUserMentalCursor *)self internalSegments];
    v7 = [v6 objectAtIndex:{-[ACTUserMentalCursor segmentCursor](self, "segmentCursor")}];
  }

  return v7;
}

- (NSString)currentExternalSegment
{
  v3 = [(ACTUserMentalCursor *)self segmentCursor];
  v4 = [(ACTUserMentalCursor *)self externalSegments];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(ACTUserMentalCursor *)self externalSegments];
    v7 = [v6 objectAtIndex:{-[ACTUserMentalCursor segmentCursor](self, "segmentCursor")}];
  }

  return v7;
}

- (ACTUserMentalCursor)initWithInternalSegments:(id)a3 externalSegments:(id)a4 segmentCursor:(unint64_t)a5 position:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = ACTUserMentalCursor;
  v12 = [(ACTUserMentalCursor *)&v20 init];
  if (v12)
  {
    v13 = [v11 componentsJoinedByString:&stru_287EC4808];
    intendedText = v12->_intendedText;
    v12->_intendedText = v13;

    v15 = [v11 copy];
    externalSegments = v12->_externalSegments;
    v12->_externalSegments = v15;

    v17 = [v10 copy];
    internalSegments = v12->_internalSegments;
    v12->_internalSegments = v17;

    v12->_segmentCursor = a5;
    v12->_positionInCurrentInternalSegment = a6;
  }

  return v12;
}

@end