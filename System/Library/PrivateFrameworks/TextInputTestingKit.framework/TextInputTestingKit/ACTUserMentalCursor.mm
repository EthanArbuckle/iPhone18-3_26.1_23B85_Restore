@interface ACTUserMentalCursor
- (ACTUserMentalCursor)initWithInternalSegments:(id)segments externalSegments:(id)externalSegments segmentCursor:(unint64_t)cursor position:(unint64_t)position;
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
- (_NSRange)rangeOfInputSegmentsForCandidate:(id)candidate;
- (id)longCharacterAtSegment:(unint64_t)segment position:(unint64_t)position;
- (void)advancePositionByString:(id)string;
- (void)enumerateRemainingLongCharactersForCurrentSegment:(id)segment;
- (void)rewindPositionByString:(id)string;
@end

@implementation ACTUserMentalCursor

- (NSString)currentComposedCharacter
{
  currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
  v4 = [currentInternalSegment rangeOfComposedCharacterSequenceAtIndex:{-[ACTUserMentalCursor positionInCurrentInternalSegment](self, "positionInCurrentInternalSegment")}];
  v6 = v5;

  if (v4 == [(ACTUserMentalCursor *)self positionInCurrentInternalSegment])
  {
    currentInternalSegment2 = [(ACTUserMentalCursor *)self currentInternalSegment];
    v8 = [currentInternalSegment2 substringWithRange:{v4, v6}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)longCharacterAtSegment:(unint64_t)segment position:(unint64_t)position
{
  internalSegments = [(ACTUserMentalCursor *)self internalSegments];
  v7 = [internalSegments objectAtIndex:segment];

  v8 = [v7 _rangeOfLongCharacterAtIndex:position];
  if (v8 == position)
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
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  if (positionInCurrentInternalSegment)
  {
    v5 = [(ACTUserMentalCursor *)self longCharacterAtSegment:segmentCursor position:positionInCurrentInternalSegment - 1];
  }

  else if (segmentCursor)
  {
    internalSegments = [(ACTUserMentalCursor *)self internalSegments];
    v7 = segmentCursor - 1;
    v8 = [internalSegments objectAtIndex:v7];

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
  currentLongCharacter = [(ACTUserMentalCursor *)self currentLongCharacter];
  if (!currentLongCharacter)
  {
    goto LABEL_9;
  }

  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  v6 = [currentLongCharacter length] + positionInCurrentInternalSegment;
  currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
  v8 = [currentInternalSegment length];

  if (v6 >= v8)
  {
    ++segmentCursor;
  }

  internalSegments = [(ACTUserMentalCursor *)self internalSegments];
  v10 = [internalSegments count];

  if (segmentCursor < v10)
  {
    if (v6 < v8)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(ACTUserMentalCursor *)self longCharacterAtSegment:segmentCursor position:v11];
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
  currentLongCharacter = [(ACTUserMentalCursor *)self currentLongCharacter];
  positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  v5 = [currentLongCharacter length] + positionInCurrentInternalSegment;
  currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
  LOBYTE(v5) = v5 >= [currentInternalSegment length];

  return v5;
}

- (BOOL)atEndOfText
{
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  internalSegments = [(ACTUserMentalCursor *)self internalSegments];
  if (segmentCursor >= [internalSegments count])
  {
    v9 = 1;
  }

  else
  {
    v5 = [(ACTUserMentalCursor *)self segmentCursor]+ 1;
    internalSegments2 = [(ACTUserMentalCursor *)self internalSegments];
    if (v5 == [internalSegments2 count])
    {
      positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
      v9 = positionInCurrentInternalSegment >= [currentInternalSegment length];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)enumerateRemainingLongCharactersForCurrentSegment:(id)segment
{
  segmentCopy = segment;
  v11 = 0;
  positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
  currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
  v7 = [currentInternalSegment length];

  if (positionInCurrentInternalSegment < v7)
  {
    while (1)
    {
      v8 = [(ACTUserMentalCursor *)self longCharacterAtSegment:[(ACTUserMentalCursor *)self segmentCursor] position:positionInCurrentInternalSegment];
      if (v8)
      {
        segmentCopy[2](segmentCopy, v8, &v11);
        if (v11 == 1)
        {
          break;
        }
      }

      positionInCurrentInternalSegment += [v8 length];

      currentInternalSegment2 = [(ACTUserMentalCursor *)self currentInternalSegment];
      v10 = [currentInternalSegment2 length];

      if (positionInCurrentInternalSegment >= v10)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (_NSRange)rangeOfInputSegmentsForCandidate:(id)candidate
{
  candidateCopy = candidate;
  for (i = [(ACTUserMentalCursor *)self segmentCursor]; ; ++i)
  {
    externalSegments = [(ACTUserMentalCursor *)self externalSegments];
    v7 = [externalSegments count];

    if (i > v7)
    {
      v9 = 0;
      segmentCursor = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_19;
    }

    segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
    v9 = i - [(ACTUserMentalCursor *)self segmentCursor];
    externalSegments2 = [(ACTUserMentalCursor *)self externalSegments];
    v11 = [externalSegments2 subarrayWithRange:{segmentCursor, v9}];
    v12 = [v11 componentsJoinedByString:&stru_287EC4808];

    input = [candidateCopy input];
    v14 = [input length];

    if (!v14)
    {
      candidate = [candidateCopy candidate];
      v26 = [candidate isEqualToString:v12];

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

    candidate2 = [candidateCopy candidate];
    v16 = [candidate2 hasSuffix:v12];

    if (v16)
    {
      break;
    }

    v27 = [v12 length];
    candidate3 = [candidateCopy candidate];
    v29 = [candidate3 length];

    if (v27 >= v29)
    {
      v9 = 0;
      segmentCursor = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

LABEL_15:
  }

  segmentCursor2 = [(ACTUserMentalCursor *)self segmentCursor];
  if (segmentCursor2 == -1)
  {
    goto LABEL_15;
  }

  v9 = i - segmentCursor2;
  while (1)
  {
    segmentCursor = segmentCursor2;
    externalSegments3 = [(ACTUserMentalCursor *)self externalSegments];
    v19 = [externalSegments3 subarrayWithRange:{segmentCursor, v9}];
    v20 = [v19 componentsJoinedByString:&stru_287EC4808];

    candidate4 = [candidateCopy candidate];
    LOBYTE(v19) = [candidate4 isEqualToString:v20];

    if (v19)
    {
      break;
    }

    v22 = [v20 length];
    candidate5 = [candidateCopy candidate];
    v24 = [candidate5 length];

    if (v22 < v24)
    {
      segmentCursor2 = segmentCursor - 1;
      ++v9;
      if (segmentCursor)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

LABEL_18:
LABEL_19:

  v30 = segmentCursor;
  v31 = v9;
  result.length = v31;
  result.location = v30;
  return result;
}

- (void)rewindPositionByString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if ([stringCopy length])
  {
    v5 = stringCopy;
    do
    {
      if (![(ACTUserMentalCursor *)self positionInCurrentInternalSegment])
      {
        [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]- 1];
        currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
        -[ACTUserMentalCursor setPositionInCurrentInternalSegment:](self, "setPositionInCurrentInternalSegment:", [currentInternalSegment length]);
      }

      v7 = [v5 length];
      positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      currentInternalSegment2 = [(ACTUserMentalCursor *)self currentInternalSegment];
      positionInCurrentInternalSegment2 = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      if (v7 <= positionInCurrentInternalSegment)
      {
        [currentInternalSegment2 substringWithRange:{positionInCurrentInternalSegment2 - objc_msgSend(v5, "length"), objc_msgSend(v5, "length")}];
      }

      else
      {
        [currentInternalSegment2 substringToIndex:positionInCurrentInternalSegment2];
      }
      v11 = ;

      v4 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v11, "length")}];

      -[ACTUserMentalCursor setPositionInCurrentInternalSegment:](self, "setPositionInCurrentInternalSegment:", -[ACTUserMentalCursor positionInCurrentInternalSegment](self, "positionInCurrentInternalSegment") - [v11 length]);
      v5 = v4;
    }

    while ([v4 length]);
  }
}

- (void)advancePositionByString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if ([stringCopy length])
  {
    v4 = stringCopy;
    do
    {
      v5 = [v4 length];
      currentInternalSegment = [(ACTUserMentalCursor *)self currentInternalSegment];
      v7 = [currentInternalSegment length];
      v8 = v7 - [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];

      currentInternalSegment2 = [(ACTUserMentalCursor *)self currentInternalSegment];
      positionInCurrentInternalSegment = [(ACTUserMentalCursor *)self positionInCurrentInternalSegment];
      if (v5 >= v8)
      {
        v11 = [currentInternalSegment2 substringFromIndex:positionInCurrentInternalSegment];

        v12 = [v4 substringFromIndex:{objc_msgSend(v11, "length")}];

        [(ACTUserMentalCursor *)self advanceSegmentCursor];
      }

      else
      {
        v11 = [currentInternalSegment2 substringWithRange:{positionInCurrentInternalSegment, objc_msgSend(v4, "length")}];

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
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  if (segmentCursor)
  {
    [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]- 1];
    [(ACTUserMentalCursor *)self setPositionInCurrentInternalSegment:0];
    LOBYTE(segmentCursor) = [(ACTUserMentalCursor *)self segmentCursor]!= 0;
  }

  return segmentCursor;
}

- (BOOL)advanceSegmentCursor
{
  externalSegments = [(ACTUserMentalCursor *)self externalSegments];
  v4 = [externalSegments count];
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];

  if (v4 == segmentCursor)
  {
    return 0;
  }

  [(ACTUserMentalCursor *)self setSegmentCursor:[(ACTUserMentalCursor *)self segmentCursor]+ 1];
  [(ACTUserMentalCursor *)self setPositionInCurrentInternalSegment:0];
  segmentCursor2 = [(ACTUserMentalCursor *)self segmentCursor];
  externalSegments2 = [(ACTUserMentalCursor *)self externalSegments];
  v6 = segmentCursor2 < [externalSegments2 count];

  return v6;
}

- (NSString)currentInternalSegment
{
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  internalSegments = [(ACTUserMentalCursor *)self internalSegments];
  v5 = [internalSegments count];

  if (segmentCursor >= v5)
  {
    v7 = 0;
  }

  else
  {
    internalSegments2 = [(ACTUserMentalCursor *)self internalSegments];
    v7 = [internalSegments2 objectAtIndex:{-[ACTUserMentalCursor segmentCursor](self, "segmentCursor")}];
  }

  return v7;
}

- (NSString)currentExternalSegment
{
  segmentCursor = [(ACTUserMentalCursor *)self segmentCursor];
  externalSegments = [(ACTUserMentalCursor *)self externalSegments];
  v5 = [externalSegments count];

  if (segmentCursor >= v5)
  {
    v7 = 0;
  }

  else
  {
    externalSegments2 = [(ACTUserMentalCursor *)self externalSegments];
    v7 = [externalSegments2 objectAtIndex:{-[ACTUserMentalCursor segmentCursor](self, "segmentCursor")}];
  }

  return v7;
}

- (ACTUserMentalCursor)initWithInternalSegments:(id)segments externalSegments:(id)externalSegments segmentCursor:(unint64_t)cursor position:(unint64_t)position
{
  segmentsCopy = segments;
  externalSegmentsCopy = externalSegments;
  v20.receiver = self;
  v20.super_class = ACTUserMentalCursor;
  v12 = [(ACTUserMentalCursor *)&v20 init];
  if (v12)
  {
    v13 = [externalSegmentsCopy componentsJoinedByString:&stru_287EC4808];
    intendedText = v12->_intendedText;
    v12->_intendedText = v13;

    v15 = [externalSegmentsCopy copy];
    externalSegments = v12->_externalSegments;
    v12->_externalSegments = v15;

    v17 = [segmentsCopy copy];
    internalSegments = v12->_internalSegments;
    v12->_internalSegments = v17;

    v12->_segmentCursor = cursor;
    v12->_positionInCurrentInternalSegment = position;
  }

  return v12;
}

@end