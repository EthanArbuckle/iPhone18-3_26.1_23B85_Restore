@interface TIKeyboardState
- (BOOL)isEqual:(id)equal;
- (BOOL)secureTextEntry;
- (BOOL)shouldOutputFullwidthSpace;
- (NSString)recipientIdentifier;
- (NSString)responseContext;
- (TIKeyboardState)init;
- (TIKeyboardState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)autocapitalizationType;
- (unint64_t)keyboardType;
- (void)_createTextInputTraitsIfNecessary;
- (void)encodeWithCoder:(id)coder;
- (void)setAutocapitalizationEnabled:(BOOL)enabled;
- (void)setAutocapitalizationType:(unint64_t)type;
- (void)setAutocorrectionEnabled:(BOOL)enabled;
- (void)setAutocorrectionListUIAutoDisplayMode:(BOOL)mode;
- (void)setCanSendCurrentLocation:(BOOL)location;
- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)selection;
- (void)setCandidateSelectionPredictionEnabled:(BOOL)enabled;
- (void)setEmojiPopoverMode:(BOOL)mode;
- (void)setEmojiSearchMode:(BOOL)mode;
- (void)setFloatingKeyboardMode:(BOOL)mode;
- (void)setHardwareKeyboardMode:(BOOL)mode;
- (void)setImageSuggestionEnabled:(BOOL)enabled;
- (void)setInlineCompletionEnabled:(BOOL)enabled;
- (void)setIsScreenLocked:(BOOL)locked;
- (void)setKeyboardEventsLagging:(BOOL)lagging;
- (void)setKeyboardType:(unint64_t)type;
- (void)setLandscapeOrientation:(BOOL)orientation;
- (void)setLongPredictionListEnabled:(BOOL)enabled;
- (void)setNeedAutofill:(BOOL)autofill;
- (void)setNeedCellularAutofill:(BOOL)autofill;
- (void)setNeedOneTimeCodeAutofill:(BOOL)autofill;
- (void)setNeedsCandidateMetadata:(BOOL)metadata;
- (void)setOmitEmojiCandidates:(BOOL)candidates;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setShortcutConversionEnabled:(BOOL)enabled;
- (void)setShouldSkipCandidateSelection:(BOOL)selection;
- (void)setSplitKeyboardMode:(BOOL)mode;
- (void)setSuppressingCandidateSelection:(BOOL)selection;
- (void)setWordLearningEnabled:(BOOL)enabled;
@end

@implementation TIKeyboardState

- (TIKeyboardState)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardState;
  v2 = [(TIKeyboardState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    LODWORD(v2->_mask.integerValue) |= 0x400000u;
    v4 = v2;
  }

  return v3;
}

- (NSString)recipientIdentifier
{
  inputContextHistory = [(TIKeyboardState *)self inputContextHistory];
  recipientIdentifiers = [inputContextHistory recipientIdentifiers];
  v5 = [recipientIdentifiers count];

  if (v5)
  {
    inputContextHistory2 = [(TIKeyboardState *)self inputContextHistory];
    recipientIdentifiers2 = [inputContextHistory2 recipientIdentifiers];
    anyObject = [recipientIdentifiers2 anyObject];
  }

  else
  {
    anyObject = self->_recipientIdentifier;
  }

  return anyObject;
}

- (NSString)responseContext
{
  inputContextHistory = [(TIKeyboardState *)self inputContextHistory];
  mostRecentTextEntryIsByMe = [inputContextHistory mostRecentTextEntryIsByMe];

  inputContextHistory2 = [(TIKeyboardState *)self inputContextHistory];
  mostRecentNonSenderTextEntry = [inputContextHistory2 mostRecentNonSenderTextEntry];

  if (mostRecentNonSenderTextEntry)
  {
    if (mostRecentTextEntryIsByMe)
    {
      responseContext = 0;
    }

    else
    {
      responseContext = mostRecentNonSenderTextEntry;
    }
  }

  else
  {
    responseContext = self->_responseContext;
  }

  v8 = responseContext;

  return responseContext;
}

- (BOOL)secureTextEntry
{
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  secureTextEntry = [textInputTraits secureTextEntry];

  return secureTextEntry;
}

- (unint64_t)autocapitalizationType
{
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  autocapitalizationType = [textInputTraits autocapitalizationType];

  return autocapitalizationType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    documentIdentifier = [(TIKeyboardState *)self documentIdentifier];
    documentIdentifier2 = [v5 documentIdentifier];
    v8 = documentIdentifier2;
    if (documentIdentifier == documentIdentifier2)
    {
    }

    else
    {
      documentIdentifier3 = [(TIKeyboardState *)self documentIdentifier];
      documentIdentifier4 = [v5 documentIdentifier];
      v11 = [documentIdentifier3 isEqual:documentIdentifier4];

      if (!v11)
      {
        goto LABEL_116;
      }
    }

    clientIdentifier = [(TIKeyboardState *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v15 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      clientIdentifier3 = [(TIKeyboardState *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      LODWORD(v16) = [v16 _string:clientIdentifier3 matchesString:clientIdentifier4];

      if (!v16)
      {
        goto LABEL_116;
      }
    }

    inputMode = [(TIKeyboardState *)self inputMode];
    inputMode2 = [v5 inputMode];
    v21 = inputMode2;
    if (inputMode == inputMode2)
    {
    }

    else
    {
      v22 = MEMORY[0x1E696AEC0];
      inputMode3 = [(TIKeyboardState *)self inputMode];
      inputMode4 = [v5 inputMode];
      LODWORD(v22) = [v22 _string:inputMode3 matchesString:inputMode4];

      if (!v22)
      {
        goto LABEL_116;
      }
    }

    auxiliaryInputModeLanguages = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
    auxiliaryInputModeLanguages2 = [v5 auxiliaryInputModeLanguages];
    v27 = auxiliaryInputModeLanguages2;
    if (auxiliaryInputModeLanguages == auxiliaryInputModeLanguages2)
    {
    }

    else
    {
      auxiliaryInputModeLanguages3 = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
      auxiliaryInputModeLanguages4 = [v5 auxiliaryInputModeLanguages];
      v30 = [auxiliaryInputModeLanguages3 isEqual:auxiliaryInputModeLanguages4];

      if (!v30)
      {
        goto LABEL_116;
      }
    }

    recipientIdentifier = [(TIKeyboardState *)self recipientIdentifier];
    recipientIdentifier2 = [v5 recipientIdentifier];
    v33 = recipientIdentifier2;
    if (recipientIdentifier == recipientIdentifier2)
    {
    }

    else
    {
      v34 = MEMORY[0x1E696AEC0];
      recipientIdentifier3 = [(TIKeyboardState *)self recipientIdentifier];
      recipientIdentifier4 = [v5 recipientIdentifier];
      LODWORD(v34) = [v34 _string:recipientIdentifier3 matchesString:recipientIdentifier4];

      if (!v34)
      {
        goto LABEL_116;
      }
    }

    inputContextHistory = [(TIKeyboardState *)self inputContextHistory];
    inputContextHistory2 = [v5 inputContextHistory];
    v39 = inputContextHistory2;
    if (inputContextHistory == inputContextHistory2)
    {
    }

    else
    {
      inputContextHistory3 = [(TIKeyboardState *)self inputContextHistory];
      inputContextHistory4 = [v5 inputContextHistory];
      v42 = [inputContextHistory3 isEqual:inputContextHistory4];

      if (!v42)
      {
        goto LABEL_116;
      }
    }

    keyLayout = [(TIKeyboardState *)self keyLayout];
    keyLayout2 = [v5 keyLayout];
    v45 = keyLayout2;
    if (keyLayout == keyLayout2)
    {
    }

    else
    {
      keyLayout3 = [(TIKeyboardState *)self keyLayout];
      keyLayout4 = [v5 keyLayout];
      v48 = [keyLayout3 isEqual:keyLayout4];

      if (!v48)
      {
        goto LABEL_116;
      }
    }

    shiftState = [(TIKeyboardState *)self shiftState];
    if (shiftState == [v5 shiftState])
    {
      layoutState = [(TIKeyboardState *)self layoutState];
      layoutState2 = [v5 layoutState];
      v52 = layoutState2;
      if (layoutState == layoutState2)
      {
      }

      else
      {
        layoutState3 = [(TIKeyboardState *)self layoutState];
        layoutState4 = [v5 layoutState];
        v55 = [layoutState3 isEqual:layoutState4];

        if (!v55)
        {
          goto LABEL_116;
        }
      }

      documentState = [(TIKeyboardState *)self documentState];
      documentState2 = [v5 documentState];
      v58 = documentState2;
      if (documentState == documentState2)
      {
      }

      else
      {
        documentState3 = [(TIKeyboardState *)self documentState];
        documentState4 = [v5 documentState];
        v61 = [documentState3 isEqual:documentState4];

        if (!v61)
        {
          goto LABEL_116;
        }
      }

      attributedDocumentState = [(TIKeyboardState *)self attributedDocumentState];
      attributedDocumentState2 = [v5 attributedDocumentState];
      v64 = attributedDocumentState2;
      if (attributedDocumentState == attributedDocumentState2)
      {
      }

      else
      {
        attributedDocumentState3 = [(TIKeyboardState *)self attributedDocumentState];
        attributedDocumentState4 = [v5 attributedDocumentState];
        v67 = [attributedDocumentState3 isEqual:attributedDocumentState4];

        if (!v67)
        {
          goto LABEL_116;
        }
      }

      secureCandidateRenderTraits = [(TIKeyboardState *)self secureCandidateRenderTraits];
      secureCandidateRenderTraits2 = [v5 secureCandidateRenderTraits];
      v70 = secureCandidateRenderTraits2;
      if (secureCandidateRenderTraits == secureCandidateRenderTraits2)
      {
      }

      else
      {
        secureCandidateRenderTraits3 = [(TIKeyboardState *)self secureCandidateRenderTraits];
        secureCandidateRenderTraits4 = [v5 secureCandidateRenderTraits];
        v73 = [secureCandidateRenderTraits3 isEqual:secureCandidateRenderTraits4];

        if (!v73)
        {
          goto LABEL_116;
        }
      }

      eventAuthenticationMessage = [(TIKeyboardState *)self eventAuthenticationMessage];
      eventAuthenticationMessage2 = [v5 eventAuthenticationMessage];
      v76 = eventAuthenticationMessage2;
      if (eventAuthenticationMessage == eventAuthenticationMessage2)
      {
      }

      else
      {
        eventAuthenticationMessage3 = [(TIKeyboardState *)self eventAuthenticationMessage];
        eventAuthenticationMessage4 = [v5 eventAuthenticationMessage];
        v79 = [eventAuthenticationMessage3 isEqual:eventAuthenticationMessage4];

        if (!v79)
        {
          goto LABEL_116;
        }
      }

      inputForMarkedText = [(TIKeyboardState *)self inputForMarkedText];
      inputForMarkedText2 = [v5 inputForMarkedText];
      v82 = inputForMarkedText2;
      if (inputForMarkedText == inputForMarkedText2)
      {
      }

      else
      {
        v83 = MEMORY[0x1E696AEC0];
        inputForMarkedText3 = [(TIKeyboardState *)self inputForMarkedText];
        inputForMarkedText4 = [v5 inputForMarkedText];
        LODWORD(v83) = [v83 _string:inputForMarkedText3 matchesString:inputForMarkedText4];

        if (!v83)
        {
          goto LABEL_116;
        }
      }

      searchStringForMarkedText = [(TIKeyboardState *)self searchStringForMarkedText];
      searchStringForMarkedText2 = [v5 searchStringForMarkedText];
      v88 = searchStringForMarkedText2;
      if (searchStringForMarkedText == searchStringForMarkedText2)
      {
      }

      else
      {
        v89 = MEMORY[0x1E696AEC0];
        searchStringForMarkedText3 = [(TIKeyboardState *)self searchStringForMarkedText];
        searchStringForMarkedText4 = [v5 searchStringForMarkedText];
        LODWORD(v89) = [v89 _string:searchStringForMarkedText3 matchesString:searchStringForMarkedText4];

        if (!v89)
        {
          goto LABEL_116;
        }
      }

      currentCandidate = [(TIKeyboardState *)self currentCandidate];
      currentCandidate2 = [v5 currentCandidate];
      v94 = currentCandidate2;
      if (currentCandidate == currentCandidate2)
      {
      }

      else
      {
        currentCandidate3 = [(TIKeyboardState *)self currentCandidate];
        currentCandidate4 = [v5 currentCandidate];
        v97 = [currentCandidate3 isEqual:currentCandidate4];

        if (!v97)
        {
          goto LABEL_116;
        }
      }

      userSelectedCurrentCandidate = [(TIKeyboardState *)self userSelectedCurrentCandidate];
      if (userSelectedCurrentCandidate != [v5 userSelectedCurrentCandidate])
      {
        goto LABEL_116;
      }

      shouldSkipCandidateSelection = [(TIKeyboardState *)self shouldSkipCandidateSelection];
      if (shouldSkipCandidateSelection != [v5 shouldSkipCandidateSelection])
      {
        goto LABEL_116;
      }

      suppressingCandidateSelection = [(TIKeyboardState *)self suppressingCandidateSelection];
      if (suppressingCandidateSelection != [v5 suppressingCandidateSelection])
      {
        goto LABEL_116;
      }

      needsCandidateMetadata = [(TIKeyboardState *)self needsCandidateMetadata];
      if (needsCandidateMetadata != [v5 needsCandidateMetadata])
      {
        goto LABEL_116;
      }

      keyboardEventsLagging = [(TIKeyboardState *)self keyboardEventsLagging];
      if (keyboardEventsLagging != [v5 keyboardEventsLagging])
      {
        goto LABEL_116;
      }

      hardwareKeyboardMode = [(TIKeyboardState *)self hardwareKeyboardMode];
      if (hardwareKeyboardMode != [v5 hardwareKeyboardMode])
      {
        goto LABEL_116;
      }

      splitKeyboardMode = [(TIKeyboardState *)self splitKeyboardMode];
      if (splitKeyboardMode != [v5 splitKeyboardMode])
      {
        goto LABEL_116;
      }

      floatingKeyboardMode = [(TIKeyboardState *)self floatingKeyboardMode];
      if (floatingKeyboardMode != [v5 floatingKeyboardMode])
      {
        goto LABEL_116;
      }

      landscapeOrientation = [(TIKeyboardState *)self landscapeOrientation];
      if (landscapeOrientation != [v5 landscapeOrientation])
      {
        goto LABEL_116;
      }

      wordLearningEnabled = [(TIKeyboardState *)self wordLearningEnabled];
      if (wordLearningEnabled != [v5 wordLearningEnabled])
      {
        goto LABEL_116;
      }

      inlineCompletionEnabled = [(TIKeyboardState *)self inlineCompletionEnabled];
      if (inlineCompletionEnabled != [v5 inlineCompletionEnabled])
      {
        goto LABEL_116;
      }

      autocorrectionEnabled = [(TIKeyboardState *)self autocorrectionEnabled];
      if (autocorrectionEnabled != [v5 autocorrectionEnabled])
      {
        goto LABEL_116;
      }

      imageSuggestionEnabled = [(TIKeyboardState *)self imageSuggestionEnabled];
      if (imageSuggestionEnabled != [v5 imageSuggestionEnabled])
      {
        goto LABEL_116;
      }

      omitEmojiCandidates = [(TIKeyboardState *)self omitEmojiCandidates];
      if (omitEmojiCandidates != [v5 omitEmojiCandidates])
      {
        goto LABEL_116;
      }

      emojiSearchMode = [(TIKeyboardState *)self emojiSearchMode];
      if (emojiSearchMode != [v5 emojiSearchMode])
      {
        goto LABEL_116;
      }

      emojiPopoverMode = [(TIKeyboardState *)self emojiPopoverMode];
      if (emojiPopoverMode != [v5 emojiPopoverMode])
      {
        goto LABEL_116;
      }

      shortcutConversionEnabled = [(TIKeyboardState *)self shortcutConversionEnabled];
      if (shortcutConversionEnabled != [v5 shortcutConversionEnabled])
      {
        goto LABEL_116;
      }

      candidateSelectionPredictionEnabled = [(TIKeyboardState *)self candidateSelectionPredictionEnabled];
      if (candidateSelectionPredictionEnabled != [v5 candidateSelectionPredictionEnabled])
      {
        goto LABEL_116;
      }

      autocapitalizationEnabled = [(TIKeyboardState *)self autocapitalizationEnabled];
      if (autocapitalizationEnabled != [v5 autocapitalizationEnabled])
      {
        goto LABEL_116;
      }

      inlineCompletionEnabled2 = [(TIKeyboardState *)self inlineCompletionEnabled];
      if (inlineCompletionEnabled2 != [v5 inlineCompletionEnabled])
      {
        goto LABEL_116;
      }

      textInputTraits = [(TIKeyboardState *)self textInputTraits];
      textInputTraits2 = [v5 textInputTraits];
      v120 = textInputTraits2;
      if (textInputTraits == textInputTraits2)
      {
      }

      else
      {
        textInputTraits3 = [(TIKeyboardState *)self textInputTraits];
        textInputTraits4 = [v5 textInputTraits];
        v123 = [textInputTraits3 isEqual:textInputTraits4];

        if (!v123)
        {
          goto LABEL_116;
        }
      }

      responseContext = [(TIKeyboardState *)self responseContext];
      responseContext2 = [v5 responseContext];
      v126 = responseContext2;
      if (responseContext == responseContext2)
      {
      }

      else
      {
        v127 = MEMORY[0x1E696AEC0];
        responseContext3 = [(TIKeyboardState *)self responseContext];
        responseContext4 = [v5 responseContext];
        LODWORD(v127) = [v127 _string:responseContext3 matchesString:responseContext4];

        if (!v127)
        {
          goto LABEL_116;
        }
      }

      supportedPayloadIds = [(TIKeyboardState *)self supportedPayloadIds];
      supportedPayloadIds2 = [v5 supportedPayloadIds];
      v132 = supportedPayloadIds2;
      if (supportedPayloadIds == supportedPayloadIds2)
      {
      }

      else
      {
        supportedPayloadIds3 = [(TIKeyboardState *)self supportedPayloadIds];
        supportedPayloadIds4 = [v5 supportedPayloadIds];
        v135 = [supportedPayloadIds3 isEqual:supportedPayloadIds4];

        if (!v135)
        {
          goto LABEL_116;
        }
      }

      autocorrectionListUIDisplayed = [(TIKeyboardState *)self autocorrectionListUIDisplayed];
      if (autocorrectionListUIDisplayed != [v5 autocorrectionListUIDisplayed])
      {
        goto LABEL_116;
      }

      autocorrectionListUIAutoDisplayMode = [(TIKeyboardState *)self autocorrectionListUIAutoDisplayMode];
      if (autocorrectionListUIAutoDisplayMode != [v5 autocorrectionListUIAutoDisplayMode])
      {
        goto LABEL_116;
      }

      canSendCurrentLocation = [(TIKeyboardState *)self canSendCurrentLocation];
      if (canSendCurrentLocation != [v5 canSendCurrentLocation])
      {
        goto LABEL_116;
      }

      isScreenLocked = [(TIKeyboardState *)self isScreenLocked];
      if (isScreenLocked != [v5 isScreenLocked])
      {
        goto LABEL_116;
      }

      longPredictionListEnabled = [(TIKeyboardState *)self longPredictionListEnabled];
      if (longPredictionListEnabled != [v5 longPredictionListEnabled])
      {
        goto LABEL_116;
      }

      needAutofill = [(TIKeyboardState *)self needAutofill];
      if (needAutofill != [v5 needAutofill])
      {
        goto LABEL_116;
      }

      autofillMode = [(TIKeyboardState *)self autofillMode];
      if (autofillMode != [v5 autofillMode])
      {
        goto LABEL_116;
      }

      autofillSubMode = [(TIKeyboardState *)self autofillSubMode];
      if (autofillSubMode != [v5 autofillSubMode])
      {
        goto LABEL_116;
      }

      needOneTimeCodeAutofill = [(TIKeyboardState *)self needOneTimeCodeAutofill];
      if (needOneTimeCodeAutofill != [v5 needOneTimeCodeAutofill])
      {
        goto LABEL_116;
      }

      needCellularAutofill = [(TIKeyboardState *)self needCellularAutofill];
      if (needCellularAutofill != [v5 needCellularAutofill])
      {
        goto LABEL_116;
      }

      autofillContext = [(TIKeyboardState *)self autofillContext];
      autofillContext2 = [v5 autofillContext];
      v148 = autofillContext2;
      if (autofillContext == autofillContext2)
      {
      }

      else
      {
        autofillContext3 = [(TIKeyboardState *)self autofillContext];
        autofillContext4 = [v5 autofillContext];
        v151 = [autofillContext3 isEqualToDictionary:autofillContext4];

        if (!v151)
        {
          goto LABEL_116;
        }
      }

      statisticChanges = [(TIKeyboardState *)self statisticChanges];
      statisticChanges2 = [v5 statisticChanges];
      v154 = statisticChanges2;
      if (statisticChanges == statisticChanges2)
      {
      }

      else
      {
        statisticChanges3 = [(TIKeyboardState *)self statisticChanges];
        statisticChanges4 = [v5 statisticChanges];
        v157 = [statisticChanges3 isEqual:statisticChanges4];

        if (!v157)
        {
          goto LABEL_116;
        }
      }

      if (self->_supplementalLexiconIdentifier == v5[4])
      {
        canSuggestSupplementalItemsForCurrentSelection = [(TIKeyboardState *)self canSuggestSupplementalItemsForCurrentSelection];
        v12 = canSuggestSupplementalItemsForCurrentSelection ^ [v5 canSuggestSupplementalItemsForCurrentSelection] ^ 1;
LABEL_117:

        goto LABEL_118;
      }
    }

LABEL_116:
    LOBYTE(v12) = 0;
    goto LABEL_117;
  }

  LOBYTE(v12) = 0;
LABEL_118:

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  shiftState = self->_shiftState;
  if (shiftState > 3)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1E6F4CC10[shiftState];
  }

  documentIdentifier = [(TIKeyboardState *)self documentIdentifier];
  [v3 appendFormat:@"; documentIdentifier = %@", documentIdentifier];

  clientIdentifier = [(TIKeyboardState *)self clientIdentifier];
  [v3 appendFormat:@"; clientIdentifier = %@", clientIdentifier];

  inputMode = [(TIKeyboardState *)self inputMode];
  [v3 appendFormat:@"; inputMode = %@", inputMode];

  auxiliaryInputModeLanguages = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
  [v3 appendFormat:@"; auxiliaryInputModeLanguages = %@", auxiliaryInputModeLanguages];

  recipientIdentifier = [(TIKeyboardState *)self recipientIdentifier];
  [v3 appendFormat:@"; recipientIdentifier = %@", recipientIdentifier];

  inputContextHistory = [(TIKeyboardState *)self inputContextHistory];
  [v3 appendFormat:@"; inputContextHistory = %@", inputContextHistory];

  keyLayout = [(TIKeyboardState *)self keyLayout];
  [v3 appendFormat:@"; keyLayout = %@", keyLayout];

  [v3 appendFormat:@"; shiftState = %s", v5];
  layoutState = [(TIKeyboardState *)self layoutState];
  [v3 appendFormat:@"; layoutState = %@", layoutState];

  documentState = [(TIKeyboardState *)self documentState];
  [v3 appendFormat:@"; documentState = %@", documentState];

  attributedDocumentState = [(TIKeyboardState *)self attributedDocumentState];

  if (attributedDocumentState)
  {
    attributedDocumentState2 = [(TIKeyboardState *)self attributedDocumentState];
    [v3 appendFormat:@"; attributedDocumentState = %@", attributedDocumentState2];
  }

  secureCandidateRenderTraits = [(TIKeyboardState *)self secureCandidateRenderTraits];
  [v3 appendFormat:@"; secureCandidateRenderTraits = %@", secureCandidateRenderTraits];

  eventAuthenticationMessage = [(TIKeyboardState *)self eventAuthenticationMessage];
  [v3 appendFormat:@"; eventAuthenticationMessage = %@", eventAuthenticationMessage];

  inputForMarkedText = [(TIKeyboardState *)self inputForMarkedText];
  [v3 appendFormat:@"; inputForMarkedText = %@", inputForMarkedText];

  searchStringForMarkedText = [(TIKeyboardState *)self searchStringForMarkedText];
  [v3 appendFormat:@"; searchStringForMarkedText = %@", searchStringForMarkedText];

  currentCandidate = [(TIKeyboardState *)self currentCandidate];
  [v3 appendFormat:@"; currentCandidate = %@", currentCandidate];

  currentCandidate2 = [(TIKeyboardState *)self currentCandidate];

  if (currentCandidate2)
  {
    if ([(TIKeyboardState *)self userSelectedCurrentCandidate])
    {
      v23 = "YES";
    }

    else
    {
      v23 = "NO";
    }

    [v3 appendFormat:@"; userSelectedCurrentCandidate = %s", v23];
  }

  if ([(TIKeyboardState *)self shouldSkipCandidateSelection])
  {
    v24 = "YES";
  }

  else
  {
    v24 = "NO";
  }

  [v3 appendFormat:@"; shouldSkipCandidateSelection = %s", v24];
  if ([(TIKeyboardState *)self suppressingCandidateSelection])
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  [v3 appendFormat:@"; suppressingCandidateSelection = %s", v25];
  if ([(TIKeyboardState *)self needsCandidateMetadata])
  {
    v26 = "YES";
  }

  else
  {
    v26 = "NO";
  }

  [v3 appendFormat:@"; needsCandidateMetadata = %s", v26];
  if ([(TIKeyboardState *)self keyboardEventsLagging])
  {
    v27 = "YES";
  }

  else
  {
    v27 = "NO";
  }

  [v3 appendFormat:@"; keyboardEventsLagging = %s", v27];
  if ([(TIKeyboardState *)self hardwareKeyboardMode])
  {
    v28 = "YES";
  }

  else
  {
    v28 = "NO";
  }

  [v3 appendFormat:@"; hardwareKeyboardMode = %s", v28];
  if ([(TIKeyboardState *)self splitKeyboardMode])
  {
    v29 = "YES";
  }

  else
  {
    v29 = "NO";
  }

  [v3 appendFormat:@"; splitKeyboardMode = %s", v29];
  if ([(TIKeyboardState *)self floatingKeyboardMode])
  {
    v30 = "YES";
  }

  else
  {
    v30 = "NO";
  }

  [v3 appendFormat:@"; floatingKeyboardMode = %s", v30];
  if ([(TIKeyboardState *)self wordLearningEnabled])
  {
    v31 = "YES";
  }

  else
  {
    v31 = "NO";
  }

  [v3 appendFormat:@"; wordLearningEnabled = %s", v31];
  if ([(TIKeyboardState *)self autocorrectionEnabled])
  {
    v32 = "YES";
  }

  else
  {
    v32 = "NO";
  }

  [v3 appendFormat:@"; autocorrectionEnabled = %s", v32];
  imageSuggestionEnabled = [(TIKeyboardState *)self imageSuggestionEnabled];
  v34 = @"NO";
  if (imageSuggestionEnabled)
  {
    v34 = @"YES";
  }

  [v3 appendFormat:@"; imageSuggestionEnabled = %@", v34];
  if ([(TIKeyboardState *)self shortcutConversionEnabled])
  {
    v35 = "YES";
  }

  else
  {
    v35 = "NO";
  }

  [v3 appendFormat:@"; shortcutConversionEnabled = %s", v35];
  if ([(TIKeyboardState *)self omitEmojiCandidates])
  {
    v36 = "YES";
  }

  else
  {
    v36 = "NO";
  }

  [v3 appendFormat:@"; omitEmojiCandidates = %s", v36];
  if ([(TIKeyboardState *)self emojiSearchMode])
  {
    v37 = "YES";
  }

  else
  {
    v37 = "NO";
  }

  [v3 appendFormat:@"; emojiSearchMode = %s", v37];
  if ([(TIKeyboardState *)self emojiPopoverMode])
  {
    v38 = "YES";
  }

  else
  {
    v38 = "NO";
  }

  [v3 appendFormat:@"; emojiPopoverMode = %s", v38];
  if ([(TIKeyboardState *)self autocapitalizationEnabled])
  {
    v39 = "YES";
  }

  else
  {
    v39 = "NO";
  }

  [v3 appendFormat:@"; autocapitalizationEnabled = %s", v39];
  if ([(TIKeyboardState *)self inlineCompletionEnabled])
  {
    v40 = "YES";
  }

  else
  {
    v40 = "NO";
  }

  [v3 appendFormat:@"; inlineCompletionEnabled = %s", v40];
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", textInputTraits];

  responseContext = [(TIKeyboardState *)self responseContext];
  [v3 appendFormat:@"; responseContext = %@", responseContext];

  supportedPayloadIds = [(TIKeyboardState *)self supportedPayloadIds];

  if (supportedPayloadIds)
  {
    supportedPayloadIds2 = [(TIKeyboardState *)self supportedPayloadIds];
    [v3 appendFormat:@"; supportedPayloadIds = %@", supportedPayloadIds2];
  }

  if ([(TIKeyboardState *)self autocorrectionListUIDisplayed])
  {
    v45 = "YES";
  }

  else
  {
    v45 = "NO";
  }

  [v3 appendFormat:@"; autocorrectionListUIDisplayed = %s", v45];
  if ([(TIKeyboardState *)self autocorrectionListUIAutoDisplayMode])
  {
    v46 = "YES";
  }

  else
  {
    v46 = "NO";
  }

  [v3 appendFormat:@"; autocorrectionListUIAutoDisplayMode = %s", v46];
  if ([(TIKeyboardState *)self canSendCurrentLocation])
  {
    v47 = "YES";
  }

  else
  {
    v47 = "NO";
  }

  [v3 appendFormat:@"; canSendCurrentLocation = %s", v47];
  if ([(TIKeyboardState *)self isScreenLocked])
  {
    v48 = "YES";
  }

  else
  {
    v48 = "NO";
  }

  [v3 appendFormat:@"; isScreenLocked = %s", v48];
  if ([(TIKeyboardState *)self longPredictionListEnabled])
  {
    v49 = "YES";
  }

  else
  {
    v49 = "NO";
  }

  [v3 appendFormat:@"; longPredictionListEnabled = %s", v49];
  if ([(TIKeyboardState *)self needAutofill])
  {
    v50 = "YES";
  }

  else
  {
    v50 = "NO";
  }

  [v3 appendFormat:@"; needAutofill = %s", v50];
  [v3 appendFormat:@"; autofillMode = %ld", -[TIKeyboardState autofillMode](self, "autofillMode")];
  [v3 appendFormat:@"; autofillSubMode = %ld", -[TIKeyboardState autofillSubMode](self, "autofillSubMode")];
  if ([(TIKeyboardState *)self needOneTimeCodeAutofill])
  {
    v51 = "YES";
  }

  else
  {
    v51 = "NO";
  }

  [v3 appendFormat:@"; needOneTimeCodeAutofill = %s", v51];
  if ([(TIKeyboardState *)self needCellularAutofill])
  {
    v52 = "YES";
  }

  else
  {
    v52 = "NO";
  }

  [v3 appendFormat:@"; needCellularAutofill = %s", v52];
  autofillContext = [(TIKeyboardState *)self autofillContext];

  if (autofillContext)
  {
    autofillContext2 = [(TIKeyboardState *)self autofillContext];
    [v3 appendFormat:@"; autofillContext = %@", autofillContext2];
  }

  statisticChanges = [(TIKeyboardState *)self statisticChanges];

  if (statisticChanges)
  {
    statisticChanges2 = [(TIKeyboardState *)self statisticChanges];
    [v3 appendFormat:@"; statisticChanges = %@", statisticChanges2];
  }

  [v3 appendFormat:@"; supplementalLexiconIdentifier = %llu", self->_supplementalLexiconIdentifier];
  if ([(TIKeyboardState *)self canSuggestSupplementalItemsForCurrentSelection])
  {
    v57 = "YES";
  }

  else
  {
    v57 = "NO";
  }

  [v3 appendFormat:@"; canSuggestSupplementalItemsForCurrentSelection = %s", v57];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[TIKeyboardState allocWithZone:](TIKeyboardState init];
  objc_storeStrong(&v5->_documentIdentifier, self->_documentIdentifier);
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  clientIdentifier = v5->_clientIdentifier;
  v5->_clientIdentifier = v6;

  v8 = [(NSString *)self->_inputMode copyWithZone:zone];
  inputMode = v5->_inputMode;
  v5->_inputMode = v8;

  v10 = [(NSArray *)self->_auxiliaryInputModeLanguages copyWithZone:zone];
  auxiliaryInputModeLanguages = v5->_auxiliaryInputModeLanguages;
  v5->_auxiliaryInputModeLanguages = v10;

  v12 = [(NSString *)self->_recipientIdentifier copyWithZone:zone];
  recipientIdentifier = v5->_recipientIdentifier;
  v5->_recipientIdentifier = v12;

  v14 = [(TIInputContextHistory *)self->_inputContextHistory copyWithZone:zone];
  inputContextHistory = v5->_inputContextHistory;
  v5->_inputContextHistory = v14;

  objc_storeStrong(&v5->_keyLayout, self->_keyLayout);
  v16 = [(TIKeyboardLayoutState *)self->_layoutState copyWithZone:zone];
  layoutState = v5->_layoutState;
  v5->_layoutState = v16;

  objc_storeStrong(&v5->_documentState, self->_documentState);
  objc_storeStrong(&v5->_attributedDocumentState, self->_attributedDocumentState);
  v18 = [(TIKeyboardSecureCandidateRenderTraits *)self->_secureCandidateRenderTraits copyWithZone:zone];
  secureCandidateRenderTraits = v5->_secureCandidateRenderTraits;
  v5->_secureCandidateRenderTraits = v18;

  v20 = [(BKSHIDEventAuthenticationMessage *)self->_eventAuthenticationMessage copyWithZone:zone];
  eventAuthenticationMessage = v5->_eventAuthenticationMessage;
  v5->_eventAuthenticationMessage = v20;

  v22 = [(NSString *)self->_inputForMarkedText copyWithZone:zone];
  inputForMarkedText = v5->_inputForMarkedText;
  v5->_inputForMarkedText = v22;

  v24 = [(NSString *)self->_searchStringForMarkedText copyWithZone:zone];
  searchStringForMarkedText = v5->_searchStringForMarkedText;
  v5->_searchStringForMarkedText = v24;

  v26 = [(TITextInputTraits *)self->_textInputTraits copyWithZone:zone];
  textInputTraits = v5->_textInputTraits;
  v5->_textInputTraits = v26;

  v28 = [(NSString *)self->_responseContext copyWithZone:zone];
  responseContext = v5->_responseContext;
  v5->_responseContext = v28;

  v30 = [(NSArray *)self->_supportedPayloadIds copyWithZone:zone];
  supportedPayloadIds = v5->_supportedPayloadIds;
  v5->_supportedPayloadIds = v30;

  v32 = [(NSDictionary *)self->_autofillContext copyWithZone:zone];
  autofillContext = v5->_autofillContext;
  v5->_autofillContext = v32;

  v34 = [(TIKeyboardCandidate *)self->_currentCandidate copyWithZone:zone];
  currentCandidate = v5->_currentCandidate;
  v5->_currentCandidate = v34;

  v5->_mask.integerValue = self->_mask.integerValue;
  v5->_shiftState = self->_shiftState;
  v5->_autofillMode = self->_autofillMode;
  v5->_autofillSubMode = self->_autofillSubMode;
  v5->_autocorrectionListUIState.integerValue = self->_autocorrectionListUIState.integerValue;
  v36 = [(NSArray *)self->_statisticChanges copyWithZone:zone];
  statisticChanges = v5->_statisticChanges;
  v5->_statisticChanges = v36;

  v5->_supplementalLexiconIdentifier = self->_supplementalLexiconIdentifier;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [coderCopy encodeObject:documentIdentifier forKey:@"documentIdentifier"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  inputMode = self->_inputMode;
  if (inputMode)
  {
    [coderCopy encodeObject:inputMode forKey:@"inputMode"];
  }

  auxiliaryInputModeLanguages = self->_auxiliaryInputModeLanguages;
  if (auxiliaryInputModeLanguages)
  {
    [coderCopy encodeObject:auxiliaryInputModeLanguages forKey:@"inputModeLanguages"];
  }

  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [coderCopy encodeObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  inputContextHistory = self->_inputContextHistory;
  if (inputContextHistory)
  {
    [coderCopy encodeObject:inputContextHistory forKey:@"inputContextHistory"];
  }

  keyLayout = self->_keyLayout;
  if (keyLayout)
  {
    [coderCopy encodeObject:keyLayout forKey:@"keyLayout"];
  }

  layoutState = self->_layoutState;
  if (layoutState)
  {
    [coderCopy encodeObject:layoutState forKey:@"layoutState"];
  }

  documentState = self->_documentState;
  if (documentState)
  {
    [coderCopy encodeObject:documentState forKey:@"documentState"];
  }

  attributedDocumentState = self->_attributedDocumentState;
  if (attributedDocumentState)
  {
    v14 = [(TIAttributedDocumentState *)attributedDocumentState documentStateWithAttributeIterator:&__block_literal_global_7674];
    [coderCopy encodeObject:v14 forKey:@"attributedDocumentState"];
  }

  secureCandidateRenderTraits = self->_secureCandidateRenderTraits;
  if (secureCandidateRenderTraits)
  {
    [coderCopy encodeObject:secureCandidateRenderTraits forKey:@"secureCandidateRenderTraits"];
  }

  if (self->_eventAuthenticationMessage)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [coderCopy encodeObject:self->_eventAuthenticationMessage forKey:@"eventAuthenticationMessage"];
    }
  }

  inputForMarkedText = self->_inputForMarkedText;
  if (inputForMarkedText)
  {
    [coderCopy encodeObject:inputForMarkedText forKey:@"inputForMarkedText"];
  }

  searchStringForMarkedText = self->_searchStringForMarkedText;
  if (searchStringForMarkedText)
  {
    [coderCopy encodeObject:searchStringForMarkedText forKey:@"searchStringForMarkedText"];
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [coderCopy encodeObject:textInputTraits forKey:@"textInputTraits"];
  }

  responseContext = self->_responseContext;
  if (responseContext)
  {
    [coderCopy encodeObject:responseContext forKey:@"responseContext"];
  }

  supportedPayloadIds = self->_supportedPayloadIds;
  if (supportedPayloadIds)
  {
    [coderCopy encodeObject:supportedPayloadIds forKey:@"supportedPayloadIds"];
  }

  autofillContext = self->_autofillContext;
  if (autofillContext)
  {
    [coderCopy encodeObject:autofillContext forKey:@"autofillContext"];
  }

  currentCandidate = self->_currentCandidate;
  if (currentCandidate)
  {
    [coderCopy encodeObject:currentCandidate forKey:@"currentCandidate"];
  }

  integerValue = self->_mask.integerValue;
  if (integerValue)
  {
    [coderCopy encodeInteger:integerValue forKey:@"flags"];
  }

  shiftState = self->_shiftState;
  if (shiftState)
  {
    [coderCopy encodeInteger:shiftState forKey:@"shiftState"];
  }

  autofillMode = self->_autofillMode;
  if (autofillMode)
  {
    [coderCopy encodeInteger:autofillMode forKey:@"autofillMode"];
  }

  autofillSubMode = self->_autofillSubMode;
  if (autofillSubMode)
  {
    [coderCopy encodeInteger:autofillSubMode forKey:@"autofillSubMode"];
  }

  v27 = self->_autocorrectionListUIState.integerValue;
  if (v27)
  {
    [coderCopy encodeInteger:v27 forKey:@"autocorrectionListUIState"];
  }

  statisticChanges = self->_statisticChanges;
  if (statisticChanges)
  {
    [coderCopy encodeObject:statisticChanges forKey:@"statisticChanges"];
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_supplementalLexiconIdentifier];
  [coderCopy encodeObject:v29 forKey:@"supplementalLexiconIdentifier"];
}

id __35__TIKeyboardState_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__TIKeyboardState_encodeWithCoder___block_invoke_2;
  v6[3] = &unk_1E6F4CBF0;
  v6[4] = &v7;
  v2 = a2;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  if (*(v8 + 24))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__TIKeyboardState_encodeWithCoder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([v6 conformsToProtocol:&unk_1EF7DD778] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[TIKeyboardState encodeWithCoder:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s  TIKeyboardState with TIAttributedDocumentState: non-serializable attribute encountered: %@", &v7, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (TIKeyboardState)initWithCoder:(id)coder
{
  v65[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = TIKeyboardState;
  v5 = [(TIKeyboardState *)&v61 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentIdentifier"];
    documentIdentifier = v5->_documentIdentifier;
    v5->_documentIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v10;

    v12 = MEMORY[0x1E695DFD8];
    v65[0] = objc_opt_class();
    v65[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"inputModeLanguages"];
    auxiliaryInputModeLanguages = v5->_auxiliaryInputModeLanguages;
    v5->_auxiliaryInputModeLanguages = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputContextHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutState"];
    layoutState = v5->_layoutState;
    v5->_layoutState = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedDocumentState"];
    attributedDocumentState = v5->_attributedDocumentState;
    v5->_attributedDocumentState = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateRenderTraits"];
    secureCandidateRenderTraits = v5->_secureCandidateRenderTraits;
    v5->_secureCandidateRenderTraits = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventAuthenticationMessage"];
    eventAuthenticationMessage = v5->_eventAuthenticationMessage;
    v5->_eventAuthenticationMessage = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputForMarkedText"];
    inputForMarkedText = v5->_inputForMarkedText;
    v5->_inputForMarkedText = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchStringForMarkedText"];
    searchStringForMarkedText = v5->_searchStringForMarkedText;
    v5->_searchStringForMarkedText = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textInputTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseContext"];
    responseContext = v5->_responseContext;
    v5->_responseContext = v39;

    v41 = MEMORY[0x1E695DFD8];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v43 = [v41 setWithArray:v42];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"supportedPayloadIds"];
    supportedPayloadIds = v5->_supportedPayloadIds;
    v5->_supportedPayloadIds = v44;

    v46 = MEMORY[0x1E695DFD8];
    v63[0] = objc_opt_class();
    v63[1] = objc_opt_class();
    v63[2] = objc_opt_class();
    v63[3] = objc_opt_class();
    v63[4] = objc_opt_class();
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:5];
    v48 = [v46 setWithArray:v47];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"autofillContext"];
    autofillContext = v5->_autofillContext;
    v5->_autofillContext = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentCandidate"];
    currentCandidate = v5->_currentCandidate;
    v5->_currentCandidate = v51;

    v5->_mask.integerValue = [coderCopy decodeIntegerForKey:@"flags"];
    v5->_shiftState = [coderCopy decodeIntegerForKey:@"shiftState"];
    v5->_autofillMode = [coderCopy decodeIntegerForKey:@"autofillMode"];
    v5->_autofillSubMode = [coderCopy decodeIntegerForKey:@"autofillSubMode"];
    v5->_autocorrectionListUIState.integerValue = [coderCopy decodeIntegerForKey:@"autocorrectionListUIState"];
    v53 = MEMORY[0x1E695DFD8];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v62[2] = objc_opt_class();
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
    v55 = [v53 setWithArray:v54];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"statisticChanges"];
    statisticChanges = v5->_statisticChanges;
    v5->_statisticChanges = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalLexiconIdentifier"];
    v5->_supplementalLexiconIdentifier = [v58 unsignedLongLongValue];

    v59 = v5;
  }

  return v5;
}

- (BOOL)shouldOutputFullwidthSpace
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:@"SmartFullwidthSpace"];

  documentState = [(TIKeyboardState *)self documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (v4)
  {
    if ([contextBeforeInput length])
    {
      v7 = [contextBeforeInput hasSuffix:@" "];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [whitespaceAndNewlineCharacterSet longCharacterIsMember:{objc_msgSend(contextBeforeInput, "_lastLongCharacter")}];

      v10 = (v7 ^ 1) & (v9 | [contextBeforeInput _endsWithHalfwidth] ^ 1);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)setNeedCellularAutofill:(BOOL)autofill
{
  if (autofill)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFDFFFFFF | v3);
}

- (void)setNeedOneTimeCodeAutofill:(BOOL)autofill
{
  if (autofill)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFDFFFF | v3);
}

- (void)setNeedAutofill:(BOOL)autofill
{
  if (autofill)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFEFFFF | v3);
}

- (void)setLongPredictionListEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFF7FFF | v3);
}

- (void)setIsScreenLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFBFFF | v3);
}

- (void)setCanSendCurrentLocation:(BOOL)location
{
  if (location)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFDFFF | v3);
}

- (void)setAutocorrectionListUIAutoDisplayMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOBYTE(self->_autocorrectionListUIState.integerValue) = self->_autocorrectionListUIState.integerValue & 0xFD | v3;
}

- (void)setSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  [textInputTraits setSecureTextEntry:entryCopy];
}

- (void)setKeyboardType:(unint64_t)type
{
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  [textInputTraits setKeyboardType:type];
}

- (unint64_t)keyboardType
{
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  return keyboardType;
}

- (void)setAutocapitalizationType:(unint64_t)type
{
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  textInputTraits = [(TIKeyboardState *)self textInputTraits];
  [textInputTraits setAutocapitalizationType:type];
}

- (void)_createTextInputTraitsIfNecessary
{
  if (!self->_textInputTraits)
  {
    v4 = objc_alloc_init(TITextInputTraits);
    textInputTraits = self->_textInputTraits;
    self->_textInputTraits = v4;

    MEMORY[0x1EEE66BB8](v4, textInputTraits);
  }
}

- (void)setInlineCompletionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFF7FFFFF | v3);
}

- (void)setAutocapitalizationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFEFFF | v3);
}

- (void)setCandidateSelectionPredictionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFF7FF | v3);
}

- (void)setShortcutConversionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFBFF | v3);
}

- (void)setImageSuggestionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFEFFFFFF | v3);
}

- (void)setAutocorrectionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFDFF | v3);
}

- (void)setEmojiPopoverMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFDFFFFF | v3);
}

- (void)setEmojiSearchMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFEFFFFF | v3);
}

- (void)setOmitEmojiCandidates:(BOOL)candidates
{
  if (candidates)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFF7FFFF | v3);
}

- (void)setWordLearningEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFEFF | v3);
}

- (void)setLandscapeOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFBFFFF | v3);
}

- (void)setFloatingKeyboardMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFF7F | v3);
}

- (void)setSplitKeyboardMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFBF | v3);
}

- (void)setHardwareKeyboardMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFDF | v3);
}

- (void)setKeyboardEventsLagging:(BOOL)lagging
{
  if (lagging)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFEF | v3);
}

- (void)setNeedsCandidateMetadata:(BOOL)metadata
{
  if (metadata)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFF7 | v3);
}

- (void)setSuppressingCandidateSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFB | v3);
}

- (void)setShouldSkipCandidateSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFD | v3);
}

- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFBFFFFF | v3);
}

@end