@interface _ACTUserActionStream
+ (BOOL)isPathableWord:(id)a3;
+ (_NSRange)segmentAnchorRangeForCursor:(id)a3 withDocumentBefore:(id)a4;
+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4;
- (BOOL)advancePositionByAcceptingCandidate:(id)a3;
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
- (_ACTUserActionStream)initWithParameters:(id)a3 delegate:(id)a4;
- (_NSRange)documentEditRangeWithSegmentRangePtr:(_NSRange *)a3;
- (double)averageActionInterval;
- (double)randomActionInterval;
- (float)probabilityOfDoubledKey;
- (float)probabilityOfExtraneousKey;
- (float)probabilityOfSkippedKey;
- (float)probabilityOfSubstituteKey;
- (float)probabilityOfTransposition;
- (id)anyKeyForString:(id)a3 keyplane:(id)a4 wantSecondaryString:(BOOL)a5 substituteUpperCaseForLowerCase:(BOOL)a6;
- (id)candidateToSelectFromCandidates:(id)a3;
- (id)externalStringToInternal:(id)a3;
- (id)findPartialCandidate;
- (id)matchTransliterationCandidateToSegment:(id)a3 withCursorAt:(int)a4;
- (id)nextUserAction;
- (id)transliterationCandidate:(id)a3;
- (id)tryAcceptCandidate;
- (id)tryAcceptingCandidate:(id)a3;
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
- (id)tryTypingWillSuppressError:(BOOL *)a3;
- (void)advancePositionByString:(id)a3;
- (void)configureWithParameters:(id)a3;
- (void)resetForIntendedSegments:(id)a3 expectedSegments:(id)a4;
- (void)resetForIntendedText:(id)a3;
- (void)rewindPositionByString:(id)a3;
- (void)setRandomNumberSeed:(unsigned int)a3;
@end

@implementation _ACTUserActionStream

- (id)trySelectPopupVariant
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentComposedCharacter];

  if (v4 || (-[_ACTUserActionStream cursor](self, "cursor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentLongCharacter], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v7 = v6;
    [(_ACTUserActionStream *)self randomActionInterval];
    v9 = v7 + v8;
    [(_ACTUserActionStream *)self setLastTimestamp:v9];
    v10 = [[ACTSelectPopupVariant alloc] initWithIntendedKey:v4 timestamp:v9];
    if (v10)
    {
      v11 = [(_ACTUserActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](v10, "setInputSegment:", [v11 segmentCursor]);

      [(_ACTUserActionStream *)self advancePositionByString:v4];
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
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 shiftKeyToAccessKeyplaneCloserToKeyString:v4];

  if (v6)
  {
    [(_ACTUserActionStream *)self setLastActionUseSecondaryString:1];
  }

  else
  {
    v7 = [(_ACTUserActionStream *)self delegate];
    v6 = [v7 keyToAccessKeyplaneCloserToKeyString:v4];

    if (!v6)
    {
      v28 = [(_ACTUserActionStream *)self delegate];
      v29 = [v28 keyboardController];
      v30 = [v29 layoutUtils];
      v31 = [v30 baseKeyForString:v4];

      if (v31)
      {
        v32 = [(_ACTUserActionStream *)self delegate];
        v6 = [v32 keyToAccessKeyplaneCloserToKeyString:v31];

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
  v12 = [(_ACTUserActionStream *)self errorGenerator];
  v13 = [v6 representedString];
  [v6 paddedFrame];
  v14 = [v12 errorForKeyString:v13 rect:?];

  v15 = [(_ACTUserActionStream *)self delegate];
  [v15 pointForAttemptedTapOnKey:v6 withError:v14];
  v17 = v16;
  v19 = v18;

  v20 = [(_ACTUserActionStream *)self delegate];
  v21 = [(_ACTUserActionStream *)self delegate];
  v22 = [v21 keyplane];
  v23 = [v20 keyContainingPoint:v22 inKeyplane:{v17, v19}];

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
    v26 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v25, "setInputSegment:", [v26 segmentCursor]);

    [(_ACTUserActionStream *)self setLastTimestamp:v11];
  }

LABEL_10:

  return v25;
}

- (id)tryContinuousPath
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentInternalSegment];

  v5 = [(_ACTUserActionStream *)self userModel];
  v6 = [v5 expectsAppendedSpaceToContinuousPath];

  if ((v6 & 1) != 0 || ![v4 isEqualToString:@" "] || (-[_ACTUserActionStream cursor](self, "cursor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "positionInCurrentInternalSegment"), v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v29 = [(_ACTUserActionStream *)self cursor];
    [v29 advanceSegmentCursor];

    v30 = [(_ACTUserActionStream *)self cursor];
    v31 = [v30 currentInternalSegment];

    v9 = 1;
    v4 = v31;
  }

  if ([objc_opt_class() isPathableWord:v4])
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
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(_ACTUserActionStream *)self cursor];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __41___ACTUserActionStream_tryContinuousPath__block_invoke;
    v55[3] = &unk_279DA0E70;
    v56 = @"'’׳״-";
    v57 = self;
    v12 = v10;
    v58 = v12;
    v59 = v70;
    v60 = &v66;
    v61 = &v62;
    [v11 enumerateRemainingLongCharactersForCurrentSegment:v55];

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
      v17 = [(_ACTUserActionStream *)self delegate];
      v50 = [v17 keyboardController];

      v18 = [v50 layoutUtils];
      v19 = [(_ACTUserActionStream *)self delegate];
      v20 = [v19 keyplane];
      v21 = [v18 createTTKPlane:v20];

      v22 = [(_ACTUserActionStream *)self userPathManager];
      if (v22 && (-[_ACTUserActionStream userPathManager](self, "userPathManager"), v23 = objc_claimAutoreleasedReturnValue(), -[_ACTUserActionStream delegate](self, "delegate"), v24 = objc_claimAutoreleasedReturnValue(), [v24 keyboardController], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "lookup:keyboardController:", v4, v25), v26 = objc_claimAutoreleasedReturnValue(), v25, v24, v23, v22, v26))
      {
        v27 = 1;
      }

      else
      {
        v32 = [MEMORY[0x277CCAB68] string];
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

              v37 = [*(*(&v51 + 1) + 8 * i) representedString];
              [v32 appendString:v37];
            }

            v34 = [v33 countByEnumeratingWithState:&v51 objects:v72 count:16];
          }

          while (v34);
        }

        v38 = [(_ACTUserActionStream *)self pathGenerator];
        v26 = [v38 generatePathFromString:v32 layout:v21];

        v27 = 0;
      }

      v39 = [[ACTPathWord alloc] initWithPath:v26 intendedString:v4 keyplane:v21 fromUserData:v27];
      v40 = [(_ACTUserActionStream *)self cursor];
      -[ACTUserAction setInputSegment:](v39, "setInputSegment:", [v40 segmentCursor]);

      [(_ACTUserActionStream *)self setLastTimestamp:v14 + v16];
      [(_ACTUserActionStream *)self setLastActionUseSecondaryString:0];
      v41 = [(_ACTUserActionStream *)self cursor];
      v42 = [v41 currentInternalSegment];
      v43 = [(_ACTUserActionStream *)self cursor];
      v44 = [v42 substringFromIndex:{objc_msgSend(v43, "positionInCurrentInternalSegment")}];

      [(_ACTUserActionStream *)self advancePositionByString:v44];
      v45 = [(_ACTUserActionStream *)self userModel];
      LODWORD(v41) = [v45 expectsAppendedSpaceToContinuousPath];

      if (v41)
      {
        v46 = [(_ACTUserActionStream *)self cursor];
        v47 = [v46 currentInternalSegment];
        v48 = [v47 isEqualToString:@" "];

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
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:[(_ACTUserActionStream *)self lastActionUseSecondaryString] substituteUpperCaseForLowerCase:0];

  v8 = [(_ACTUserActionStream *)self delegate];
  v9 = [v8 keyboardController];
  v10 = [v9 keyboard];
  v11 = [v10 name];
  v12 = [v11 containsString:@"-With-"];

  if (!v7 && v12)
  {
    v13 = [(_ACTUserActionStream *)self delegate];
    v14 = [v13 keyplane];
    v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v14 wantSecondaryString:1 substituteUpperCaseForLowerCase:0];
  }

  if (!v7)
  {
    if (-[_ACTUserActionStream isRetyping](self, "isRetyping") || !_isLetterKey(v4) || (-[_ACTUserActionStream cursor](self, "cursor"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 atBeginningOfText], v21, (v22 & 1) != 0))
    {
      v7 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v37 = [(_ACTUserActionStream *)self delegate];
    v38 = [v37 locale];
    v39 = [v4 lowercaseStringWithLocale:v38];

    v40 = [v39 isEqualToString:v4];
    v41 = [(_ACTUserActionStream *)self delegate];
    v42 = [v41 keyplane];
    v43 = [v42 isShiftKeyplane];

    v7 = 0;
    if (v40 && v43)
    {
      v44 = [(_ACTUserActionStream *)self delegate];
      v45 = [v44 locale];
      v46 = [v4 capitalizedStringWithLocale:v45];

      v47 = [(_ACTUserActionStream *)self delegate];
      v48 = [v47 keyplane];
      v7 = [(_ACTUserActionStream *)self anyKeyForString:v46 keyplane:v48 wantSecondaryString:[(_ACTUserActionStream *)self lastActionUseSecondaryString] substituteUpperCaseForLowerCase:0];
    }
  }

  v15 = 0;
  if (v7 && v4)
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
      v23 = [(_ACTUserActionStream *)self errorGenerator];
      v24 = [v7 representedString];
      [v7 paddedFrame];
      v20 = [v23 errorForKeyString:v24 rect:?];
    }

    v25 = v17 + v19;
    v26 = [(_ACTUserActionStream *)self delegate];
    [v26 pointForAttemptedTapOnKey:v7 withError:v20];
    v28 = v27;
    v30 = v29;

    v31 = [(_ACTUserActionStream *)self delegate];
    v32 = [(_ACTUserActionStream *)self delegate];
    v33 = [v32 keyplane];
    v34 = [v31 keyContainingPoint:v33 inKeyplane:{v28, v30}];

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

    v35 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v15, "setInputSegment:", [v35 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:v4];
    [(_ACTUserActionStream *)self setLastTimestamp:v25];
    [(_ACTUserActionStream *)self setLastActionUseSecondaryString:0];
    goto LABEL_17;
  }

LABEL_18:

  return v15;
}

- (id)tryDoubleKeyTap
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v8 = 0;
  if (v7 && v4)
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v10 = v9;
    [(_ACTUserActionStream *)self randomActionInterval];
    v12 = v10 + v11;
    v13 = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v14 = [v13 errorForKeyString:v4 rect:?];

    v15 = [(_ACTUserActionStream *)self delegate];
    [v15 pointForAttemptedTapOnKey:v7 withError:v14];
    v17 = v16;
    v19 = v18;

    v20 = [(_ACTUserActionStream *)self delegate];
    v21 = [(_ACTUserActionStream *)self delegate];
    v22 = [v21 keyplane];
    v23 = [v20 keyContainingPoint:v22 inKeyplane:{v17, v19}];

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
    v27 = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v28 = [v27 errorForKeyString:v4 rect:?];

    v29 = [(_ACTUserActionStream *)self delegate];
    [v29 pointForAttemptedTapOnKey:v7 withError:v28];
    v31 = v30;
    v33 = v32;

    v34 = [(_ACTUserActionStream *)self delegate];
    v35 = [(_ACTUserActionStream *)self delegate];
    v36 = [v35 keyplane];
    v37 = [v34 keyContainingPoint:v36 inKeyplane:{v31, v33}];

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
            v41 = [(_ACTUserActionStream *)self cursor];
            -[ACTUserAction setInputSegment:](v8, "setInputSegment:", [v41 segmentCursor]);

            [(_ACTUserActionStream *)self advancePositionByString:v4];
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
  v7 = [(_ACTUserActionStream *)self delegate];
  v8 = [v7 keyboard];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(_ACTUserActionStream *)self errorGenerator];
  [v17 uniformRandomPointInRect:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  v22 = [(_ACTUserActionStream *)self delegate];
  v23 = [(_ACTUserActionStream *)self delegate];
  v24 = [v23 keyplane];
  v25 = [v22 keyContainingPoint:v24 inKeyplane:{v19, v21}];

  v26 = [[ACTExtraKeyTap alloc] initWithTouchedKey:v25 location:v19 timestamp:v21, v6];
  if (v26)
  {
    v27 = [(_ACTUserActionStream *)self cursor];
    if (![v27 positionInCurrentInternalSegment])
    {
      v31 = [(_ACTUserActionStream *)self cursor];
      v32 = [v31 currentExternalSegment];
      if (v32)
      {
        v33 = v32;
        v34 = [(_ACTUserActionStream *)self cursor];
        v35 = [v34 currentExternalSegment];
        v36 = [v35 isEqualToString:@" "];

        if (v36)
        {
          v28 = [(_ACTUserActionStream *)self cursor];
          v29 = [v28 segmentCursor] - 1;
          goto LABEL_5;
        }

LABEL_4:
        v28 = [(_ACTUserActionStream *)self cursor];
        v29 = [v28 segmentCursor];
LABEL_5:
        [(ACTUserAction *)v26 setInputSegment:v29];

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
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  [(_ACTUserActionStream *)self lastTimestamp];
  v9 = v8;
  [(_ACTUserActionStream *)self randomActionInterval];
  v11 = v10;
  v12 = [(_ACTUserActionStream *)self delegate];
  v13 = [v12 keyboard];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(_ACTUserActionStream *)self errorGenerator];
  [v22 uniformRandomPointInRect:{v15, v17, v19, v21}];
  v24 = v23;
  v26 = v25;

  v27 = [(_ACTUserActionStream *)self delegate];
  v28 = [(_ACTUserActionStream *)self delegate];
  v29 = [v28 keyplane];
  v30 = [v27 keyContainingPoint:v29 inKeyplane:{v24, v26}];

  v31 = [(_ACTUserActionStream *)self userModel];
  if (![v31 prefersTransliteration])
  {
    goto LABEL_6;
  }

  v32 = [v30 representedString];
  if (([v32 isEqualToString:@" "] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v33 = [(_ACTUserActionStream *)self userModel];
  v34 = [v33 spacesBetweenTransliterations];

  if (v34)
  {
    v35 = [(_ACTUserActionStream *)self tryAcceptCandidate];
    goto LABEL_9;
  }

LABEL_7:
  v36 = v9 + v11;
  v35 = [[ACTSubstituteKeyTap alloc] initWithIntendedKey:v7 touchedKey:v30 error:0 location:v24 timestamp:v26, v36];
  if (v35)
  {
    v37 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v35, "setInputSegment:", [v37 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:v4];
    [(_ACTUserActionStream *)self setLastTimestamp:v36];
  }

LABEL_9:

  return v35;
}

- (id)trySkipKeyTap
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  [(_ACTUserActionStream *)self lastTimestamp];
  v9 = v8;
  v10 = [[ACTSkipKeyTap alloc] initWithIntendedKey:v7 timestamp:v8];
  if (v10)
  {
    v11 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v10, "setInputSegment:", [v11 segmentCursor]);

    [(_ACTUserActionStream *)self advancePositionByString:v4];
    [(_ACTUserActionStream *)self setLastTimestamp:v9];
  }

  return v10;
}

- (id)tryTransposedKeyTaps
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v8 = [(_ACTUserActionStream *)self cursor];
  v9 = [v8 nextLongCharacter];

  v10 = [(_ACTUserActionStream *)self delegate];
  v11 = [v10 keyplane];
  v12 = [(_ACTUserActionStream *)self anyKeyForString:v9 keyplane:v11 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v13 = 0;
  if (v4 && v7 && v9 && v12)
  {
    [(_ACTUserActionStream *)self lastTimestamp];
    v15 = v14;
    [(_ACTUserActionStream *)self randomActionInterval];
    v17 = v15 + v16;
    v18 = [(_ACTUserActionStream *)self errorGenerator];
    [v12 paddedFrame];
    v19 = [v18 errorForKeyString:v9 rect:?];

    v20 = [(_ACTUserActionStream *)self delegate];
    [v20 pointForAttemptedTapOnKey:v12 withError:v19];
    v22 = v21;
    v24 = v23;

    v25 = [(_ACTUserActionStream *)self delegate];
    v26 = [(_ACTUserActionStream *)self delegate];
    v27 = [v26 keyplane];
    v28 = [v25 keyContainingPoint:v27 inKeyplane:{v22, v24}];

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
    v31 = [(_ACTUserActionStream *)self errorGenerator];
    [v7 paddedFrame];
    v32 = [v31 errorForKeyString:v4 rect:?];

    v33 = [(_ACTUserActionStream *)self delegate];
    [v33 pointForAttemptedTapOnKey:v7 withError:v32];
    v35 = v34;
    v37 = v36;

    v38 = [(_ACTUserActionStream *)self delegate];
    v39 = [(_ACTUserActionStream *)self delegate];
    v40 = [v39 keyplane];
    v41 = [v38 keyContainingPoint:v40 inKeyplane:{v35, v37}];

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
            v46 = [(_ACTUserActionStream *)self cursor];
            -[ACTUserAction setInputSegment:](v13, "setInputSegment:", [v46 segmentCursor]);

            v45 = v50;
            [(_ACTUserActionStream *)self advancePositionByString:v4];
            [(_ACTUserActionStream *)self advancePositionByString:v9];
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

- (id)tryTypingWillSuppressError:(BOOL *)a3
{
  *a3 = 0;
  if ([(_ACTUserActionStream *)self shouldIgnoreCurrentCharacter])
  {
    do
    {
      v5 = [(_ACTUserActionStream *)self cursor];
      v6 = [v5 currentLongCharacter];

      [(_ACTUserActionStream *)self advancePositionByString:v6];
    }

    while ([(_ACTUserActionStream *)self shouldIgnoreCurrentCharacter]);
  }

  v7 = [(_ACTUserActionStream *)self cursor];
  v8 = [v7 atEndOfText];

  if (v8)
  {
    v9 = 0;
    goto LABEL_55;
  }

  v10 = [(_ACTUserActionStream *)self userModel];
  if ([v10 prefersContinuousPath])
  {
    v11 = [(_ACTUserActionStream *)self cursor];
    v12 = [v11 positionInCurrentInternalSegment];

    if (!v12)
    {
      v9 = [(_ACTUserActionStream *)self tryContinuousPath];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_10:
  v13 = [(_ACTUserActionStream *)self errorGenerator];
  [v13 uniformRandomNumber];
  v15 = v14;

  if (v9)
  {
    goto LABEL_55;
  }

  v16 = v15;
  v17 = 0.0;
  if (![(_ACTUserActionStream *)self isRetyping]&& ![(_ACTUserActionStream *)self lastActionSuppressesError]&& ![(_ACTUserActionStream *)self lastActionUseSecondaryString])
  {
    v18 = [(_ACTUserActionStream *)self userModel];
    if ([v18 prefersTransliteration])
    {
      v19 = [(_ACTUserActionStream *)self cursor];
      v20 = [v19 nextLongCharacterEndsSegment];

      if (v20)
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
      v23 = [(_ACTUserActionStream *)self tryTransposedKeyTaps];
      if (v23)
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
      v23 = [(_ACTUserActionStream *)self trySkipKeyTap];
      if (v23)
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
      v23 = [(_ACTUserActionStream *)self trySubstituteKeyTap];
      if (v23)
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
      v23 = [(_ACTUserActionStream *)self tryExtraKeyTap];
      if (v23)
      {
        goto LABEL_54;
      }
    }
  }

  if ([(_ACTUserActionStream *)self isRetyping]|| [(_ACTUserActionStream *)self lastActionSuppressesError]|| [(_ACTUserActionStream *)self lastActionUseSecondaryString]|| ([(_ACTUserActionStream *)self probabilityOfDoubledKey], v26 > v16) || (v26 + v30) <= v16 || ([(_ACTUserActionStream *)self tryDoubleKeyTap], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(_ACTUserActionStream *)self tryKeyTap];
    if (v9)
    {
      goto LABEL_55;
    }

    v23 = [(_ACTUserActionStream *)self tryChangeKeyplane];
    if (!v23)
    {
      v9 = [(_ACTUserActionStream *)self trySelectPopupVariant];
      goto LABEL_55;
    }
  }

LABEL_54:
  v9 = v23;
  *a3 = 1;
LABEL_55:

  return v9;
}

- (id)tryPeriodShortcut
{
  v3 = [(_ACTUserActionStream *)self userModel];
  v4 = [v3 prefersSpaceBarDoubleTap];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v5 = [(_ACTUserActionStream *)self cursor];
  v6 = [v5 currentLongCharacter];

  v7 = [(_ACTUserActionStream *)self cursor];
  v8 = [v7 nextLongCharacter];

  v9 = 0;
  if (v6 && v8)
  {
    v10 = [v6 stringByAppendingString:v8];
    if (![v10 isEqualToString:@". "])
    {
      v9 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = [(_ACTUserActionStream *)self delegate];
    v12 = [v11 keyboardController];
    v13 = [v12 layoutUtils];
    v14 = [(_ACTUserActionStream *)self delegate];
    v15 = [v14 keyplane];
    v16 = [v13 exactKeyForString:@" " keyplane:v15];

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
    v21 = [(_ACTUserActionStream *)self errorGenerator];
    [v16 paddedFrame];
    v22 = [v21 errorForKeyString:@" " rect:?];

    v23 = [(_ACTUserActionStream *)self delegate];
    [v23 pointForAttemptedTapOnKey:v16 withError:v22];
    v25 = v24;
    v27 = v26;

    v28 = [(_ACTUserActionStream *)self delegate];
    v29 = [(_ACTUserActionStream *)self delegate];
    v30 = [v29 keyplane];
    v31 = [v28 keyContainingPoint:v30 inKeyplane:{v25, v27}];

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
    v34 = [(_ACTUserActionStream *)self errorGenerator];
    [v16 paddedFrame];
    v35 = [v34 errorForKeyString:@" " rect:?];

    v36 = [(_ACTUserActionStream *)self delegate];
    [v36 pointForAttemptedTapOnKey:v16 withError:v35];
    v38 = v37;
    v40 = v39;

    v41 = [(_ACTUserActionStream *)self delegate];
    v42 = [(_ACTUserActionStream *)self delegate];
    v43 = [v42 keyplane];
    v44 = [v41 keyContainingPoint:v43 inKeyplane:{v38, v40}];

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
          v51 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v9, "setInputSegment:", [v51 segmentCursor]);

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
  v3 = [(_ACTUserActionStream *)self canBeginBackspacing];
  v4 = [(_ACTUserActionStream *)self canContinueBackspacing];
  v5 = v4;
  if (v3 || v4)
  {
    if (v3)
    {
      v13 = [(_ACTUserActionStream *)self cursor];
      v14 = [v13 segmentCursor];
      v15 = [(_ACTUserActionStream *)self userModel];
      v16 = [v15 maxPriorSegmentsCheckedForErrors];

      if (v14 <= v16)
      {
        v20 = 0;
      }

      else
      {
        v17 = [(_ACTUserActionStream *)self cursor];
        v18 = [v17 segmentCursor];
        v19 = [(_ACTUserActionStream *)self userModel];
        v20 = v18 - [v19 maxPriorSegmentsCheckedForErrors];
      }

      v36 = [(_ACTUserActionStream *)self segmentEditHorizon];
      if (v36 <= v20)
      {
        v37 = v20;
      }

      else
      {
        v37 = v36;
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

    v43 = [(_ACTUserActionStream *)self cursor];
    if ([v43 segmentCursor])
    {
      v44 = [(_ACTUserActionStream *)self cursor];
      if ([v44 positionInCurrentInternalSegment])
      {
        v111 = 0;
      }

      else
      {
        v109 = [(_ACTUserActionStream *)self cursor];
        v48 = [v109 externalSegments];
        v49 = [(_ACTUserActionStream *)self cursor];
        v50 = [v48 objectAtIndex:{objc_msgSend(v49, "segmentCursor") - 1}];
        v111 = !_isWordEndingKey(v50);
      }
    }

    else
    {
      v111 = 0;
    }

    v51 = [(_ACTUserActionStream *)self cursor];
    if ([v51 segmentCursor])
    {
      v52 = [(_ACTUserActionStream *)self cursor];
      v53 = [v52 externalSegments];
      v54 = [(_ACTUserActionStream *)self cursor];
      v55 = [v53 objectAtIndex:{objc_msgSend(v54, "segmentCursor") - 1}];
      LODWORD(v109) = _isWordEndingKey(v55);
    }

    else
    {
      LODWORD(v109) = 0;
    }

    v56 = [(_ACTUserActionStream *)self cursor];
    if ([v56 atEndOfText])
    {
      v57 = [(_ACTUserActionStream *)self cursor];
      v58 = [v57 externalSegments];
      v59 = [v58 lastObject];
      v60 = !_isWordEndingKey(v59);
    }

    else
    {
      v60 = 0;
    }

    if (!v42)
    {
      if (*(&v113 + 1))
      {
        v69 = v3;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
        v70 = v113;
        v71 = [(_ACTUserActionStream *)self cursor];
        v72 = [v71 segmentCursor];

        if (v70 < v72 && ((v111 || v60) && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWord]|| ((v109 | v60) & 1) != 0 && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWordTerminator]))
        {
          v6 = objc_alloc_init(ACTBackspaceMentalCursor);
          v73 = [(_ACTUserActionStream *)self cursor];
          -[_ACTUserActionStream setSegmentCursorBeforeBackspacing:](self, "setSegmentCursorBeforeBackspacing:", [v73 segmentCursor]);

          while (1)
          {
            v74 = [(_ACTUserActionStream *)self cursor];
            v75 = [v74 segmentCursor];
            v76 = v113;

            if (v75 <= v76)
            {
              break;
            }

            [(_ACTUserActionStream *)self rewindSegmentCursor];
          }

          v105 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [v105 segmentCursor]);

          [(_ACTUserActionStream *)self lastTimestamp];
          v107 = v106;
          [(_ACTUserActionStream *)self randomActionInterval];
          [(_ACTUserActionStream *)self setLastTimestamp:v107 + v108];
          goto LABEL_4;
        }
      }

      goto LABEL_3;
    }

    v61 = [(_ACTUserActionStream *)self delegate];
    v62 = [v61 document];
    v63 = [v62 substringWithRange:{v41, v42}];

    v64 = [(_ACTUserActionStream *)self cursor];
    v65 = [v64 externalSegments];
    v66 = [v65 subarrayWithRange:v113];
    v67 = [v66 componentsJoinedByString:&stru_287EC4808];

    if ([v63 length] && (objc_msgSend(v67, "hasPrefix:", v63) & 1) == 0)
    {
      if (!v3)
      {
        goto LABEL_61;
      }

      if ((v111 || v60) && [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWord])
      {
        v68 = 1;
LABEL_63:
        LODWORD(v109) = v68;
        v77 = [(_ACTUserActionStream *)self delegate];
        v78 = [v77 keyboardController];
        v79 = [v78 layoutUtils];
        v80 = [(_ACTUserActionStream *)self delegate];
        v81 = [v80 keyplane];
        v82 = [v79 exactKeyForString:@"Delete" keyplane:v81 includeSecondaryStrings:0];

        v83 = v82;
        [(_ACTUserActionStream *)self lastTimestamp];
        v85 = v84;
        [(_ACTUserActionStream *)self randomActionInterval];
        v87 = v85 + v86;
        v88 = [(_ACTUserActionStream *)self errorGenerator];
        [v82 paddedFrame];
        v89 = [v88 errorForKeyString:@"Delete" rect:?];

        v90 = [(_ACTUserActionStream *)self delegate];
        [v90 pointForAttemptedTapOnKey:v82 withError:v89];
        v92 = v91;
        v94 = v93;

        v95 = [(_ACTUserActionStream *)self delegate];
        v96 = [(_ACTUserActionStream *)self delegate];
        v97 = [v96 keyplane];
        v98 = [v95 keyContainingPoint:v97 inKeyplane:{v92, v94}];

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
          v100 = [(_ACTUserActionStream *)self cursor];
          -[_ACTUserActionStream setSegmentCursorBeforeBackspacing:](self, "setSegmentCursorBeforeBackspacing:", [v100 segmentCursor]);
        }

        while (1)
        {
          v101 = [(_ACTUserActionStream *)self cursor];
          v102 = [v101 segmentCursor];
          v103 = v113;

          if (v102 <= v103)
          {
            break;
          }

          [(_ACTUserActionStream *)self rewindSegmentCursor];
        }

        v104 = [(_ACTUserActionStream *)self cursor];
        -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [v104 segmentCursor]);

        [(_ACTUserActionStream *)self setLastTimestamp:v87];
        goto LABEL_66;
      }

      if ((v109 | v60))
      {
        v68 = [(_ACTUserActionStream *)self shouldBeginCorrectingAfterWordTerminator];
      }

      else
      {
LABEL_61:
        v68 = 0;
      }

      if (v5 || v68)
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
    v9 = [(_ACTUserActionStream *)self cursor];
    v10 = [v9 currentInternalSegment];
    v11 = [(_ACTUserActionStream *)self cursor];
    v12 = [v10 substringToIndex:{objc_msgSend(v11, "positionInCurrentInternalSegment")}];

    [(_ACTUserActionStream *)self rewindPositionByString:v12];
  }

  else
  {
    v21 = v7;
    v22 = v8;
    v23 = [(_ACTUserActionStream *)self delegate];
    v24 = [v23 document];
    v12 = [v24 substringWithRange:{v21, v22}];

    v25 = [(_ACTUserActionStream *)self externalStringToInternal:v12];
    v26 = [v25 length];
    v27 = [(_ACTUserActionStream *)self cursor];
    v28 = [v27 positionInCurrentInternalSegment];

    v29 = [(_ACTUserActionStream *)self cursor];
    v30 = [v29 currentInternalSegment];
    if (v26 <= v28)
    {
      v45 = [v25 length];
      v46 = [(_ACTUserActionStream *)self cursor];
      v35 = [v30 substringWithRange:{v45, objc_msgSend(v46, "positionInCurrentInternalSegment") - objc_msgSend(v25, "length")}];

      [(_ACTUserActionStream *)self rewindPositionByString:v35];
    }

    else
    {
      v31 = [(_ACTUserActionStream *)self cursor];
      v32 = [v31 positionInCurrentInternalSegment];
      v33 = [v25 length];
      v34 = [(_ACTUserActionStream *)self cursor];
      v35 = [v30 substringWithRange:{v32, v33 - objc_msgSend(v34, "positionInCurrentInternalSegment")}];

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
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(_ACTUserActionStream *)self preferManualCorrection];
    if (v3)
    {
      v4 = [(_ACTUserActionStream *)self userModel];
      [v4 probRejectBadAutocorrection];
      v6 = v5;

      v7 = [(_ACTUserActionStream *)self errorGenerator];
      [v7 uniformRandomNumber];
      v9 = v8;

      LOBYTE(v3) = v6 > v9;
    }
  }

  return v3;
}

- (BOOL)shouldBeginCorrectingAfterWordTerminator
{
  v3 = [(_ACTUserActionStream *)self userModel];
  [v3 probBeginCorrectingAfterWordTerminator];
  v5 = v4;

  v6 = [(_ACTUserActionStream *)self errorGenerator];
  [v6 uniformRandomNumber];
  v8 = v7;

  return v5 > v8;
}

- (BOOL)shouldBeginCorrectingAfterWord
{
  v3 = [(_ACTUserActionStream *)self userModel];
  [v3 probBeginCorrectingAfterWord];
  v5 = v4;

  v6 = [(_ACTUserActionStream *)self errorGenerator];
  [v6 uniformRandomNumber];
  v8 = v7;

  return v5 > v8;
}

- (BOOL)canContinueBackspacing
{
  v3 = [(_ACTUserActionStream *)self isBackspacing];
  if (v3)
  {

    LOBYTE(v3) = [(_ACTUserActionStream *)self preferManualCorrection];
  }

  return v3;
}

- (BOOL)canBeginBackspacing
{
  if ([(_ACTUserActionStream *)self isBackspacing])
  {
    return 0;
  }

  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 segmentCursor];

  if (!v4)
  {
    return 0;
  }

  v5 = [(_ACTUserActionStream *)self cursor];
  v6 = [v5 positionInCurrentInternalSegment];

  if (v6)
  {
    return 0;
  }

  return [(_ACTUserActionStream *)self preferManualCorrection];
}

- (_NSRange)documentEditRangeWithSegmentRangePtr:(_NSRange *)a3
{
  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 document];

  v7 = objc_opt_class();
  v8 = [(_ACTUserActionStream *)self cursor];
  v9 = [v7 segmentAnchorRangeForCursor:v8 withDocumentBefore:v6];
  v11 = v10;

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    *a3 = xmmword_26D4EC000;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = a3;
    v14 = [(_ACTUserActionStream *)self cursor];
    v15 = [v14 externalSegments];
    v16 = [v15 subarrayWithRange:{v9, v11}];
    v17 = [v16 componentsJoinedByString:&stru_287EC4808];

    v32 = v17;
    v18 = [v6 rangeOfString:v17 options:4];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 + v19;
    }

    v12 = [v6 length] - v13;
    v20 = v9 + v11;
    v21 = [(_ACTUserActionStream *)self cursor];
    v22 = [v21 segmentCursor];
    v23 = [(_ACTUserActionStream *)self cursor];
    v24 = [v23 externalSegments];
    v25 = [v24 count];
    v26 = [(_ACTUserActionStream *)self cursor];
    v27 = v26;
    if (v22 >= v25)
    {
      v29 = [v26 externalSegments];
      v28 = [v29 count];
    }

    else
    {
      v28 = [v26 segmentCursor] + 1;
    }

    v33->location = v20;
    v33->length = v28 - v20;
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

  v4 = [(_ACTUserActionStream *)self cursor];
  v5 = [v4 segmentCursor];
  v3 = v5 < [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  return v3;
}

- (id)tryRejectCandidate
{
  v3 = [(_ACTUserActionStream *)self delegate];
  v4 = [v3 autocorrection];

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = [(_ACTUserActionStream *)self cursor];
  if ([v5 positionInCurrentInternalSegment])
  {
    goto LABEL_3;
  }

  if ([(_ACTUserActionStream *)self preferPredictionSelection])
  {
  }

  else
  {
    v7 = [(_ACTUserActionStream *)self preferManualCorrection];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = [(_ACTUserActionStream *)self cursor];
  v9 = [v8 rangeOfInputSegmentsForCandidate:v4];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D6F3D8];
    v11 = [v4 input];
    v5 = [v10 candidateWithUnchangedInput:v11];

    v12 = [(_ACTUserActionStream *)self cursor];
    v13 = [v12 rangeOfInputSegmentsForCandidate:v5];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL && [(_ACTUserActionStream *)self shouldRejectBadAutocorrection])
    {
      [(_ACTUserActionStream *)self lastTimestamp];
      v15 = v14;
      [(_ACTUserActionStream *)self randomActionInterval];
      v17 = v15 + v16;
      v6 = [[ACTRejectCandidate alloc] initWithCandidate:v4 timestamp:v17];
      if (v6)
      {
        v18 = [(_ACTUserActionStream *)self cursor];
        if ([v18 segmentCursor])
        {
          v19 = [(_ACTUserActionStream *)self cursor];
          -[ACTUserAction setInputSegment:](v6, "setInputSegment:", [v19 segmentCursor] - 1);
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

- (id)tryAcceptingCandidate:(id)a3
{
  v4 = a3;
  [(_ACTUserActionStream *)self lastTimestamp];
  v6 = v5;
  [(_ACTUserActionStream *)self randomActionInterval];
  v8 = v6 + v7;
  v9 = [(_ACTUserActionStream *)self userModel];
  v10 = [v9 prefersTransliteration];

  if (!v10)
  {
    v18 = [[ACTAcceptCandidate alloc] initWithCandidate:v4 timestamp:v8];
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = [(_ACTUserActionStream *)self cursor];
  v12 = [v11 externalSegments];
  v13 = [(_ACTUserActionStream *)self cursor];
  v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v13, "segmentCursor")}];

  partialCandidateIntendedChunk = self->_partialCandidateIntendedChunk;
  if (partialCandidateIntendedChunk)
  {
    v16 = partialCandidateIntendedChunk;

    v17 = self->_partialCandidateIntendedChunk;
    self->_partialCandidateIntendedChunk = 0;

    v14 = v16;
  }

  v18 = [[ACTAcceptCandidate alloc] initWithCandidate:v4 timestamp:v14 intendedCandidate:v8];

  if (v18)
  {
LABEL_7:
    v19 = [(_ACTUserActionStream *)self cursor];
    -[ACTUserAction setInputSegment:](v18, "setInputSegment:", [v19 segmentCursor]);

    if ([(_ACTUserActionStream *)self advancePositionByAcceptingCandidate:v4])
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

- (id)candidateToSelectFromCandidates:(id)a3
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56___ACTUserActionStream_candidateToSelectFromCandidates___block_invoke;
  v9[3] = &unk_279DA0E28;
  v9[4] = self;
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:v9];
  v5 = [v3 objectsAtIndexes:v4];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_5489];
  v7 = [v6 firstObject];

  return v7;
}

- (id)transliterationCandidate:(id)a3
{
  v4 = a3;
  v5 = [(_ACTUserActionStream *)self cursor];
  v6 = [v5 segmentCursor];

  v7 = [(_ACTUserActionStream *)self cursor];
  if ([v7 positionInCurrentInternalSegment])
  {
    goto LABEL_2;
  }

  v12 = [(_ACTUserActionStream *)self cursor];
  if (![v12 segmentCursor])
  {

LABEL_2:
    goto LABEL_3;
  }

  v13 = v6 - 1;
  v14 = [(_ACTUserActionStream *)self lastCursorPositionForTransliteratedCandidate];

  if (v14 < v13)
  {
    v9 = [(_ACTUserActionStream *)self matchTransliterationCandidateToSegment:v4 withCursorAt:v13];
    if (v9)
    {
LABEL_36:
      [(_ACTUserActionStream *)self setLastCursorPositionForTransliteratedCandidate:v13];
      [(_ACTUserActionStream *)self rewindSegmentCursor];
      goto LABEL_5;
    }

    v15 = [(_ACTUserActionStream *)self cursor];
    v16 = [v15 internalSegments];
    v17 = [v16 objectAtIndex:v13];
    v18 = [(_ACTUserActionStream *)self cursor];
    v19 = [v18 externalSegments];
    v20 = [v19 objectAtIndex:v13];
    v21 = [v17 caseInsensitiveCompare:v20];

    if ([(TIKeyboardTyperUserModel *)self->_userModel usePartialCandidates]&& v21)
    {
      v22 = [(_ACTUserActionStream *)self cursor];
      v23 = [v22 externalSegments];
      v24 = [v23 objectAtIndexedSubscript:v13];
      v25 = [v24 copy];
      partialCandidateSuffix = self->_partialCandidateSuffix;
      self->_partialCandidateSuffix = v25;

      v27 = [(_ACTUserActionStream *)self findPartialCandidate];
LABEL_35:
      v9 = v27;
      goto LABEL_36;
    }

    if (v21)
    {
      v28 = [(_ACTUserActionStream *)self delegate];
      v29 = [v28 keyboardController];
      v30 = [v29 inputMode];
      v31 = [v30 normalizedIdentifier];
      if ([v31 hasSuffix:@"-Translit"] && objc_msgSend(v4, "count") >= 2)
      {
        v32 = [v4 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v4 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v27 = [v4 objectAtIndexedSubscript:1];
            goto LABEL_35;
          }

LABEL_34:
          v27 = [v4 firstObject];
          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }

    v35 = [v4 firstObject];
    v36 = [(_ACTUserActionStream *)self cursor];
    v37 = [v36 internalSegments];
    v38 = [v37 objectAtIndex:v13];

    v39 = [v35 input];
    if ([v39 length])
    {
      v40 = [v38 length];
      v41 = [v35 input];
      if (v40 > [v41 length])
      {
        v42 = [v38 lowercaseString];
        v43 = [v35 input];
        v44 = [v43 lowercaseString];
        v52 = [v42 hasSuffix:v44];

        if (v52)
        {
          v45 = [v35 input];
          v46 = 0;
LABEL_28:
          v47 = [(_ACTUserActionStream *)self cursor];
          v48 = [v47 externalSegments];
          v49 = [v48 objectAtIndex:v13];

          if (v46)
          {
            v50 = v49;
          }

          else
          {
            v50 = [v49 substringFromIndex:{objc_msgSend(v49, "length") - objc_msgSend(v45, "length")}];
          }

          v51 = v50;
          v9 = [MEMORY[0x277D6F3D8] candidateWithCandidate:v50 forInput:v45];

          goto LABEL_36;
        }

LABEL_27:
        v45 = v38;
        v46 = 1;
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

LABEL_3:
  v8 = [(_ACTUserActionStream *)self cursor];
  v9 = -[_ACTUserActionStream matchTransliterationCandidateToSegment:withCursorAt:](self, "matchTransliterationCandidateToSegment:withCursorAt:", v4, [v8 segmentCursor]);

  if (v9)
  {
    v10 = [(_ACTUserActionStream *)self cursor];
    -[_ACTUserActionStream setLastCursorPositionForTransliteratedCandidate:](self, "setLastCursorPositionForTransliteratedCandidate:", [v10 segmentCursor]);
  }

LABEL_5:

  return v9;
}

- (id)findPartialCandidate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(_ACTUserActionStream *)self delegate];
  v4 = [v3 predictionBarCandidates];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
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
        v13 = [v12 candidate];
        if (-[NSString hasPrefix:](self->_partialCandidateSuffix, "hasPrefix:", v13) && [v13 length] > v9)
        {
          v9 = [v13 length];
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

      v21 = [v8 candidate];
      partialCandidateIntendedChunk = self->_partialCandidateIntendedChunk;
      self->_partialCandidateIntendedChunk = v21;
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
  v20 = [partialCandidateIntendedChunk input];
  v8 = [MEMORY[0x277D6F3D8] candidateWithCandidate:@"NO_PARTIAL_CANDIDATE" forInput:v20];

LABEL_18:

  return v8;
}

- (id)matchTransliterationCandidateToSegment:(id)a3 withCursorAt:(int)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 < 0 || (-[_ACTUserActionStream cursor](self, "cursor"), v7 = objc_claimAutoreleasedReturnValue(), [v7 externalSegments], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9 <= a4))
  {
    v16 = 0;
  }

  else
  {
    v10 = [(_ACTUserActionStream *)self cursor];
    v11 = [v10 externalSegments];
    v12 = [v11 objectAtIndexedSubscript:a4];

    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v24 = v12;
      v25 = v6;
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
          v20 = [v19 candidate];
          v21 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:v21];

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
      v6 = v25;
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

  v3 = [(_ACTUserActionStream *)self delegate];
  v4 = [v3 predictionBarCandidates];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 inlineCompletionCandidates];

  v7 = [(_ACTUserActionStream *)self userModel];
  v8 = [v7 prefersTransliteration];

  if (v8)
  {
    if (self->_partialCandidateSuffix)
    {
      [(_ACTUserActionStream *)self findPartialCandidate];
    }

    else
    {
      [(_ACTUserActionStream *)self transliterationCandidate:v4];
    }
    v9 = ;
    goto LABEL_21;
  }

  if (![v6 count])
  {
LABEL_17:
    if ([(_ACTUserActionStream *)self preferInlineSelection])
    {
      v26 = 0;
      goto LABEL_27;
    }

    v9 = [(_ACTUserActionStream *)self candidateToSelectFromCandidates:v4];
LABEL_21:
    v26 = v9;
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v31 = v4;
  v10 = [v6 firstObject];
  v11 = [(_ACTUserActionStream *)self delegate];
  v12 = [v10 candidate];
  v13 = [v11 inputSegmentsForString:v12];

  v14 = [v13 count];
  if (!v14)
  {
LABEL_16:

    v4 = v31;
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

    v18 = [v10 copy];
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

    v24 = [(_ACTUserActionStream *)self preferInlineSelection];

    if (v24)
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

  v4 = v31;
LABEL_22:
  if ([v26 isAutocorrection])
  {
    goto LABEL_26;
  }

  v27 = [(_ACTUserActionStream *)self userModel];
  if ([v27 prefersTransliteration])
  {

    goto LABEL_26;
  }

  v28 = [(_ACTUserActionStream *)self userModel];
  v29 = [v28 prefersContinuousPath];

  if (v29)
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
  v2 = [(_ACTUserActionStream *)self cursor];
  v3 = [v2 atEndOfText];

  return v3;
}

- (id)nextUserAction
{
  [(_ACTUserActionStream *)self advancePositionForAutospace];
  v9 = 0;
  v3 = [(_ACTUserActionStream *)self tryAcceptCandidate];
  if (v3 || ([(_ACTUserActionStream *)self tryRejectCandidate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [(_ACTUserActionStream *)self setIsBackspacing:0];
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  v7 = [(_ACTUserActionStream *)self tryBackspacing];
  if (v7)
  {
    v4 = v7;
    v5 = 1;
    [(_ACTUserActionStream *)self setIsBackspacing:1];
    v9 = 1;
  }

  else
  {
    [(_ACTUserActionStream *)self setIsBackspacing:0];
    v8 = [(_ACTUserActionStream *)self tryPeriodShortcut];
    if (v8)
    {
      v4 = v8;
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
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  isLetterKey = _isLetterKey(v4);
  v6 = [(_ACTUserActionStream *)self cursor];
  v7 = [v6 positionInCurrentInternalSegment];

  v8 = [(_ACTUserActionStream *)self cursor];
  v9 = [v8 previousLongCharacter];

  v10 = _isLetterKey(v9);
  v11 = [(_ACTUserActionStream *)self cursor];
  v12 = [v11 positionInCurrentInternalSegment];

  if (isLetterKey)
  {
    v13 = [(_ACTUserActionStream *)self userModel];
    v14 = v13;
    if (v7)
    {
      [v13 probExtraneousKey];
    }

    else
    {
      [v13 probExtraneousInitialKey];
    }

    goto LABEL_7;
  }

  v16 = 0.0;
  if (((v12 == 0) & v10) == 1)
  {
    v14 = [(_ACTUserActionStream *)self userModel];
    [v14 probExtraneousFinalKey];
LABEL_7:
    v16 = v15;
  }

  return v16;
}

- (float)probabilityOfSubstituteKey
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyplane];
  v7 = [(_ACTUserActionStream *)self anyKeyForString:v4 keyplane:v6 wantSecondaryString:0 substituteUpperCaseForLowerCase:0];

  v8 = 0.0;
  if (v7)
  {
    if (_isLetterKey(v4))
    {
      v9 = [(_ACTUserActionStream *)self cursor];
      v10 = [v9 positionInCurrentInternalSegment];

      v11 = [(_ACTUserActionStream *)self userModel];
      v12 = v11;
      if (v10)
      {
        [v11 probSubstituteLetter];
      }

      else
      {
        [v11 probSubstituteInitialLetter];
      }

      goto LABEL_8;
    }

    if (_isSpaceKey(v4))
    {
      v12 = [(_ACTUserActionStream *)self userModel];
      [v12 probSubstituteSpace];
LABEL_8:
      v8 = v13;
    }
  }

  return v8;
}

- (float)probabilityOfDoubledKey
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];
  if (!_isLetterKey(v4))
  {

    v6 = 0.0;
LABEL_8:

    return v6;
  }

  v5 = [(_ACTUserActionStream *)self lastAndCurrentKeysAreSame];

  v6 = 0.0;
  if (!v5)
  {
    v7 = [(_ACTUserActionStream *)self cursor];
    v8 = [v7 positionInCurrentInternalSegment];

    v9 = [(_ACTUserActionStream *)self userModel];
    v3 = v9;
    if (v8)
    {
      [v9 probDoubleTapLetter];
    }

    else
    {
      [v9 probDoubleTapInitialLetter];
    }

    v6 = v10;
    goto LABEL_8;
  }

  return v6;
}

- (float)probabilityOfSkippedKey
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  if (_isLetterKey(v4))
  {
    if ([(_ACTUserActionStream *)self lastAndCurrentKeysAreSame])
    {
      v5 = [(_ACTUserActionStream *)self userModel];
      [v5 probSkipRepeatLetter];
    }

    else
    {
      v8 = [(_ACTUserActionStream *)self cursor];
      v9 = [v8 positionInCurrentInternalSegment];

      v10 = [(_ACTUserActionStream *)self userModel];
      v5 = v10;
      if (v9)
      {
        [v10 probSkipLetter];
      }

      else
      {
        [v10 probSkipInitialLetter];
      }
    }

    goto LABEL_9;
  }

  v7 = 0.0;
  if (_isSpaceKey(v4))
  {
    v5 = [(_ACTUserActionStream *)self userModel];
    [v5 probSkipSpace];
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
    v4 = [(_ACTUserActionStream *)self cursor];
    v5 = [v4 currentLongCharacter];

    v6 = [(_ACTUserActionStream *)self cursor];
    v7 = [v6 nextLongCharacter];

    if (_isLetterKey(v5) && _isLetterKey(v7))
    {
      v8 = [(_ACTUserActionStream *)self userModel];
      [v8 probTransposeLetters];
    }

    else
    {
      if ((!_isLetterKey(v5) || !_isSpaceKey(v7)) && (!_isSpaceKey(v5) || !_isLetterKey(v7)))
      {
        goto LABEL_11;
      }

      v8 = [(_ACTUserActionStream *)self userModel];
      [v8 probTransposeLetterAndSpace];
    }

    v3 = v9;

LABEL_11:
  }

  return v3;
}

- (double)randomActionInterval
{
  v3 = [(_ACTUserActionStream *)self errorGenerator];
  [v3 uniformRandomNumber];
  v5 = v4;

  [(_ACTUserActionStream *)self averageActionInterval];
  *&v6 = v6;
  *&v6 = (v5 + 0.5) * *&v6;
  return *&v6;
}

- (id)anyKeyForString:(id)a3 keyplane:(id)a4 wantSecondaryString:(BOOL)a5 substituteUpperCaseForLowerCase:(BOOL)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(_ACTUserActionStream *)self delegate];
  v13 = [v12 keyboardController];
  v14 = [v13 layoutUtils];
  LOBYTE(v17) = a6;
  v15 = [v14 anyKeyForString:v11 keyplane:v10 wantSecondaryString:v7 isRetyping:-[_ACTUserActionStream isRetyping](self preferBaseKeyVariants:"isRetyping") preferManualShift:-[_ACTUserActionStream preferBaseKeyForVariants](self substituteUpperCaseForLowerCase:{"preferBaseKeyForVariants"), -[_ACTUserActionStream preferManualShift](self, "preferManualShift"), v17}];

  return v15;
}

- (BOOL)shouldIgnoreCurrentCharacter
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self cursor];
  if ([v5 positionInCurrentInternalSegment])
  {
    v6 = [(_ACTUserActionStream *)self cursor];
    v7 = [v6 positionInCurrentInternalSegment];
    v8 = [v4 length] + v7;
    v9 = [(_ACTUserActionStream *)self cursor];
    v10 = [v9 currentInternalSegment];
    v11 = v8 >= [v10 length];
  }

  else
  {
    v11 = 1;
  }

  if ([v4 isEqualToString:@"'"])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [v4 isEqualToString:@"’"] ^ 1;
  }

  v13 = [(_ACTUserActionStream *)self userModel];
  v14 = [v13 prefersAutocorrectForApostrophes];

  v15 = v14 & ![(_ACTUserActionStream *)self isRetyping];
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
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 prefersToCorrectErrors];

  return v3;
}

- (BOOL)preferInlineSelection
{
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 prefersInlineSelection];

  return v3;
}

- (BOOL)preferPredictionSelection
{
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 prefersPredictionSelection];

  return v3;
}

- (BOOL)preferBaseKeyForVariants
{
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 baseKeyForVariants];

  return v3;
}

- (BOOL)preferManualShift
{
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 prefersAutocorrectForCaps];

  return v3 ^ 1;
}

- (double)averageActionInterval
{
  v2 = [(_ACTUserActionStream *)self userModel];
  [v2 averageKeyTapsPerSecond];
  v4 = v3;

  return (1.0 / v4);
}

- (BOOL)shouldTypeInternalString
{
  v2 = [(_ACTUserActionStream *)self userModel];
  v3 = [v2 decomposeInputString];

  return v3;
}

- (BOOL)lastAndCurrentKeysAreSame
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 previousLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyboardController];
  v7 = [v6 layoutUtils];
  v8 = [(_ACTUserActionStream *)self delegate];
  v9 = [v8 keyplane];
  v10 = [v7 exactKeyForString:v4 keyplane:v9 includeSecondaryStrings:0];

  v11 = [(_ACTUserActionStream *)self cursor];
  v12 = [v11 currentLongCharacter];

  v13 = [(_ACTUserActionStream *)self delegate];
  v14 = [v13 keyboardController];
  v15 = [v14 layoutUtils];
  v16 = [(_ACTUserActionStream *)self delegate];
  v17 = [v16 keyplane];
  v18 = [v15 exactKeyForString:v12 keyplane:v17 includeSecondaryStrings:0];

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
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 currentLongCharacter];

  v5 = [(_ACTUserActionStream *)self delegate];
  v6 = [v5 keyboardController];
  v7 = [v6 layoutUtils];
  v8 = [(_ACTUserActionStream *)self delegate];
  v9 = [v8 keyplane];
  v10 = [v7 exactKeyForString:v4 keyplane:v9 includeSecondaryStrings:0];

  v11 = [(_ACTUserActionStream *)self cursor];
  v12 = [v11 nextLongCharacter];

  v13 = [(_ACTUserActionStream *)self delegate];
  v14 = [v13 keyboardController];
  v15 = [v14 layoutUtils];
  v16 = [(_ACTUserActionStream *)self delegate];
  v17 = [v16 keyplane];
  v18 = [v15 exactKeyForString:v12 keyplane:v17 includeSecondaryStrings:0];

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
  v3 = [(_ACTUserActionStream *)self delegate];
  v4 = [v3 autocorrection];

  if ([v4 isAutocorrection])
  {
    v5 = [(_ACTUserActionStream *)self cursor];
    v6 = [v5 rangeOfInputSegmentsForCandidate:v4];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)advancePositionByAcceptingCandidate:(id)a3
{
  v4 = a3;
  v5 = [(_ACTUserActionStream *)self userModel];
  v6 = [v5 prefersTransliteration];

  if (v6)
  {
    if (!self->_partialCandidateSuffix)
    {
      [(_ACTUserActionStream *)self advanceSegmentCursor];
    }

    goto LABEL_13;
  }

  v7 = [(_ACTUserActionStream *)self cursor];
  v8 = [v7 rangeOfInputSegmentsForCandidate:v4];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v8 + v10;
    v12 = [(_ACTUserActionStream *)self cursor];
    if (v11 >= [v12 segmentCursor])
    {
      v13 = [(_ACTUserActionStream *)self cursor];
      if (v11 == [v13 segmentCursor])
      {
        v14 = [(_ACTUserActionStream *)self cursor];
        v15 = [v14 positionInCurrentInternalSegment];

        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      while (1)
      {
        v17 = [(_ACTUserActionStream *)self cursor];
        v18 = [v17 segmentCursor];

        if (v18 >= v11)
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

- (void)rewindPositionByString:(id)a3
{
  v4 = a3;
  v5 = [(_ACTUserActionStream *)self cursor];
  [v5 rewindPositionByString:v4];
}

- (void)advancePositionByString:(id)a3
{
  v4 = a3;
  v5 = [(_ACTUserActionStream *)self cursor];
  [v5 advancePositionByString:v4];

  v6 = [(_ACTUserActionStream *)self cursor];
  v7 = [v6 segmentCursor];
  v8 = [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  if (v7 >= v8)
  {

    [(_ACTUserActionStream *)self setSegmentCursorBeforeBackspacing:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (BOOL)rewindSegmentCursor
{
  v2 = [(_ACTUserActionStream *)self cursor];
  v3 = [v2 rewindSegmentCursor];

  return v3;
}

- (BOOL)advanceSegmentCursor
{
  v3 = [(_ACTUserActionStream *)self cursor];
  v4 = [v3 advanceSegmentCursor];

  v5 = [(_ACTUserActionStream *)self cursor];
  v6 = [v5 segmentCursor];
  v7 = [(_ACTUserActionStream *)self segmentCursorBeforeBackspacing];

  if (v6 >= v7)
  {
    [(_ACTUserActionStream *)self setSegmentCursorBeforeBackspacing:0x7FFFFFFFFFFFFFFFLL];
  }

  return v4;
}

- (void)resetForIntendedSegments:(id)a3 expectedSegments:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_ACTUserActionStream *)self setLastTimestamp:0.0];
  [(_ACTUserActionStream *)self setLastActionSuppressesError:0];
  [(_ACTUserActionStream *)self setSegmentEditHorizon:0];
  [(_ACTUserActionStream *)self setLastCursorPositionForTransliteratedCandidate:-1];
  v8 = [[ACTUserMentalCursor alloc] initWithInternalSegments:v7 externalSegments:v6];

  [(_ACTUserActionStream *)self setCursor:v8];
}

- (void)resetForIntendedText:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_ACTUserActionStream *)self userModel];
  v6 = [v5 prefersContinuousPath];
  v7 = [(_ACTUserActionStream *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 inputSegmentsForContinuousPathString:v4];
  }

  else
  {
    [v7 inputSegmentsForString:v4];
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

- (id)externalStringToInternal:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([(_ACTUserActionStream *)self shouldTypeInternalString])
  {
    v6 = [(_ACTUserActionStream *)self delegate];
    v5 = [v6 externalStringToInternal:v4];
  }

  if ([(_ACTUserActionStream *)self preferBaseKeyForVariants])
  {
    v7 = [(_ACTUserActionStream *)self delegate];
    v8 = [v7 splitDigraphsInString:v5];

    v5 = v8;
  }

  return v5;
}

- (void)setRandomNumberSeed:(unsigned int)a3
{
  v3 = *&a3;
  self->_randomNumberSeed = a3;
  v5 = [(_ACTUserActionStream *)self errorGenerator];
  [v5 setRandomNumberSeed:v3];

  v6 = [(_ACTUserActionStream *)self pathGenerator];
  [v6 setRandomNumberSeed:v3];

  v7 = [(_ACTUserActionStream *)self userPathManager];
  [v7 setRandomNumberSeed:v3];
}

- (NSString)intendedText
{
  v2 = [(_ACTUserActionStream *)self cursor];
  v3 = [v2 intendedText];

  return v3;
}

- (void)configureWithParameters:(id)a3
{
  v11 = a3;
  v4 = [[TIKeyboardTyperUserModel alloc] initWithModel:v11];
  [(_ACTUserActionStream *)self setUserModel:v4];

  v5 = [TIErrorGenerator errorGeneratorWithAttributes:v11];
  [(_ACTUserActionStream *)self setErrorGenerator:v5];

  v6 = [(_ACTUserActionStream *)self userModel];
  v7 = [v6 prefersContinuousPath];

  if (v7)
  {
    v8 = [TTKDefaultContinuousPathGenerator pathGeneratorWithAttributes:v11];
    [(_ACTUserActionStream *)self setPathGenerator:v8];
  }

  v9 = [v11 objectForKey:@"USER_PATH_FILE"];
  if ([v9 length])
  {
    v10 = [[UserPathManager alloc] initWithPathFile:v9];
    [(_ACTUserActionStream *)self setUserPathManager:v10];
  }
}

- (_ACTUserActionStream)initWithParameters:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v8->_delegate = v7;
  }

  [(_ACTUserActionStream *)v8 configureWithParameters:v6];

  return v8;
}

+ (BOOL)isPathableWord:(id)a3
{
  v3 = MEMORY[0x277CCAB50];
  v4 = a3;
  v5 = [v3 letterCharacterSet];
  [v5 addCharactersInString:@"'’׳״-"];
  [v5 removeCharactersInString:@"œŒß"];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v4 length];

  v8 = v7 >= 2 && [v6 length] == 0;
  return v8;
}

+ (_NSRange)segmentAnchorRangeForCursor:(id)a3 withDocumentBefore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 segmentCursor];
  if (v7 < 0)
  {
    goto LABEL_27;
  }

  v8 = v7;
  while (2)
  {
    v9 = 0;
    v26 = v8;
    while (1)
    {
      v10 = [v5 externalSegments];
      v11 = [v10 subarrayWithRange:{v8, v9}];
      v12 = [v11 componentsJoinedByString:&stru_287EC4808];

      v13 = [v6 rangeOfString:v12 options:4];
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

    v20 = [v6 length] - (v13 + v15);
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
      v19 = [v6 length] < 0x15;
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

+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_ACTUserActionStream alloc] initWithParameters:v6 delegate:v5];

  return v7;
}

@end