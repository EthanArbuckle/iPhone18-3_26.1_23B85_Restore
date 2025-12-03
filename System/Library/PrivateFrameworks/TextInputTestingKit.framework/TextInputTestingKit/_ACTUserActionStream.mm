@interface _ACTUserActionStream
+ (BOOL)isPathableWord:(id)word;
+ (_NSRange)segmentAnchorRangeForCursor:(id)cursor withDocumentBefore:(id)before;
+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate;
- (BOOL)advancePositionByAcceptingCandidate:(id)candidate;
- (BOOL)advanceSegmentCursor;
- (BOOL)canBeginBackspacing;
- (BOOL)canContinueBackspacing;
- (BOOL)currentAndNextKeysAreTransposable;
- (BOOL)hasDesiredAutocorrection;
- (BOOL)isFinished;
- (BOOL)isRetyping;
- (BOOL)lastAndCurrentKeysAreSame;
- (BOOL)preferBaseKeyForVariants;
- (BOOL)preferInlineSelection;
- (BOOL)preferManualCorrection;
- (BOOL)preferManualShift;
- (BOOL)preferPredictionSelection;
- (BOOL)rewindSegmentCursor;
- (BOOL)shouldBeginCorrectingAfterWord;
- (BOOL)shouldBeginCorrectingAfterWordTerminator;
- (BOOL)shouldIgnoreCurrentCharacter;
- (BOOL)shouldRejectBadAutocorrection;
- (BOOL)shouldTypeInternalString;
- (NSString)intendedText;
- (_ACTUserActionStream)initWithParameters:(id)parameters delegate:(id)delegate;
- (_NSRange)documentEditRangeWithSegmentRangePtr:(_NSRange *)ptr;
- (double)averageActionInterval;
- (double)randomActionInterval;
- (float)probabilityOfDoubledKey;
- (float)probabilityOfExtraneousKey;
- (float)probabilityOfSkippedKey;
- (float)probabilityOfSubstituteKey;
- (float)probabilityOfTransposition;
- (id)anyKeyForString:(id)string keyplane:(id)keyplane wantSecondaryString:(BOOL)secondaryString substituteUpperCaseForLowerCase:(BOOL)case;
- (id)candidateToSelectFromCandidates:(id)candidates;
- (id)externalStringToInternal:(id)internal;
- (id)findPartialCandidate;
- (id)matchTransliterationCandidateToSegment:(id)segment withCursorAt:(int)at;
- (id)nextUserAction;
- (id)transliterationCandidate:(id)candidate;
- (id)tryAcceptCandidate;
- (id)tryAcceptingCandidate:(id)candidate;
- (id)tryBackspacing;
- (id)tryChangeKeyplane;
- (id)tryContinuousPath;
- (id)tryDoubleKeyTap;
- (id)tryExtraKeyTap;
- (id)tryKeyTap;
- (id)tryPeriodShortcut;
- (id)tryRejectCandidate;
- (id)trySelectPopupVariant;
- (id)trySkipKeyTap;
- (id)trySubstituteKeyTap;
- (id)tryTransposedKeyTaps;
- (id)tryTypingWillSuppressError:(BOOL *)error;
- (void)advancePositionByString:(id)string;
- (void)configureWithParameters:(id)parameters;
- (void)resetForIntendedSegments:(id)segments expectedSegments:(id)expectedSegments;
- (void)resetForIntendedText:(id)text;
- (void)rewindPositionByString:(id)string;
- (void)setRandomNumberSeed:(unsigned int)seed;
@end

@implementation _ACTUserActionStream

- (id)trySelectPopupVariant
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentComposedCharacter = [cursor currentComposedCharacter];

  if (currentComposedCharacter || (-[_ACTUserActionStream cursor](self, "cursor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentLongCharacter], currentComposedCharacter = objc_claimAutoreleasedReturnValue(), v5, currentComposedCharacter))
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v7 = v6;
    [(_ACTUserActionStream *)self randomActionInterval];
    v9 = v7 + v8;
    [(_ACTUserActionStream *)self setLastTimestamp:v9];
    v10 = [[ACTSelectPopupVariant alloc] initWithIntendedKey:currentComposedCharacter timestamp:v9];
    if (v10)
    {
      cursor2 = [(_ACTUserActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](v10, "setInputSegment:", [cursor2 segmentCursor]);

      [(_ACTUserActionStream *)self advancePositionByString:currentComposedCharacter];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tryChangeKeyplane
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  v6 = [delegate shiftKeyToAccessKeyplaneCloserToKeyString:currentLongCharacter];

  if (v6)
  {
    [(_ACTUserActionStream *)self setLastActionUseSecondaryString:1];
  }

  else
  {
    delegate2 = [(_ACTUserActionStream *)self delegate];
    v6 = [delegate2 keyToAccessKeyplaneCloserToKeyString:currentLongCharacter];

    if (!v6)
    {
      delegate3 = [(_ACTUserActionStream *)self delegate];
      keyboardController = [delegate3 keyboardController];
      layoutUtils = [keyboardController layoutUtils];
      v31 = [layoutUtils baseKeyForString:currentLongCharacter];

      if (v31)
      {
        delegate4 = [(_ACTUserActionStream *)self delegate];
        v6 = [delegate4 keyToAccessKeyplaneCloserToKeyString:v31];

        if (v6)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v6 = 0;
      }

      v25 = 0;
      goto LABEL_10;
    }
  }

LABEL_4:
  [(_ACTUserActionStream *)self lastTimestamp];
  v9 = v8;
  [(_ACTUserActionStream *)self randomActionInterval];
  v11 = v9 + v10;
  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  representedString = [v6 representedString];
  [v6 paddedFrame];
  v14 = [errorGenerator errorForKeyString:representedString rect:?];

  delegate5 = [(_ACTUserActionStream *)self delegate];
  [delegate5 pointForAttemptedTapOnKey:v6 withError:v14];
  v17 = v16;
  v19 = v18;

  delegate6 = [(_ACTUserActionStream *)self delegate];
  delegate7 = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate7 keyplane];
  v23 = [delegate6 keyContainingPoint:keyplane inKeyplane:{v17, v19}];

  if (v23)
  {
    v24 = [[ACTKeyTap alloc] initWithIntendedKey:v6 touchedKey:v23 error:v14 location:0 timestamp:v17 secondaryString:v19, v11];
  }

  else
  {
    v24 = [[ACTSkipKeyTap alloc] initWithIntendedKey:v6 timestamp:v11];
  }

  v25 = v24;
  if (v24)
  {
    cursor2 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v25, "setInputSegment:", [cursor2 segmentCursor]);

    [(_ACTUserActionStream *)self setLastTimestamp:v11];
  }

LABEL_10:

  return v25;
}

- (id)tryContinuousPath
{
  v73 = *MEMORY[0x277D85DE8];
  cursor = [(_ACTUserActionStream *)self cursor];
  currentInternalSegment = [cursor currentInternalSegment];

  userModel = [(_ACTUserActionStream *)self userModel];
  expectsAppendedSpaceToContinuousPath = [userModel expectsAppendedSpaceToContinuousPath];

  if ((expectsAppendedSpaceToContinuousPath & 1) != 0 || ![currentInternalSegment isEqualToString:@" "] || (-[_ACTUserActionStream cursor](self, "cursor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "positionInCurrentInternalSegment"), v7, v8))
  {
    v9 = 0;
  }

  else
  {
    cursor2 = [(_ACTUserActionStream *)self cursor];
    [cursor2 advanceSegmentCursor];

    cursor3 = [(_ACTUserActionStream *)self cursor];
    currentInternalSegment2 = [cursor3 currentInternalSegment];

    v9 = 1;
    currentInternalSegment = currentInternalSegment2;
  }

  if ([objc_opt_class() isPathableWord:currentInternalSegment])
  {
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x3032000000;
    v70[3] = __Block_byref_object_copy__5458;
    v70[4] = __Block_byref_object_dispose__5459;
    v71 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    array = [MEMORY[0x277CBEB18] array];
    cursor4 = [(_ACTUserActionStream *)self cursor];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __41___ACTUserActionStream_tryContinuousPath__block_invoke;
    v55[3] = &unk_279DA0E70;
    v56 = @"'’׳״-";
    selfCopy = self;
    v12 = array;
    v58 = v12;
    v59 = v70;
    v60 = &v66;
    v61 = &v62;
    [cursor4 enumerateRemainingLongCharactersForCurrentSegment:v55];

    if ((v63[3] & 1) != 0 || (v67[3] & 1) == 0)
    {
      v28 = 0;
    }

    else
    {
      [(_ACTUserActionStream *)self lastTimestamp];
      v14 = v13;
      [(_ACTUserActionStream *)self randomActionInterval];
      v16 = v15;
      delegate = [(_ACTUserActionStream *)self delegate];
      keyboardController = [delegate keyboardController];

      layoutUtils = [keyboardController layoutUtils];
      delegate2 = [(_ACTUserActionStream *)self delegate];
      keyplane = [delegate2 keyplane];
      v21 = [layoutUtils createTTKPlane:keyplane];

      userPathManager = [(_ACTUserActionStream *)self userPathManager];
      if (userPathManager && (-[_ACTUserActionStream userPathManager](self, "userPathManager"), v23 = objc_claimAutoreleasedReturnValue(), -[_ACTUserActionStream delegate](self, "delegate"), v24 = objc_claimAutoreleasedReturnValue(), [v24 keyboardController], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "lookup:keyboardController:", currentInternalSegment, v25), v26 = objc_claimAutoreleasedReturnValue(), v25, v24, v23, userPathManager, v26))
      {
        v27 = 1;
      }

      else
      {
        string = [MEMORY[0x277CCAB68] string];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v33 = v12;
        v34 = [v33 countByEnumeratingWithState:&v51 objects:v72 count:16];
        if (v34)
        {
          v35 = *v52;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v52 != v35)
              {
                objc_enumerationMutation(v33);
              }

              representedString = [*(*(&v51 + 1) + 8 * i) representedString];
              [string appendString:representedString];
            }

            v34 = [v33 countByEnumeratingWithState:&v51 objects:v72 count:16];
          }

          while (v34);
        }

        pathGenerator = [(_ACTUserActionStream *)self pathGenerator];
        v26 = [pathGenerator generatePathFromString:string layout:v21];

        v27 = 0;
      }

      v39 = [[ACTPathWord alloc] initWithPath:v26 intendedString:currentInternalSegment keyplane:v21 fromUserData:v27];
      cursor5 = [(_ACTUserActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](v39, "setInputSegment:", [cursor5 segmentCursor]);

      [(_ACTUserActionStream *)self setLastTimestamp:v14 + v16];
      [(_ACTUserActionStream *)self setLastActionUseSecondaryString:0];
      cursor6 = [(_ACTUserActionStream *)self cursor];
      currentInternalSegment3 = [cursor6 currentInternalSegment];
      cursor7 = [(_ACTUserActionStream *)self cursor];
      v44 = [currentInternalSegment3 substringFromIndex:{objc_msgSend(cursor7, "positionInCurrentInternalSegment")}];

      [(_ACTUserActionStream *)self advancePositionByString:v44];
      userModel2 = [(_ACTUserActionStream *)self userModel];
      LODWORD(cursor6) = [userModel2 expectsAppendedSpaceToContinuousPath];

      if (cursor6)
      {
        cursor8 = [(_ACTUserActionStream *)self cursor];
        currentInternalSegment4 = [cursor8 currentInternalSegment];
        v48 = [currentInternalSegment4 isEqualToString:@" "];

        if (v48)
        {
          [(_ACTUserActionStream *)self advancePositionByString:@" "];
        }
      }

      v28 = v39;
    }

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(v70, 8);
  }

  else
  {
    if (v9)
    {
      [(_ACTUserActionStream *)self rewindSegmentCursor];
    }

    v28 = 0;
  }

  return v28;
}

- (id)tryKeyTap
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:[(_ACTUserActionStream *)self lastActionUseSecondaryString] substituteUpperCaseForLowerCase:0];

  delegate2 = [(_ACTUserActionStream *)self delegate];
  keyboardController = [delegate2 keyboardController];
  keyboard = [keyboardController keyboard];
  name = [keyboard name];
  v12 = [name containsString:@"-With-"];

  if (!v7 && v12)
  {
    delegate3 = [(_ACTUserActionStream *)self delegate];
    keyplane2 = [delegate3 keyplane];
    v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane2 wantSecondaryString:1 substituteUpperCaseForLowerCase:0];
  }

  if (!v7)
  {
    if (-[_ACTUserActionStream isRetyping](self, "isRetyping") || !_isLetterKey(currentLongCharacter) || (-[_ACTUserActionStream cursor](self, "cursor"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 atBeginningOfText], v21, (v22 & 1) != 0))
    {
      v7 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    delegate4 = [(_ACTUserActionStream *)self delegate];
    locale = [delegate4 locale];
    v39 = [currentLongCharacter lowercaseStringWithLocale:locale];

    v40 = [v39 isEqualToString:currentLongCharacter];
    delegate5 = [(_ACTUserActionStream *)self delegate];
    keyplane3 = [delegate5 keyplane];
    isShiftKeyplane = [keyplane3 isShiftKeyplane];

    v7 = 0;
    if (v40 && isShiftKeyplane)
    {
      delegate6 = [(_ACTUserActionStream *)self delegate];
      locale2 = [delegate6 locale];
      v46 = [currentLongCharacter capitalizedStringWithLocale:locale2];

      delegate7 = [(_ACTUserActionStream *)self delegate];
      keyplane4 = [delegate7 keyplane];
      v7 = [(_ACTUserActionStream *)self anyKeyForString:v46 keyplane:keyplane4 wantSecondaryString:[(_ACTUserActionStream *)self lastActionUseSecondaryString] substituteUpperCaseForLowerCase:0];
    }
  }

  v15 = 0;
  if (v7 && currentLongCharacter)
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v17 = v16;
    [(_ACTUserActionStream *)self randomActionInterval];
    v19 = v18;
    if ([(_ACTUserActionStream *)self isRetyping])
    {
      v20 = [TIPointError errorWithErrorVector:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    else
    {
      errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
      representedString = [v7 representedString];
      [v7 paddedFrame];
      v20 = [errorGenerator errorForKeyString:representedString rect:?];
    }

    v25 = v17 + v19;
    delegate8 = [(_ACTUserActionStream *)self delegate];
    [delegate8 pointForAttemptedTapOnKey:v7 withError:v20];
    v28 = v27;
    v30 = v29;

    delegate9 = [(_ACTUserActionStream *)self delegate];
    delegate10 = [(_ACTUserActionStream *)self delegate];
    keyplane5 = [delegate10 keyplane];
    v34 = [delegate9 keyContainingPoint:keyplane5 inKeyplane:{v28, v30}];

    if (v34)
    {
      v15 = [[ACTKeyTap alloc] initWithIntendedKey:v7 touchedKey:v34 error:v20 location:[(_ACTUserActionStream *)self lastActionUseSecondaryString] timestamp:v28 secondaryString:v30, v25];
      [(_ACTUserActionStream *)self isRetyping];
      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v15 = [[ACTSkipKeyTap alloc] initWithIntendedKey:v7 timestamp:v25];
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    cursor2 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v15, "setInputSegment:", [cursor2 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
    [(_ACTUserActionStream *)self setLastTimestamp:v25];
    [(_ACTUserActionStream *)self setLastActionUseSecondaryString:0];
    goto LABEL_17;
  }

LABEL_18:

  return v15;
}

- (id)tryDoubleKeyTap
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v8 = 0;
  if (v7 && currentLongCharacter)
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v10 = v9;
    [(_ACTUserActionStream *)self randomActionInterval];
    v12 = v10 + v11;
    errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v14 = [errorGenerator errorForKeyString:currentLongCharacter rect:?];

    delegate2 = [(_ACTUserActionStream *)self delegate];
    [delegate2 pointForAttemptedTapOnKey:v7 withError:v14];
    v17 = v16;
    v19 = v18;

    delegate3 = [(_ACTUserActionStream *)self delegate];
    delegate4 = [(_ACTUserActionStream *)self delegate];
    keyplane2 = [delegate4 keyplane];
    v23 = [delegate3 keyContainingPoint:keyplane2 inKeyplane:{v17, v19}];

    v43 = v14;
    if (v23)
    {
      v24 = [[ACTKeyTap alloc] initWithIntendedKey:v7 touchedKey:v23 error:v14 location:0 timestamp:v17 secondaryString:v19, v12];
    }

    else
    {
      v24 = 0;
    }

    [(_ACTUserActionStream *)self randomActionInterval];
    v26 = v25;
    errorGenerator2 = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v28 = [errorGenerator2 errorForKeyString:currentLongCharacter rect:?];

    delegate5 = [(_ACTUserActionStream *)self delegate];
    [delegate5 pointForAttemptedTapOnKey:v7 withError:v28];
    v31 = v30;
    v33 = v32;

    delegate6 = [(_ACTUserActionStream *)self delegate];
    delegate7 = [(_ACTUserActionStream *)self delegate];
    keyplane3 = [delegate7 keyplane];
    v37 = [delegate6 keyContainingPoint:keyplane3 inKeyplane:{v31, v33}];

    if (v37)
    {
      v38 = v12 + v26;
      v39 = [[ACTKeyTap alloc] initWithIntendedKey:0 touchedKey:v37 error:v28 location:0 timestamp:v31 secondaryString:v33, v38];
      v40 = v39;
      v8 = 0;
      if (v24)
      {
        if (v39)
        {
          v8 = [[ACTDoubleKeyTap alloc] initWithFirstTap:v24 secondTap:v39];
          if (v8)
          {
            cursor2 = [(_ACTUserActionStream *)self cursor];
            -[ACTUserAction setInputSegment:](v8, "setInputSegment:", [cursor2 segmentCursor]);

            [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
            [(_ACTUserActionStream *)self setLastTimestamp:v38];
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v40 = 0;
    }
  }

  return v8;
}

- (id)tryExtraKeyTap
{
  [(_ACTUserActionStream *)self lastTimestamp];
  v4 = v3;
  [(_ACTUserActionStream *)self randomActionInterval];
  v6 = v4 + v5;
  delegate = [(_ACTUserActionStream *)self delegate];
  keyboard = [delegate keyboard];
  [keyboard frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomPointInRect:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  delegate2 = [(_ACTUserActionStream *)self delegate];
  delegate3 = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate3 keyplane];
  v25 = [delegate2 keyContainingPoint:keyplane inKeyplane:{v19, v21}];

  v26 = [[ACTExtraKeyTap alloc] initWithTouchedKey:v25 location:v19 timestamp:v21, v6];
  if (v26)
  {
    cursor = [(_ACTUserActionStream *)self cursor];
    if (![cursor positionInCurrentInternalSegment])
    {
      cursor2 = [(_ACTUserActionStream *)self cursor];
      currentExternalSegment = [cursor2 currentExternalSegment];
      if (currentExternalSegment)
      {
        v33 = currentExternalSegment;
        cursor3 = [(_ACTUserActionStream *)self cursor];
        currentExternalSegment2 = [cursor3 currentExternalSegment];
        v36 = [currentExternalSegment2 isEqualToString:@" "];

        if (v36)
        {
          cursor4 = [(_ACTUserActionStream *)self cursor];
          segmentCursor = [cursor4 segmentCursor] - 1;
          goto LABEL_5;
        }

LABEL_4:
        cursor4 = [(_ACTUserActionStream *)self cursor];
        segmentCursor = [cursor4 segmentCursor];
LABEL_5:
        [(ACTUserAction *)v26 setInputSegment:segmentCursor];

        [(_ACTUserActionStream *)self setLastTimestamp:v6];
        goto LABEL_6;
      }
    }

    goto LABEL_4;
  }

LABEL_6:

  return v26;
}

- (id)trySubstituteKeyTap
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  [(_ACTUserActionStream *)self lastTimestamp];
  v9 = v8;
  [(_ACTUserActionStream *)self randomActionInterval];
  v11 = v10;
  delegate2 = [(_ACTUserActionStream *)self delegate];
  keyboard = [delegate2 keyboard];
  [keyboard frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomPointInRect:{v15, v17, v19, v21}];
  v24 = v23;
  v26 = v25;

  delegate3 = [(_ACTUserActionStream *)self delegate];
  delegate4 = [(_ACTUserActionStream *)self delegate];
  keyplane2 = [delegate4 keyplane];
  v30 = [delegate3 keyContainingPoint:keyplane2 inKeyplane:{v24, v26}];

  userModel = [(_ACTUserActionStream *)self userModel];
  if (![userModel prefersTransliteration])
  {
    goto LABEL_6;
  }

  representedString = [v30 representedString];
  if (([representedString isEqualToString:@" "] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  userModel2 = [(_ACTUserActionStream *)self userModel];
  spacesBetweenTransliterations = [userModel2 spacesBetweenTransliterations];

  if (spacesBetweenTransliterations)
  {
    tryAcceptCandidate = [(_ACTUserActionStream *)self tryAcceptCandidate];
    goto LABEL_9;
  }

LABEL_7:
  v36 = v9 + v11;
  tryAcceptCandidate = [[ACTSubstituteKeyTap alloc] initWithIntendedKey:v7 touchedKey:v30 error:0 location:v24 timestamp:v26, v36];
  if (tryAcceptCandidate)
  {
    cursor2 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](tryAcceptCandidate, "setInputSegment:", [cursor2 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
    [(_ACTUserActionStream *)self setLastTimestamp:v36];
  }

LABEL_9:

  return tryAcceptCandidate;
}

- (id)trySkipKeyTap
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  [(_ACTUserActionStream *)self lastTimestamp];
  v9 = v8;
  v10 = [[ACTSkipKeyTap alloc] initWithIntendedKey:v7 timestamp:v8];
  if (v10)
  {
    cursor2 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v10, "setInputSegment:", [cursor2 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
    [(_ACTUserActionStream *)self setLastTimestamp:v9];
  }

  return v10;
}

- (id)tryTransposedKeyTaps
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  nextLongCharacter = [cursor2 nextLongCharacter];

  delegate2 = [(_ACTUserActionStream *)self delegate];
  keyplane2 = [delegate2 keyplane];
  v12 = [(_ACTUserActionStream *)self anyKeyForString:nextLongCharacter keyplane:keyplane2 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v13 = 0;
  if (currentLongCharacter && v7 && nextLongCharacter && v12)
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v15 = v14;
    [(_ACTUserActionStream *)self randomActionInterval];
    v17 = v15 + v16;
    errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
    [v12 paddedFrame];
    v19 = [errorGenerator errorForKeyString:nextLongCharacter rect:?];

    delegate3 = [(_ACTUserActionStream *)self delegate];
    [delegate3 pointForAttemptedTapOnKey:v12 withError:v19];
    v22 = v21;
    v24 = v23;

    delegate4 = [(_ACTUserActionStream *)self delegate];
    delegate5 = [(_ACTUserActionStream *)self delegate];
    keyplane3 = [delegate5 keyplane];
    v28 = [delegate4 keyContainingPoint:keyplane3 inKeyplane:{v22, v24}];

    v48 = v28;
    v49 = v19;
    if (v28)
    {
      v50 = [[ACTKeyTap alloc] initWithIntendedKey:v12 touchedKey:v28 error:v19 location:0 timestamp:v22 secondaryString:v24, v17];
    }

    else
    {
      v50 = 0;
    }

    [(_ACTUserActionStream *)self randomActionInterval];
    v30 = v29;
    errorGenerator2 = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v32 = [errorGenerator2 errorForKeyString:currentLongCharacter rect:?];

    delegate6 = [(_ACTUserActionStream *)self delegate];
    [delegate6 pointForAttemptedTapOnKey:v7 withError:v32];
    v35 = v34;
    v37 = v36;

    delegate7 = [(_ACTUserActionStream *)self delegate];
    delegate8 = [(_ACTUserActionStream *)self delegate];
    keyplane4 = [delegate8 keyplane];
    v41 = [delegate7 keyContainingPoint:keyplane4 inKeyplane:{v35, v37}];

    if (v41)
    {
      v42 = v17 + v30 * 0.5;
      v43 = [[ACTKeyTap alloc] initWithIntendedKey:v7 touchedKey:v41 error:v32 location:0 timestamp:v35 secondaryString:v37, v42];
      v44 = v43;
      v13 = 0;
      v45 = v50;
      if (v50)
      {
        if (v43)
        {
          v13 = [[ACTTransposeKeyTaps alloc] initWithFirstTap:v50 secondTap:v43];
          if (v13)
          {
            [(_ACTUserActionStream *)self setLastTimestamp:v42];
            cursor3 = [(_ACTUserActionStream *)self cursor];
            -[ACTUserAction setInputSegment:](v13, "setInputSegment:", [cursor3 segmentCursor]);

            v45 = v50;
            [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
            [(_ACTUserActionStream *)self advancePositionByString:nextLongCharacter];
          }
        }
      }
    }

    else
    {
      v13 = 0;
      v44 = 0;
      v45 = v50;
    }
  }

  return v13;
}

- (id)tryTypingWillSuppressError:(BOOL *)error
{
  *error = 0;
  if ([(_ACTUserActionStream *)self shouldIgnoreCurrentCharacter])
  {
    do
    {
      cursor = [(_ACTUserActionStream *)self cursor];
      currentLongCharacter = [cursor currentLongCharacter];

      [(_ACTUserActionStream *)self advancePositionByString:currentLongCharacter];
    }

    while ([(_ACTUserActionStream *)self shouldIgnoreCurrentCharacter]);
  }

  cursor2 = [(_ACTUserActionStream *)self cursor];
  atEndOfText = [cursor2 atEndOfText];

  if (atEndOfText)
  {
    tryContinuousPath = 0;
    goto LABEL_55;
  }

  userModel = [(_ACTUserActionStream *)self userModel];
  if ([userModel prefersContinuousPath])
  {
    cursor3 = [(_ACTUserActionStream *)self cursor];
    positionInCurrentInternalSegment = [cursor3 positionInCurrentInternalSegment];

    if (!positionInCurrentInternalSegment)
    {
      tryContinuousPath = [(_ACTUserActionStream *)self tryContinuousPath];
      goto LABEL_10;
    }
  }

  else
  {
  }

  tryContinuousPath = 0;
LABEL_10:
  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomNumber];
  v15 = v14;

  if (tryContinuousPath)
  {
    goto LABEL_55;
  }

  v16 = v15;
  v17 = 0.0;
  if (![(_ACTUserActionStream *)self isRetyping]&& ![(_ACTUserActionStream *)self lastActionSuppressesError]&& ![(_ACTUserActionStream *)self lastActionUseSecondaryString])
  {
    userModel2 = [(_ACTUserActionStream *)self userModel];
    if ([userModel2 prefersTransliteration])
    {
      cursor4 = [(_ACTUserActionStream *)self cursor];
      nextLongCharacterEndsSegment = [cursor4 nextLongCharacterEndsSegment];

      if (nextLongCharacterEndsSegment)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    [(_ACTUserActionStream *)self probabilityOfTransposition];
    v22 = v21;
    if (v16 >= 0.0 && v21 > v16)
    {
      tryTransposedKeyTaps = [(_ACTUserActionStream *)self tryTransposedKeyTaps];
      if (tryTransposedKeyTaps)
      {
        goto LABEL_54;
      }
    }

    v17 = v22 + 0.0;
  }

LABEL_22:
  if ([(_ACTUserActionStream *)self isRetyping]|| [(_ACTUserActionStream *)self lastActionSuppressesError]|| [(_ACTUserActionStream *)self lastActionUseSecondaryString])
  {
    v24 = v17;
  }

  else
  {
    [(_ACTUserActionStream *)self probabilityOfSkippedKey];
    v24 = v17 + v28;
    if (v17 <= v16 && v24 > v16)
    {
      tryTransposedKeyTaps = [(_ACTUserActionStream *)self trySkipKeyTap];
      if (tryTransposedKeyTaps)
      {
        goto LABEL_54;
      }
    }
  }

  if ([(_ACTUserActionStream *)self isRetyping]|| [(_ACTUserActionStream *)self lastActionSuppressesError])
  {
    v25 = v24;
  }

  else
  {
    [(_ACTUserActionStream *)self probabilityOfSubstituteKey];
    v25 = v24 + v27;
    if (v24 <= v16 && v25 > v16)
    {
      tryTransposedKeyTaps = [(_ACTUserActionStream *)self trySubstituteKeyTap];
      if (tryTransposedKeyTaps)
      {
        goto LABEL_54;
      }
    }
  }

  if ([(_ACTUserActionStream *)self isRetyping]|| [(_ACTUserActionStream *)self lastActionSuppressesError]|| [(_ACTUserActionStream *)self lastActionUseSecondaryString])
  {
    v26 = v25;
  }

  else
  {
    [(_ACTUserActionStream *)self probabilityOfExtraneousKey];
    v26 = v25 + v29;
    if (v25 <= v16 && v26 > v16)
    {
      tryTransposedKeyTaps = [(_ACTUserActionStream *)self tryExtraKeyTap];
      if (tryTransposedKeyTaps)
      {
        goto LABEL_54;
      }
    }
  }

  if ([(_ACTUserActionStream *)self isRetyping]|| [(_ACTUserActionStream *)self lastActionSuppressesError]|| [(_ACTUserActionStream *)self lastActionUseSecondaryString]|| ([(_ACTUserActionStream *)self probabilityOfDoubledKey], v26 > v16) || (v26 + v30) <= v16 || ([(_ACTUserActionStream *)self tryDoubleKeyTap], (tryTransposedKeyTaps = objc_claimAutoreleasedReturnValue()) == 0))
  {
    tryContinuousPath = [(_ACTUserActionStream *)self tryKeyTap];
    if (tryContinuousPath)
    {
      goto LABEL_55;
    }

    tryTransposedKeyTaps = [(_ACTUserActionStream *)self tryChangeKeyplane];
    if (!tryTransposedKeyTaps)
    {
      tryContinuousPath = [(_ACTUserActionStream *)self trySelectPopupVariant];
      goto LABEL_55;
    }
  }

LABEL_54:
  tryContinuousPath = tryTransposedKeyTaps;
  *error = 1;
LABEL_55:

  return tryContinuousPath;
}

- (id)tryPeriodShortcut
{
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersSpaceBarDoubleTap = [userModel prefersSpaceBarDoubleTap];

  if (!prefersSpaceBarDoubleTap)
  {
    v9 = 0;
    goto LABEL_27;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  nextLongCharacter = [cursor2 nextLongCharacter];

  v9 = 0;
  if (currentLongCharacter && nextLongCharacter)
  {
    v10 = [currentLongCharacter stringByAppendingString:nextLongCharacter];
    if (![v10 isEqualToString:@". "])
    {
      v9 = 0;
LABEL_25:

      goto LABEL_26;
    }

    delegate = [(_ACTUserActionStream *)self delegate];
    keyboardController = [delegate keyboardController];
    layoutUtils = [keyboardController layoutUtils];
    delegate2 = [(_ACTUserActionStream *)self delegate];
    keyplane = [delegate2 keyplane];
    v16 = [layoutUtils exactKeyForString:@" " keyplane:keyplane];

    if (!v16)
    {
      v9 = 0;
LABEL_24:

      goto LABEL_25;
    }

    [(_ACTUserActionStream *)self lastTimestamp];
    v18 = v17;
    [(_ACTUserActionStream *)self randomActionInterval];
    v20 = v18 + v19;
    errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
    [v16 paddedFrame];
    v22 = [errorGenerator errorForKeyString:@" " rect:?];

    delegate3 = [(_ACTUserActionStream *)self delegate];
    [delegate3 pointForAttemptedTapOnKey:v16 withError:v22];
    v25 = v24;
    v27 = v26;

    delegate4 = [(_ACTUserActionStream *)self delegate];
    delegate5 = [(_ACTUserActionStream *)self delegate];
    keyplane2 = [delegate5 keyplane];
    v31 = [delegate4 keyContainingPoint:keyplane2 inKeyplane:{v25, v27}];

    v53 = v31;
    v54 = v22;
    if (v31)
    {
      v55 = [[ACTKeyTap alloc] initWithIntendedKey:v16 touchedKey:v31 error:v22 location:0 timestamp:v25 secondaryString:v27, v20];
    }

    else
    {
      v55 = 0;
    }

    [(_ACTUserActionStream *)self randomActionInterval];
    v33 = v20 + v32 * 0.5;
    errorGenerator2 = [(_ACTUserActionStream *)self errorGenerator];
    [v16 paddedFrame];
    v35 = [errorGenerator2 errorForKeyString:@" " rect:?];

    delegate6 = [(_ACTUserActionStream *)self delegate];
    [delegate6 pointForAttemptedTapOnKey:v16 withError:v35];
    v38 = v37;
    v40 = v39;

    delegate7 = [(_ACTUserActionStream *)self delegate];
    delegate8 = [(_ACTUserActionStream *)self delegate];
    keyplane3 = [delegate8 keyplane];
    v44 = [delegate7 keyContainingPoint:keyplane3 inKeyplane:{v38, v40}];

    if (v44)
    {
      v45 = [[ACTKeyTap alloc] initWithIntendedKey:0 touchedKey:v44 error:v35 location:0 timestamp:v38 secondaryString:v40, v33];
      v46 = v45;
      v47 = v55;
      v48 = v55 != 0;
      if (v55 && v45)
      {
        v49 = [[ACTDoubleKeyTap alloc] initWithFirstTap:v55 secondTap:v45];
LABEL_21:
        v9 = v49;
        if (v49)
        {
          cursor3 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v9, "setInputSegment:", [cursor3 segmentCursor]);

          v47 = v55;
          [(_ACTUserActionStream *)self advancePositionByString:v10];
          [(_ACTUserActionStream *)self setLastTimestamp:v33];
        }

        goto LABEL_24;
      }
    }

    else
    {
      v46 = 0;
      v47 = v55;
      v48 = v55 != 0;
    }

    if (v48)
    {
      v50 = v47;
    }

    else
    {
      v50 = v46;
    }

    v49 = v50;
    goto LABEL_21;
  }

LABEL_26:

LABEL_27:

  return v9;
}

- (id)tryBackspacing
{
  canBeginBackspacing = [(_ACTUserActionStream *)self canBeginBackspacing];
  canContinueBackspacing = [(_ACTUserActionStream *)self canContinueBackspacing];
  v5 = canContinueBackspacing;
  if (canBeginBackspacing || canContinueBackspacing)
  {
    if (canBeginBackspacing)
    {
      cursor = [(_ACTUserActionStream *)self cursor];
      segmentCursor = [cursor segmentCursor];
      userModel = [(_ACTUserActionStream *)self userModel];
      maxPriorSegmentsCheckedForErrors = [userModel maxPriorSegmentsCheckedForErrors];

      if (segmentCursor <= maxPriorSegmentsCheckedForErrors)
      {
        v20 = 0;
      }

      else
      {
        cursor2 = [(_ACTUserActionStream *)self cursor];
        segmentCursor2 = [cursor2 segmentCursor];
        userModel2 = [(_ACTUserActionStream *)self userModel];
        v20 = segmentCursor2 - [userModel2 maxPriorSegmentsCheckedForErrors];
      }

      segmentEditHorizon = [(_ACTUserActionStream *)self segmentEditHorizon];
      if (segmentEditHorizon <= v20)
      {
        v37 = v20;
      }

      else
      {
        v37 = segmentEditHorizon;
      }

      [(_ACTUserActionStream *)self setSegmentEditHorizon:v37];
    }

    v113 = xmmword_26D4EC000;
    v38 = [(_ACTUserActionStream *)self documentEditRangeWithSegmentRangePtr:&v113];
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    v40 = v113;
    if (v113 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    v41 = v38;
    v42 = v39;
    if (v40 < [(_ACTUserActionStream *)self segmentEditHorizon]|| [(_ACTUserActionStream *)self hasDesiredAutocorrection])
    {
      goto LABEL_27;
    }

    cursor3 = [(_ACTUserActionStream *)self cursor];
    if ([cursor3 segmentCursor])
    {
      cursor4 = [(_ACTUserActionStream *)self cursor];
      if ([cursor4 positionInCurrentInternalSegment])
      {
        v111 = 0;
      }

      else
      {
        cursor5 = [(_ACTUserActionStream *)self cursor];
        externalSegments = [cursor5 externalSegments];
        cursor6 = [(_ACTUserActionStream *)self cursor];
        v50 = [externalSegments objectAtIndex:{objc_msgSend(cursor6, "segmentCursor") - 1}];
        v111 = !_isWordEndingKey(v50);
      }
    }

    else
    {
      v111 = 0;
    }

    cursor7 = [(_ACTUserActionStream *)self cursor];
    if ([cursor7 segmentCursor])
    {
      cursor8 = [(_ACTUserActionStream *)self cursor];
      externalSegments2 = [cursor8 externalSegments];
      cursor9 = [(_ACTUserActionStream *)self cursor];
      v55 = [externalSegments2 objectAtIndex:{objc_msgSend(cursor9, "segmentCursor") - 1}];
      LODWORD(cursor5) = _isWordEndingKey(v55);
    }

    else
    {
      LODWORD(cursor5) = 0;
    }

    cursor10 = [(_ACTUserActionStream *)self cursor];
    if ([cursor10 atEndOfText])
    {
      cursor11 = [(_ACTUserActionStream *)self cursor];
      externalSegments3 = [cursor11 externalSegments];
      lastObject = [externalSegments3 lastObject];
      v60 = !_isWordEndingKey(lastObject);
    }

    else
    {
      v60 = 0;
    }

    if (!v42)
    {
      if (*(&v113 + 1))
      {
        v69 = canBeginBackspacing;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
        v70 = v113;
        cursor12 = [(_ACTUserActionStream *)self cursor];
        segmentCursor3 = [cursor12 segmentCursor];

        if (v70 < segmentCursor3 && ((v111 || v60) && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWord]|| ((cursor5 | v60) & 1) != 0 && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWordTerminator]))
        {
          v6 = objc_alloc_init(ACTBackspaceMentalCursor);
          cursor13 = [(_ACTUserActionStream *)self cursor];
          -[_ACTUserActionStream setSegmentCursorBeforeBackspacing:](self, "setSegmentCursorBeforeBackspacing:", [cursor13 segmentCursor]);

          while (1)
          {
            cursor14 = [(_ACTUserActionStream *)self cursor];
            segmentCursor4 = [cursor14 segmentCursor];
            v76 = v113;

            if (segmentCursor4 <= v76)
            {
              break;
            }

            [(_ACTUserActionStream *)self rewindSegmentCursor];
          }

          cursor15 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [cursor15 segmentCursor]);

          [(_ACTUserActionStream *)self lastTimestamp];
          v107 = v106;
          [(_ACTUserActionStream *)self randomActionInterval];
          [(_ACTUserActionStream *)self setLastTimestamp:v107 + v108];
          goto LABEL_4;
        }
      }

      goto LABEL_3;
    }

    delegate = [(_ACTUserActionStream *)self delegate];
    document = [delegate document];
    v63 = [document substringWithRange:{v41, v42}];

    cursor16 = [(_ACTUserActionStream *)self cursor];
    externalSegments4 = [cursor16 externalSegments];
    v66 = [externalSegments4 subarrayWithRange:v113];
    v67 = [v66 componentsJoinedByString:&stru_287EC4808];

    if ([v63 length] && (objc_msgSend(v67, "hasPrefix:", v63) & 1) == 0)
    {
      if (!canBeginBackspacing)
      {
        goto LABEL_61;
      }

      if ((v111 || v60) && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWord])
      {
        shouldBeginCorrectingAfterWordTerminator = 1;
LABEL_63:
        LODWORD(cursor5) = shouldBeginCorrectingAfterWordTerminator;
        delegate2 = [(_ACTUserActionStream *)self delegate];
        keyboardController = [delegate2 keyboardController];
        layoutUtils = [keyboardController layoutUtils];
        delegate3 = [(_ACTUserActionStream *)self delegate];
        keyplane = [delegate3 keyplane];
        v82 = [layoutUtils exactKeyForString:@"Delete" keyplane:keyplane includeSecondaryStrings:0];

        v83 = v82;
        [(_ACTUserActionStream *)self lastTimestamp];
        v85 = v84;
        [(_ACTUserActionStream *)self randomActionInterval];
        v87 = v85 + v86;
        errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
        [v82 paddedFrame];
        v89 = [errorGenerator errorForKeyString:@"Delete" rect:?];

        delegate4 = [(_ACTUserActionStream *)self delegate];
        [delegate4 pointForAttemptedTapOnKey:v82 withError:v89];
        v92 = v91;
        v94 = v93;

        delegate5 = [(_ACTUserActionStream *)self delegate];
        delegate6 = [(_ACTUserActionStream *)self delegate];
        keyplane2 = [delegate6 keyplane];
        v98 = [delegate5 keyContainingPoint:keyplane2 inKeyplane:{v92, v94}];

        if (v98)
        {
          v99 = [[ACTKeyTap alloc] initWithIntendedKey:v83 touchedKey:v98 error:v89 location:0 timestamp:v92 secondaryString:v94, v87];
        }

        else
        {
          v99 = [[ACTSkipKeyTap alloc] initWithIntendedKey:v83 timestamp:v87];
        }

        v6 = v99;
        v112 = v83;
        if (v110)
        {
          cursor17 = [(_ACTUserActionStream *)self cursor];
          -[_ACTUserActionStream setSegmentCursorBeforeBackspacing:](self, "setSegmentCursorBeforeBackspacing:", [cursor17 segmentCursor]);
        }

        while (1)
        {
          cursor18 = [(_ACTUserActionStream *)self cursor];
          segmentCursor5 = [cursor18 segmentCursor];
          v103 = v113;

          if (segmentCursor5 <= v103)
          {
            break;
          }

          [(_ACTUserActionStream *)self rewindSegmentCursor];
        }

        cursor19 = [(_ACTUserActionStream *)self cursor];
        -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [cursor19 segmentCursor]);

        [(_ACTUserActionStream *)self setLastTimestamp:v87];
        goto LABEL_66;
      }

      if ((cursor5 | v60))
      {
        shouldBeginCorrectingAfterWordTerminator = [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWordTerminator];
      }

      else
      {
LABEL_61:
        shouldBeginCorrectingAfterWordTerminator = 0;
      }

      if (v5 || shouldBeginCorrectingAfterWordTerminator)
      {
        goto LABEL_63;
      }
    }

    v6 = 0;
LABEL_66:

    goto LABEL_4;
  }

LABEL_3:
  v6 = 0;
LABEL_4:
  if (v6 != 0 || !v5)
  {
    goto LABEL_28;
  }

  v113 = xmmword_26D4EC000;
  v7 = [(_ACTUserActionStream *)self documentEditRangeWithSegmentRangePtr:&v113];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    cursor20 = [(_ACTUserActionStream *)self cursor];
    currentInternalSegment = [cursor20 currentInternalSegment];
    cursor21 = [(_ACTUserActionStream *)self cursor];
    v12 = [currentInternalSegment substringToIndex:{objc_msgSend(cursor21, "positionInCurrentInternalSegment")}];

    [(_ACTUserActionStream *)self rewindPositionByString:v12];
  }

  else
  {
    v21 = v7;
    v22 = v8;
    delegate7 = [(_ACTUserActionStream *)self delegate];
    document2 = [delegate7 document];
    v12 = [document2 substringWithRange:{v21, v22}];

    v25 = [(_ACTUserActionStream *)self externalStringToInternal:v12];
    v26 = [v25 length];
    cursor22 = [(_ACTUserActionStream *)self cursor];
    positionInCurrentInternalSegment = [cursor22 positionInCurrentInternalSegment];

    cursor23 = [(_ACTUserActionStream *)self cursor];
    currentInternalSegment2 = [cursor23 currentInternalSegment];
    if (v26 <= positionInCurrentInternalSegment)
    {
      v45 = [v25 length];
      cursor24 = [(_ACTUserActionStream *)self cursor];
      v35 = [currentInternalSegment2 substringWithRange:{v45, objc_msgSend(cursor24, "positionInCurrentInternalSegment") - objc_msgSend(v25, "length")}];

      [(_ACTUserActionStream *)self rewindPositionByString:v35];
    }

    else
    {
      cursor25 = [(_ACTUserActionStream *)self cursor];
      positionInCurrentInternalSegment2 = [cursor25 positionInCurrentInternalSegment];
      v33 = [v25 length];
      cursor26 = [(_ACTUserActionStream *)self cursor];
      v35 = [currentInternalSegment2 substringWithRange:{positionInCurrentInternalSegment2, v33 - objc_msgSend(cursor26, "positionInCurrentInternalSegment")}];

      [(_ACTUserActionStream *)self advancePositionByString:v35];
    }
  }

LABEL_27:
  v6 = 0;
LABEL_28:

  return v6;
}

- (BOOL)shouldRejectBadAutocorrection
{
  if ([(_ACTUserActionStream *)self preferPredictionSelection])
  {
    LOBYTE(preferManualCorrection) = 1;
  }

  else
  {
    preferManualCorrection = [(_ACTUserActionStream *)self preferManualCorrection];
    if (preferManualCorrection)
    {
      userModel = [(_ACTUserActionStream *)self userModel];
      [userModel probRejectBadAutocorrection];
      v6 = v5;

      errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
      [errorGenerator uniformRandomNumber];
      v9 = v8;

      LOBYTE(preferManualCorrection) = v6 > v9;
    }
  }

  return preferManualCorrection;
}

- (BOOL)shouldBeginCorrectingAfterWordTerminator
{
  userModel = [(_ACTUserActionStream *)self userModel];
  [userModel probBeginCorrectingAfterWordTerminator];
  v5 = v4;

  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomNumber];
  v8 = v7;

  return v5 > v8;
}

- (BOOL)shouldBeginCorrectingAfterWord
{
  userModel = [(_ACTUserActionStream *)self userModel];
  [userModel probBeginCorrectingAfterWord];
  v5 = v4;

  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomNumber];
  v8 = v7;

  return v5 > v8;
}

- (BOOL)canContinueBackspacing
{
  isBackspacing = [(_ACTUserActionStream *)self isBackspacing];
  if (isBackspacing)
  {

    LOBYTE(isBackspacing) = [(_ACTUserActionStream *)self preferManualCorrection];
  }

  return isBackspacing;
}

- (BOOL)canBeginBackspacing
{
  if ([(_ACTUserActionStream *)self isBackspacing])
  {
    return 0;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  segmentCursor = [cursor segmentCursor];

  if (!segmentCursor)
  {
    return 0;
  }

  cursor2 = [(_ACTUserActionStream *)self cursor];
  positionInCurrentInternalSegment = [cursor2 positionInCurrentInternalSegment];

  if (positionInCurrentInternalSegment)
  {
    return 0;
  }

  return [(_ACTUserActionStream *)self preferManualCorrection];
}

- (_NSRange)documentEditRangeWithSegmentRangePtr:(_NSRange *)ptr
{
  delegate = [(_ACTUserActionStream *)self delegate];
  document = [delegate document];

  v7 = objc_opt_class();
  cursor = [(_ACTUserActionStream *)self cursor];
  v9 = [v7 segmentAnchorRangeForCursor:cursor withDocumentBefore:document];
  v11 = v10;

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    *ptr = xmmword_26D4EC000;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    ptrCopy = ptr;
    cursor2 = [(_ACTUserActionStream *)self cursor];
    externalSegments = [cursor2 externalSegments];
    v16 = [externalSegments subarrayWithRange:{v9, v11}];
    v17 = [v16 componentsJoinedByString:&stru_287EC4808];

    v32 = v17;
    v18 = [document rangeOfString:v17 options:4];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 + v19;
    }

    v12 = [document length] - v13;
    v20 = v9 + v11;
    cursor3 = [(_ACTUserActionStream *)self cursor];
    segmentCursor = [cursor3 segmentCursor];
    cursor4 = [(_ACTUserActionStream *)self cursor];
    externalSegments2 = [cursor4 externalSegments];
    v25 = [externalSegments2 count];
    cursor5 = [(_ACTUserActionStream *)self cursor];
    v27 = cursor5;
    if (segmentCursor >= v25)
    {
      externalSegments3 = [cursor5 externalSegments];
      v28 = [externalSegments3 count];
    }

    else
    {
      v28 = [cursor5 segmentCursor] + 1;
    }

    ptrCopy->location = v20;
    ptrCopy->length = v28 - v20;
  }

  v30 = v13;
  v31 = v12;
  result.length = v31;
  result.location = v30;
  return result;
}

- (BOOL)isRetyping
{
  if ([(_ACTUserActionStream *)self isBackspacing]|| [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  segmentCursor = [cursor segmentCursor];
  v3 = segmentCursor < [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  return v3;
}

- (id)tryRejectCandidate
{
  delegate = [(_ACTUserActionStream *)self delegate];
  autocorrection = [delegate autocorrection];

  if (!autocorrection)
  {
    goto LABEL_14;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  if ([cursor positionInCurrentInternalSegment])
  {
    goto LABEL_3;
  }

  if ([(_ACTUserActionStream *)self preferPredictionSelection])
  {
  }

  else
  {
    preferManualCorrection = [(_ACTUserActionStream *)self preferManualCorrection];

    if (!preferManualCorrection)
    {
      goto LABEL_14;
    }
  }

  cursor2 = [(_ACTUserActionStream *)self cursor];
  v9 = [cursor2 rangeOfInputSegmentsForCandidate:autocorrection];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D6F3D8];
    input = [autocorrection input];
    cursor = [v10 candidateWithUnchangedInput:input];

    cursor3 = [(_ACTUserActionStream *)self cursor];
    v13 = [cursor3 rangeOfInputSegmentsForCandidate:cursor];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL && [(_ACTUserActionStream *)self shouldRejectBadAutocorrection])
    {
      [(_ACTUserActionStream *)self lastTimestamp];
      v15 = v14;
      [(_ACTUserActionStream *)self randomActionInterval];
      v17 = v15 + v16;
      v6 = [[ACTRejectCandidate alloc] initWithCandidate:autocorrection timestamp:v17];
      if (v6)
      {
        cursor4 = [(_ACTUserActionStream *)self cursor];
        if ([cursor4 segmentCursor])
        {
          cursor5 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [cursor5 segmentCursor] - 1);
        }

        else
        {
          [(ACTUserAction *)v6 setInputSegment:1];
        }

        [(_ACTUserActionStream *)self setLastTimestamp:v17];
      }

      goto LABEL_4;
    }

LABEL_3:
    v6 = 0;
LABEL_4:

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
LABEL_15:

  return v6;
}

- (id)tryAcceptingCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(_ACTUserActionStream *)self lastTimestamp];
  v6 = v5;
  [(_ACTUserActionStream *)self randomActionInterval];
  v8 = v6 + v7;
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersTransliteration = [userModel prefersTransliteration];

  if (!prefersTransliteration)
  {
    v18 = [[ACTAcceptCandidate alloc] initWithCandidate:candidateCopy timestamp:v8];
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  externalSegments = [cursor externalSegments];
  cursor2 = [(_ACTUserActionStream *)self cursor];
  v14 = [externalSegments objectAtIndexedSubscript:{objc_msgSend(cursor2, "segmentCursor")}];

  partialCandidateIntendedChunk = self->_partialCandidateIntendedChunk;
  if (partialCandidateIntendedChunk)
  {
    v16 = partialCandidateIntendedChunk;

    v17 = self->_partialCandidateIntendedChunk;
    self->_partialCandidateIntendedChunk = 0;

    v14 = v16;
  }

  v18 = [[ACTAcceptCandidate alloc] initWithCandidate:candidateCopy timestamp:v14 intendedCandidate:v8];

  if (v18)
  {
LABEL_7:
    cursor3 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v18, "setInputSegment:", [cursor3 segmentCursor]);

    if ([(_ACTUserActionStream *)self advancePositionByAcceptingCandidate:candidateCopy])
    {
      [(_ACTUserActionStream *)self setLastTimestamp:v8];
    }

    else
    {

      v18 = 0;
    }
  }

LABEL_10:

  return v18;
}

- (id)candidateToSelectFromCandidates:(id)candidates
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56___ACTUserActionStream_candidateToSelectFromCandidates___block_invoke;
  v9[3] = &unk_279DA0E28;
  v9[4] = self;
  candidatesCopy = candidates;
  v4 = [candidatesCopy indexesOfObjectsPassingTest:v9];
  v5 = [candidatesCopy objectsAtIndexes:v4];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_5489];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)transliterationCandidate:(id)candidate
{
  candidateCopy = candidate;
  cursor = [(_ACTUserActionStream *)self cursor];
  segmentCursor = [cursor segmentCursor];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  if ([cursor2 positionInCurrentInternalSegment])
  {
    goto LABEL_2;
  }

  cursor3 = [(_ACTUserActionStream *)self cursor];
  if (![cursor3 segmentCursor])
  {

LABEL_2:
    goto LABEL_3;
  }

  v13 = segmentCursor - 1;
  lastCursorPositionForTransliteratedCandidate = [(_ACTUserActionStream *)self lastCursorPositionForTransliteratedCandidate];

  if (lastCursorPositionForTransliteratedCandidate < v13)
  {
    v9 = [(_ACTUserActionStream *)self matchTransliterationCandidateToSegment:candidateCopy withCursorAt:v13];
    if (v9)
    {
LABEL_36:
      [(_ACTUserActionStream *)self setLastCursorPositionForTransliteratedCandidate:v13];
      [(_ACTUserActionStream *)self rewindSegmentCursor];
      goto LABEL_5;
    }

    cursor4 = [(_ACTUserActionStream *)self cursor];
    internalSegments = [cursor4 internalSegments];
    v17 = [internalSegments objectAtIndex:v13];
    cursor5 = [(_ACTUserActionStream *)self cursor];
    externalSegments = [cursor5 externalSegments];
    v20 = [externalSegments objectAtIndex:v13];
    v21 = [v17 caseInsensitiveCompare:v20];

    if ([(TIKeyboardTyperUserModel *)self->_userModel usePartialCandidates]&& v21)
    {
      cursor6 = [(_ACTUserActionStream *)self cursor];
      externalSegments2 = [cursor6 externalSegments];
      v24 = [externalSegments2 objectAtIndexedSubscript:v13];
      v25 = [v24 copy];
      partialCandidateSuffix = self->_partialCandidateSuffix;
      self->_partialCandidateSuffix = v25;

      findPartialCandidate = [(_ACTUserActionStream *)self findPartialCandidate];
LABEL_35:
      v9 = findPartialCandidate;
      goto LABEL_36;
    }

    if (v21)
    {
      delegate = [(_ACTUserActionStream *)self delegate];
      keyboardController = [delegate keyboardController];
      inputMode = [keyboardController inputMode];
      normalizedIdentifier = [inputMode normalizedIdentifier];
      if ([normalizedIdentifier hasSuffix:@"-Translit"] && objc_msgSend(candidateCopy, "count") >= 2)
      {
        v32 = [candidateCopy objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [candidateCopy objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            findPartialCandidate = [candidateCopy objectAtIndexedSubscript:1];
            goto LABEL_35;
          }

LABEL_34:
          findPartialCandidate = [candidateCopy firstObject];
          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }

    firstObject = [candidateCopy firstObject];
    cursor7 = [(_ACTUserActionStream *)self cursor];
    internalSegments2 = [cursor7 internalSegments];
    v38 = [internalSegments2 objectAtIndex:v13];

    input = [firstObject input];
    if ([input length])
    {
      v40 = [v38 length];
      input2 = [firstObject input];
      if (v40 > [input2 length])
      {
        lowercaseString = [v38 lowercaseString];
        input3 = [firstObject input];
        lowercaseString2 = [input3 lowercaseString];
        v52 = [lowercaseString hasSuffix:lowercaseString2];

        if (v52)
        {
          input4 = [firstObject input];
          v46 = 0;
LABEL_28:
          cursor8 = [(_ACTUserActionStream *)self cursor];
          externalSegments3 = [cursor8 externalSegments];
          v49 = [externalSegments3 objectAtIndex:v13];

          if (v46)
          {
            v50 = v49;
          }

          else
          {
            v50 = [v49 substringFromIndex:{objc_msgSend(v49, "length") - objc_msgSend(input4, "length")}];
          }

          v51 = v50;
          v9 = [MEMORY[0x277D6F3D8] candidateWithCandidate:v50 forInput:input4];

          goto LABEL_36;
        }

LABEL_27:
        input4 = v38;
        v46 = 1;
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

LABEL_3:
  cursor9 = [(_ACTUserActionStream *)self cursor];
  v9 = -[_ACTUserActionStream matchTransliterationCandidateToSegment:withCursorAt:](self, "matchTransliterationCandidateToSegment:withCursorAt:", candidateCopy, [cursor9 segmentCursor]);

  if (v9)
  {
    cursor10 = [(_ACTUserActionStream *)self cursor];
    -[_ACTUserActionStream setLastCursorPositionForTransliteratedCandidate:](self, "setLastCursorPositionForTransliteratedCandidate:", [cursor10 segmentCursor]);
  }

LABEL_5:

  return v9;
}

- (id)findPartialCandidate
{
  v28 = *MEMORY[0x277D85DE8];
  delegate = [(_ACTUserActionStream *)self delegate];
  predictionBarCandidates = [delegate predictionBarCandidates];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = predictionBarCandidates;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        candidate = [v12 candidate];
        if (-[NSString hasPrefix:](self->_partialCandidateSuffix, "hasPrefix:", candidate) && [candidate length] > v9)
        {
          v9 = [candidate length];
          v14 = v12;

          v8 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);

    if (v8)
    {
      v15 = [(NSString *)self->_partialCandidateSuffix length];
      partialCandidateSuffix = self->_partialCandidateSuffix;
      if (v9 == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = [(NSString *)partialCandidateSuffix substringFromIndex:v9];
        partialCandidateSuffix = self->_partialCandidateSuffix;
      }

      self->_partialCandidateSuffix = v17;

      candidate2 = [v8 candidate];
      partialCandidateIntendedChunk = self->_partialCandidateIntendedChunk;
      self->_partialCandidateIntendedChunk = candidate2;
      goto LABEL_18;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_partialCandidateIntendedChunk, self->_partialCandidateSuffix);
  v18 = self->_partialCandidateSuffix;
  self->_partialCandidateSuffix = 0;

  partialCandidateIntendedChunk = [v5 firstObject];
  input = [partialCandidateIntendedChunk input];
  v8 = [MEMORY[0x277D6F3D8] candidateWithCandidate:@"NO_PARTIAL_CANDIDATE" forInput:input];

LABEL_18:

  return v8;
}

- (id)matchTransliterationCandidateToSegment:(id)segment withCursorAt:(int)at
{
  v31 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (at < 0 || (-[_ACTUserActionStream cursor](self, "cursor"), v7 = objc_claimAutoreleasedReturnValue(), [v7 externalSegments], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9 <= at))
  {
    v16 = 0;
  }

  else
  {
    cursor = [(_ACTUserActionStream *)self cursor];
    externalSegments = [cursor externalSegments];
    v12 = [externalSegments objectAtIndexedSubscript:at];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = segmentCopy;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v24 = v12;
      v25 = segmentCopy;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          candidate = [v19 candidate];
          whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v22 = [candidate stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

          if ([v22 isEqualToString:v14])
          {
            v16 = v19;

            goto LABEL_14;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v12 = v24;
      segmentCopy = v25;
    }
  }

  return v16;
}

- (id)tryAcceptCandidate
{
  if (![(_ACTUserActionStream *)self preferPredictionSelection]&& ![(_ACTUserActionStream *)self preferInlineSelection])
  {
    v25 = 0;
    goto LABEL_29;
  }

  delegate = [(_ACTUserActionStream *)self delegate];
  predictionBarCandidates = [delegate predictionBarCandidates];

  delegate2 = [(_ACTUserActionStream *)self delegate];
  inlineCompletionCandidates = [delegate2 inlineCompletionCandidates];

  userModel = [(_ACTUserActionStream *)self userModel];
  prefersTransliteration = [userModel prefersTransliteration];

  if (prefersTransliteration)
  {
    if (self->_partialCandidateSuffix)
    {
      [(_ACTUserActionStream *)self findPartialCandidate];
    }

    else
    {
      [(_ACTUserActionStream *)self transliterationCandidate:predictionBarCandidates];
    }
    v9 = ;
    goto LABEL_21;
  }

  if (![inlineCompletionCandidates count])
  {
LABEL_17:
    if ([(_ACTUserActionStream *)self preferInlineSelection])
    {
      v26 = 0;
      goto LABEL_27;
    }

    v9 = [(_ACTUserActionStream *)self candidateToSelectFromCandidates:predictionBarCandidates];
LABEL_21:
    v26 = v9;
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v31 = predictionBarCandidates;
  firstObject = [inlineCompletionCandidates firstObject];
  delegate3 = [(_ACTUserActionStream *)self delegate];
  candidate = [firstObject candidate];
  v13 = [delegate3 inputSegmentsForString:candidate];

  v14 = [v13 count];
  if (!v14)
  {
LABEL_16:

    predictionBarCandidates = v31;
    goto LABEL_17;
  }

  for (i = v14 - 1; ; --i)
  {
    v16 = [v13 objectAtIndexedSubscript:i];
    isSpaceKey = _isSpaceKey(v16);

    if (isSpaceKey)
    {
      goto LABEL_13;
    }

    v18 = [firstObject copy];
    v19 = [v13 subarrayWithRange:{0, i + 1}];
    v20 = [v19 componentsJoinedByString:&stru_287EC4808];
    v21 = [v18 candidateByReplacingWithCandidate:v20];

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v22 addObject:v21];
    v23 = [(_ACTUserActionStream *)self candidateToSelectFromCandidates:v22];
    if (v23)
    {
      break;
    }

    preferInlineSelection = [(_ACTUserActionStream *)self preferInlineSelection];

    if (preferInlineSelection)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (!i)
    {
      goto LABEL_16;
    }
  }

  v26 = v23;

  predictionBarCandidates = v31;
LABEL_22:
  if ([v26 isAutocorrection])
  {
    goto LABEL_26;
  }

  userModel2 = [(_ACTUserActionStream *)self userModel];
  if ([userModel2 prefersTransliteration])
  {

    goto LABEL_26;
  }

  userModel3 = [(_ACTUserActionStream *)self userModel];
  prefersContinuousPath = [userModel3 prefersContinuousPath];

  if (prefersContinuousPath)
  {
LABEL_26:
    v25 = [(_ACTUserActionStream *)self tryAcceptingCandidate:v26];
    goto LABEL_28;
  }

LABEL_27:
  v25 = 0;
LABEL_28:

LABEL_29:

  return v25;
}

- (BOOL)isFinished
{
  cursor = [(_ACTUserActionStream *)self cursor];
  atEndOfText = [cursor atEndOfText];

  return atEndOfText;
}

- (id)nextUserAction
{
  [(_ACTUserActionStream *)self advancePositionForAutospace];
  v9 = 0;
  tryAcceptCandidate = [(_ACTUserActionStream *)self tryAcceptCandidate];
  if (tryAcceptCandidate || ([(_ACTUserActionStream *)self tryRejectCandidate], (tryAcceptCandidate = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = tryAcceptCandidate;
    [(_ACTUserActionStream *)self setIsBackspacing:0];
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  tryBackspacing = [(_ACTUserActionStream *)self tryBackspacing];
  if (tryBackspacing)
  {
    v4 = tryBackspacing;
    v5 = 1;
    [(_ACTUserActionStream *)self setIsBackspacing:1];
    v9 = 1;
  }

  else
  {
    [(_ACTUserActionStream *)self setIsBackspacing:0];
    tryPeriodShortcut = [(_ACTUserActionStream *)self tryPeriodShortcut];
    if (tryPeriodShortcut)
    {
      v4 = tryPeriodShortcut;
      goto LABEL_4;
    }

    v4 = [(_ACTUserActionStream *)self tryTypingWillSuppressError:&v9];
    v5 = v9;
  }

LABEL_5:
  [(_ACTUserActionStream *)self setLastActionSuppressesError:v5 & 1];

  return v4;
}

- (float)probabilityOfExtraneousKey
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  isLetterKey = _isLetterKey(currentLongCharacter);
  cursor2 = [(_ACTUserActionStream *)self cursor];
  positionInCurrentInternalSegment = [cursor2 positionInCurrentInternalSegment];

  cursor3 = [(_ACTUserActionStream *)self cursor];
  previousLongCharacter = [cursor3 previousLongCharacter];

  v10 = _isLetterKey(previousLongCharacter);
  cursor4 = [(_ACTUserActionStream *)self cursor];
  positionInCurrentInternalSegment2 = [cursor4 positionInCurrentInternalSegment];

  if (isLetterKey)
  {
    userModel = [(_ACTUserActionStream *)self userModel];
    userModel2 = userModel;
    if (positionInCurrentInternalSegment)
    {
      [userModel probExtraneousKey];
    }

    else
    {
      [userModel probExtraneousInitialKey];
    }

    goto LABEL_7;
  }

  v16 = 0.0;
  if (((positionInCurrentInternalSegment2 == 0) & v10) == 1)
  {
    userModel2 = [(_ACTUserActionStream *)self userModel];
    [userModel2 probExtraneousFinalKey];
LABEL_7:
    v16 = v15;
  }

  return v16;
}

- (float)probabilityOfSubstituteKey
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:currentLongCharacter keyplane:keyplane wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v8 = 0.0;
  if (v7)
  {
    if (_isLetterKey(currentLongCharacter))
    {
      cursor2 = [(_ACTUserActionStream *)self cursor];
      positionInCurrentInternalSegment = [cursor2 positionInCurrentInternalSegment];

      userModel = [(_ACTUserActionStream *)self userModel];
      userModel2 = userModel;
      if (positionInCurrentInternalSegment)
      {
        [userModel probSubstituteLetter];
      }

      else
      {
        [userModel probSubstituteInitialLetter];
      }

      goto LABEL_8;
    }

    if (_isSpaceKey(currentLongCharacter))
    {
      userModel2 = [(_ACTUserActionStream *)self userModel];
      [userModel2 probSubstituteSpace];
LABEL_8:
      v8 = v13;
    }
  }

  return v8;
}

- (float)probabilityOfDoubledKey
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];
  if (!_isLetterKey(currentLongCharacter))
  {

    v6 = 0.0;
LABEL_8:

    return v6;
  }

  lastAndCurrentKeysAreSame = [(_ACTUserActionStream *)self lastAndCurrentKeysAreSame];

  v6 = 0.0;
  if (!lastAndCurrentKeysAreSame)
  {
    cursor2 = [(_ACTUserActionStream *)self cursor];
    positionInCurrentInternalSegment = [cursor2 positionInCurrentInternalSegment];

    userModel = [(_ACTUserActionStream *)self userModel];
    cursor = userModel;
    if (positionInCurrentInternalSegment)
    {
      [userModel probDoubleTapLetter];
    }

    else
    {
      [userModel probDoubleTapInitialLetter];
    }

    v6 = v10;
    goto LABEL_8;
  }

  return v6;
}

- (float)probabilityOfSkippedKey
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  if (_isLetterKey(currentLongCharacter))
  {
    if ([(_ACTUserActionStream *)self lastAndCurrentKeysAreSame])
    {
      userModel = [(_ACTUserActionStream *)self userModel];
      [userModel probSkipRepeatLetter];
    }

    else
    {
      cursor2 = [(_ACTUserActionStream *)self cursor];
      positionInCurrentInternalSegment = [cursor2 positionInCurrentInternalSegment];

      userModel2 = [(_ACTUserActionStream *)self userModel];
      userModel = userModel2;
      if (positionInCurrentInternalSegment)
      {
        [userModel2 probSkipLetter];
      }

      else
      {
        [userModel2 probSkipInitialLetter];
      }
    }

    goto LABEL_9;
  }

  v7 = 0.0;
  if (_isSpaceKey(currentLongCharacter))
  {
    userModel = [(_ACTUserActionStream *)self userModel];
    [userModel probSkipSpace];
LABEL_9:
    v7 = v6;
  }

  return v7;
}

- (float)probabilityOfTransposition
{
  v3 = 0.0;
  if ([(_ACTUserActionStream *)self currentAndNextKeysAreTransposable])
  {
    cursor = [(_ACTUserActionStream *)self cursor];
    currentLongCharacter = [cursor currentLongCharacter];

    cursor2 = [(_ACTUserActionStream *)self cursor];
    nextLongCharacter = [cursor2 nextLongCharacter];

    if (_isLetterKey(currentLongCharacter) && _isLetterKey(nextLongCharacter))
    {
      userModel = [(_ACTUserActionStream *)self userModel];
      [userModel probTransposeLetters];
    }

    else
    {
      if ((!_isLetterKey(currentLongCharacter) || !_isSpaceKey(nextLongCharacter)) && (!_isSpaceKey(currentLongCharacter) || !_isLetterKey(nextLongCharacter)))
      {
        goto LABEL_11;
      }

      userModel = [(_ACTUserActionStream *)self userModel];
      [userModel probTransposeLetterAndSpace];
    }

    v3 = v9;

LABEL_11:
  }

  return v3;
}

- (double)randomActionInterval
{
  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator uniformRandomNumber];
  v5 = v4;

  [(_ACTUserActionStream *)self averageActionInterval];
  *&v6 = v6;
  *&v6 = (v5 + 0.5) * *&v6;
  return *&v6;
}

- (id)anyKeyForString:(id)string keyplane:(id)keyplane wantSecondaryString:(BOOL)secondaryString substituteUpperCaseForLowerCase:(BOOL)case
{
  secondaryStringCopy = secondaryString;
  keyplaneCopy = keyplane;
  stringCopy = string;
  delegate = [(_ACTUserActionStream *)self delegate];
  keyboardController = [delegate keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  LOBYTE(v17) = case;
  v15 = [layoutUtils anyKeyForString:stringCopy keyplane:keyplaneCopy wantSecondaryString:secondaryStringCopy isRetyping:-[_ACTUserActionStream isRetyping](self preferBaseKeyVariants:"isRetyping") preferManualShift:-[_ACTUserActionStream preferBaseKeyForVariants](self substituteUpperCaseForLowerCase:{"preferBaseKeyForVariants"), -[_ACTUserActionStream preferManualShift](self, "preferManualShift"), v17}];

  return v15;
}

- (BOOL)shouldIgnoreCurrentCharacter
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  if ([cursor2 positionInCurrentInternalSegment])
  {
    cursor3 = [(_ACTUserActionStream *)self cursor];
    positionInCurrentInternalSegment = [cursor3 positionInCurrentInternalSegment];
    v8 = [currentLongCharacter length] + positionInCurrentInternalSegment;
    cursor4 = [(_ACTUserActionStream *)self cursor];
    currentInternalSegment = [cursor4 currentInternalSegment];
    v11 = v8 >= [currentInternalSegment length];
  }

  else
  {
    v11 = 1;
  }

  if ([currentLongCharacter isEqualToString:@"'"])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [currentLongCharacter isEqualToString:@"’"] ^ 1;
  }

  userModel = [(_ACTUserActionStream *)self userModel];
  prefersAutocorrectForApostrophes = [userModel prefersAutocorrectForApostrophes];

  v15 = prefersAutocorrectForApostrophes & ![(_ACTUserActionStream *)self isRetyping];
  if ((v11 | v12))
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (BOOL)preferManualCorrection
{
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersToCorrectErrors = [userModel prefersToCorrectErrors];

  return prefersToCorrectErrors;
}

- (BOOL)preferInlineSelection
{
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersInlineSelection = [userModel prefersInlineSelection];

  return prefersInlineSelection;
}

- (BOOL)preferPredictionSelection
{
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersPredictionSelection = [userModel prefersPredictionSelection];

  return prefersPredictionSelection;
}

- (BOOL)preferBaseKeyForVariants
{
  userModel = [(_ACTUserActionStream *)self userModel];
  baseKeyForVariants = [userModel baseKeyForVariants];

  return baseKeyForVariants;
}

- (BOOL)preferManualShift
{
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersAutocorrectForCaps = [userModel prefersAutocorrectForCaps];

  return prefersAutocorrectForCaps ^ 1;
}

- (double)averageActionInterval
{
  userModel = [(_ACTUserActionStream *)self userModel];
  [userModel averageKeyTapsPerSecond];
  v4 = v3;

  return (1.0 / v4);
}

- (BOOL)shouldTypeInternalString
{
  userModel = [(_ACTUserActionStream *)self userModel];
  decomposeInputString = [userModel decomposeInputString];

  return decomposeInputString;
}

- (BOOL)lastAndCurrentKeysAreSame
{
  cursor = [(_ACTUserActionStream *)self cursor];
  previousLongCharacter = [cursor previousLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyboardController = [delegate keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  delegate2 = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate2 keyplane];
  v10 = [layoutUtils exactKeyForString:previousLongCharacter keyplane:keyplane includeSecondaryStrings:0];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor2 currentLongCharacter];

  delegate3 = [(_ACTUserActionStream *)self delegate];
  keyboardController2 = [delegate3 keyboardController];
  layoutUtils2 = [keyboardController2 layoutUtils];
  delegate4 = [(_ACTUserActionStream *)self delegate];
  keyplane2 = [delegate4 keyplane];
  v18 = [layoutUtils2 exactKeyForString:currentLongCharacter keyplane:keyplane2 includeSecondaryStrings:0];

  if (v10)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v21 = !v19 && v10 == v18;

  return v21;
}

- (BOOL)currentAndNextKeysAreTransposable
{
  cursor = [(_ACTUserActionStream *)self cursor];
  currentLongCharacter = [cursor currentLongCharacter];

  delegate = [(_ACTUserActionStream *)self delegate];
  keyboardController = [delegate keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  delegate2 = [(_ACTUserActionStream *)self delegate];
  keyplane = [delegate2 keyplane];
  v10 = [layoutUtils exactKeyForString:currentLongCharacter keyplane:keyplane includeSecondaryStrings:0];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  nextLongCharacter = [cursor2 nextLongCharacter];

  delegate3 = [(_ACTUserActionStream *)self delegate];
  keyboardController2 = [delegate3 keyboardController];
  layoutUtils2 = [keyboardController2 layoutUtils];
  delegate4 = [(_ACTUserActionStream *)self delegate];
  keyplane2 = [delegate4 keyplane];
  v18 = [layoutUtils2 exactKeyForString:nextLongCharacter keyplane:keyplane2 includeSecondaryStrings:0];

  if (v10)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v21 = !v19 && v10 != v18;

  return v21;
}

- (BOOL)hasDesiredAutocorrection
{
  delegate = [(_ACTUserActionStream *)self delegate];
  autocorrection = [delegate autocorrection];

  if ([autocorrection isAutocorrection])
  {
    cursor = [(_ACTUserActionStream *)self cursor];
    v6 = [cursor rangeOfInputSegmentsForCandidate:autocorrection];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)advancePositionByAcceptingCandidate:(id)candidate
{
  candidateCopy = candidate;
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersTransliteration = [userModel prefersTransliteration];

  if (prefersTransliteration)
  {
    if (!self->_partialCandidateSuffix)
    {
      [(_ACTUserActionStream *)self advanceSegmentCursor];
    }

    goto LABEL_13;
  }

  cursor = [(_ACTUserActionStream *)self cursor];
  v8 = [cursor rangeOfInputSegmentsForCandidate:candidateCopy];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v8 + v10;
    cursor2 = [(_ACTUserActionStream *)self cursor];
    if (v11 >= [cursor2 segmentCursor])
    {
      cursor3 = [(_ACTUserActionStream *)self cursor];
      if (v11 == [cursor3 segmentCursor])
      {
        cursor4 = [(_ACTUserActionStream *)self cursor];
        positionInCurrentInternalSegment = [cursor4 positionInCurrentInternalSegment];

        if (positionInCurrentInternalSegment)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      while (1)
      {
        cursor5 = [(_ACTUserActionStream *)self cursor];
        segmentCursor = [cursor5 segmentCursor];

        if (segmentCursor >= v11)
        {
          break;
        }

        [(_ACTUserActionStream *)self advanceSegmentCursor];
      }

LABEL_13:
      v16 = 1;
      goto LABEL_14;
    }
  }

LABEL_9:
  v16 = 0;
LABEL_14:

  return v16;
}

- (void)rewindPositionByString:(id)string
{
  stringCopy = string;
  cursor = [(_ACTUserActionStream *)self cursor];
  [cursor rewindPositionByString:stringCopy];
}

- (void)advancePositionByString:(id)string
{
  stringCopy = string;
  cursor = [(_ACTUserActionStream *)self cursor];
  [cursor advancePositionByString:stringCopy];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  segmentCursor = [cursor2 segmentCursor];
  segmentCursorBeforeBackspacing = [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  if (segmentCursor >= segmentCursorBeforeBackspacing)
  {

    [(_ACTUserActionStream *)self setSegmentCursorBeforeBackspacing:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (BOOL)rewindSegmentCursor
{
  cursor = [(_ACTUserActionStream *)self cursor];
  rewindSegmentCursor = [cursor rewindSegmentCursor];

  return rewindSegmentCursor;
}

- (BOOL)advanceSegmentCursor
{
  cursor = [(_ACTUserActionStream *)self cursor];
  advanceSegmentCursor = [cursor advanceSegmentCursor];

  cursor2 = [(_ACTUserActionStream *)self cursor];
  segmentCursor = [cursor2 segmentCursor];
  segmentCursorBeforeBackspacing = [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  if (segmentCursor >= segmentCursorBeforeBackspacing)
  {
    [(_ACTUserActionStream *)self setSegmentCursorBeforeBackspacing:0x7FFFFFFFFFFFFFFFLL];
  }

  return advanceSegmentCursor;
}

- (void)resetForIntendedSegments:(id)segments expectedSegments:(id)expectedSegments
{
  expectedSegmentsCopy = expectedSegments;
  segmentsCopy = segments;
  [(_ACTUserActionStream *)self setLastTimestamp:0.0];
  [(_ACTUserActionStream *)self setLastActionSuppressesError:0];
  [(_ACTUserActionStream *)self setSegmentEditHorizon:0];
  [(_ACTUserActionStream *)self setLastCursorPositionForTransliteratedCandidate:-1];
  v8 = [[ACTUserMentalCursor alloc] initWithInternalSegments:segmentsCopy externalSegments:expectedSegmentsCopy];

  [(_ACTUserActionStream *)self setCursor:v8];
}

- (void)resetForIntendedText:(id)text
{
  v23 = *MEMORY[0x277D85DE8];
  textCopy = text;
  userModel = [(_ACTUserActionStream *)self userModel];
  prefersContinuousPath = [userModel prefersContinuousPath];
  delegate = [(_ACTUserActionStream *)self delegate];
  v8 = delegate;
  if (prefersContinuousPath)
  {
    [delegate inputSegmentsForContinuousPathString:textCopy];
  }

  else
  {
    [delegate inputSegmentsForString:textCopy];
  }
  v9 = ;

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(_ACTUserActionStream *)self externalStringToInternal:*(*(&v18 + 1) + 8 * i), v18];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];
  [(_ACTUserActionStream *)self resetForIntendedSegments:v17 expectedSegments:v11];
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  v5 = internalCopy;
  if ([(_ACTUserActionStream *)self shouldTypeInternalString])
  {
    delegate = [(_ACTUserActionStream *)self delegate];
    v5 = [delegate externalStringToInternal:internalCopy];
  }

  if ([(_ACTUserActionStream *)self preferBaseKeyForVariants])
  {
    delegate2 = [(_ACTUserActionStream *)self delegate];
    v8 = [delegate2 splitDigraphsInString:v5];

    v5 = v8;
  }

  return v5;
}

- (void)setRandomNumberSeed:(unsigned int)seed
{
  v3 = *&seed;
  self->_randomNumberSeed = seed;
  errorGenerator = [(_ACTUserActionStream *)self errorGenerator];
  [errorGenerator setRandomNumberSeed:v3];

  pathGenerator = [(_ACTUserActionStream *)self pathGenerator];
  [pathGenerator setRandomNumberSeed:v3];

  userPathManager = [(_ACTUserActionStream *)self userPathManager];
  [userPathManager setRandomNumberSeed:v3];
}

- (NSString)intendedText
{
  cursor = [(_ACTUserActionStream *)self cursor];
  intendedText = [cursor intendedText];

  return intendedText;
}

- (void)configureWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [[TIKeyboardTyperUserModel alloc] initWithModel:parametersCopy];
  [(_ACTUserActionStream *)self setUserModel:v4];

  v5 = [TIErrorGenerator errorGeneratorWithAttributes:parametersCopy];
  [(_ACTUserActionStream *)self setErrorGenerator:v5];

  userModel = [(_ACTUserActionStream *)self userModel];
  prefersContinuousPath = [userModel prefersContinuousPath];

  if (prefersContinuousPath)
  {
    v8 = [TTKDefaultContinuousPathGenerator pathGeneratorWithAttributes:parametersCopy];
    [(_ACTUserActionStream *)self setPathGenerator:v8];
  }

  v9 = [parametersCopy objectForKey:@"USER_PATH_FILE"];
  if ([v9 length])
  {
    v10 = [[UserPathManager alloc] initWithPathFile:v9];
    [(_ACTUserActionStream *)self setUserPathManager:v10];
  }
}

- (_ACTUserActionStream)initWithParameters:(id)parameters delegate:(id)delegate
{
  parametersCopy = parameters;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = _ACTUserActionStream;
  v8 = [(_ACTUserActionStream *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(ACTUserMentalCursor);
    cursor = v8->_cursor;
    v8->_cursor = v9;

    v8->_lastCursorPositionForTransliteratedCandidate = -1;
    partialCandidateSuffix = v8->_partialCandidateSuffix;
    v8->_partialCandidateSuffix = 0;

    partialCandidateIntendedChunk = v8->_partialCandidateIntendedChunk;
    v8->_partialCandidateIntendedChunk = 0;

    v8->_delegate = delegateCopy;
  }

  [(_ACTUserActionStream *)v8 configureWithParameters:parametersCopy];

  return v8;
}

+ (BOOL)isPathableWord:(id)word
{
  v3 = MEMORY[0x277CCAB50];
  wordCopy = word;
  letterCharacterSet = [v3 letterCharacterSet];
  [letterCharacterSet addCharactersInString:@"'’׳״-"];
  [letterCharacterSet removeCharactersInString:@"œŒß"];
  v6 = [wordCopy stringByTrimmingCharactersInSet:letterCharacterSet];
  v7 = [wordCopy length];

  v8 = v7 >= 2 && [v6 length] == 0;
  return v8;
}

+ (_NSRange)segmentAnchorRangeForCursor:(id)cursor withDocumentBefore:(id)before
{
  cursorCopy = cursor;
  beforeCopy = before;
  segmentCursor = [cursorCopy segmentCursor];
  if (segmentCursor < 0)
  {
    goto LABEL_27;
  }

  v8 = segmentCursor;
  while (2)
  {
    v9 = 0;
    v26 = v8;
    while (1)
    {
      externalSegments = [cursorCopy externalSegments];
      v11 = [externalSegments subarrayWithRange:{v8, v9}];
      v12 = [v11 componentsJoinedByString:&stru_287EC4808];

      v13 = [beforeCopy rangeOfString:v12 options:4];
      v15 = v14;
      v16 = [v12 length];
      v17 = !v8 || v16 >= 6;
      v18 = !v17;
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_16;
      }

      v19 = 0;
LABEL_19:
      v17 = v8-- != 0;
      v22 = v17;
      v23 = v18 || v19;

      if (v23)
      {
        ++v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v20 = [beforeCopy length] - (v13 + v15);
    v21 = v20 >= 0x15;
    v19 = v20 < 0x15;
    if (v8 || !v21)
    {
LABEL_18:
      if (!v18 && v19)
      {

        goto LABEL_29;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (![v12 length])
    {
      v19 = [beforeCopy length] < 0x15;
      goto LABEL_18;
    }

LABEL_26:
    v8 = v26 - 1;
    if (v26 > 0)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v9 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:

  v24 = v8;
  v25 = v9;
  result.length = v25;
  result.location = v24;
  return result;
}

+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  v7 = [[_ACTUserActionStream alloc] initWithParameters:parametersCopy delegate:delegateCopy];

  return v7;
}

@end