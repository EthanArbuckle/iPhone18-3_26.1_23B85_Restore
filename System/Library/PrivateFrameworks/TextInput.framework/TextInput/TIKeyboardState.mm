@interface TIKeyboardState
- (BOOL)isEqual:(id)a3;
- (BOOL)secureTextEntry;
- (BOOL)shouldOutputFullwidthSpace;
- (NSString)recipientIdentifier;
- (NSString)responseContext;
- (TIKeyboardState)init;
- (TIKeyboardState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)autocapitalizationType;
- (unint64_t)keyboardType;
- (void)_createTextInputTraitsIfNecessary;
- (void)encodeWithCoder:(id)a3;
- (void)setAutocapitalizationEnabled:(BOOL)a3;
- (void)setAutocapitalizationType:(unint64_t)a3;
- (void)setAutocorrectionEnabled:(BOOL)a3;
- (void)setAutocorrectionListUIAutoDisplayMode:(BOOL)a3;
- (void)setCanSendCurrentLocation:(BOOL)a3;
- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)a3;
- (void)setCandidateSelectionPredictionEnabled:(BOOL)a3;
- (void)setEmojiPopoverMode:(BOOL)a3;
- (void)setEmojiSearchMode:(BOOL)a3;
- (void)setFloatingKeyboardMode:(BOOL)a3;
- (void)setHardwareKeyboardMode:(BOOL)a3;
- (void)setImageSuggestionEnabled:(BOOL)a3;
- (void)setInlineCompletionEnabled:(BOOL)a3;
- (void)setIsScreenLocked:(BOOL)a3;
- (void)setKeyboardEventsLagging:(BOOL)a3;
- (void)setKeyboardType:(unint64_t)a3;
- (void)setLandscapeOrientation:(BOOL)a3;
- (void)setLongPredictionListEnabled:(BOOL)a3;
- (void)setNeedAutofill:(BOOL)a3;
- (void)setNeedCellularAutofill:(BOOL)a3;
- (void)setNeedOneTimeCodeAutofill:(BOOL)a3;
- (void)setNeedsCandidateMetadata:(BOOL)a3;
- (void)setOmitEmojiCandidates:(BOOL)a3;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setShortcutConversionEnabled:(BOOL)a3;
- (void)setShouldSkipCandidateSelection:(BOOL)a3;
- (void)setSplitKeyboardMode:(BOOL)a3;
- (void)setSuppressingCandidateSelection:(BOOL)a3;
- (void)setWordLearningEnabled:(BOOL)a3;
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
  v3 = [(TIKeyboardState *)self inputContextHistory];
  v4 = [v3 recipientIdentifiers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(TIKeyboardState *)self inputContextHistory];
    v7 = [v6 recipientIdentifiers];
    v8 = [v7 anyObject];
  }

  else
  {
    v8 = self->_recipientIdentifier;
  }

  return v8;
}

- (NSString)responseContext
{
  v3 = [(TIKeyboardState *)self inputContextHistory];
  v4 = [v3 mostRecentTextEntryIsByMe];

  v5 = [(TIKeyboardState *)self inputContextHistory];
  v6 = [v5 mostRecentNonSenderTextEntry];

  if (v6)
  {
    if (v4)
    {
      responseContext = 0;
    }

    else
    {
      responseContext = v6;
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
  v2 = [(TIKeyboardState *)self textInputTraits];
  v3 = [v2 secureTextEntry];

  return v3;
}

- (unint64_t)autocapitalizationType
{
  v2 = [(TIKeyboardState *)self textInputTraits];
  v3 = [v2 autocapitalizationType];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TIKeyboardState *)self documentIdentifier];
    v7 = [v5 documentIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TIKeyboardState *)self documentIdentifier];
      v10 = [v5 documentIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_116;
      }
    }

    v13 = [(TIKeyboardState *)self clientIdentifier];
    v14 = [v5 clientIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(TIKeyboardState *)self clientIdentifier];
      v18 = [v5 clientIdentifier];
      LODWORD(v16) = [v16 _string:v17 matchesString:v18];

      if (!v16)
      {
        goto LABEL_116;
      }
    }

    v19 = [(TIKeyboardState *)self inputMode];
    v20 = [v5 inputMode];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [(TIKeyboardState *)self inputMode];
      v24 = [v5 inputMode];
      LODWORD(v22) = [v22 _string:v23 matchesString:v24];

      if (!v22)
      {
        goto LABEL_116;
      }
    }

    v25 = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
    v26 = [v5 auxiliaryInputModeLanguages];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
      v29 = [v5 auxiliaryInputModeLanguages];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_116;
      }
    }

    v31 = [(TIKeyboardState *)self recipientIdentifier];
    v32 = [v5 recipientIdentifier];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = [(TIKeyboardState *)self recipientIdentifier];
      v36 = [v5 recipientIdentifier];
      LODWORD(v34) = [v34 _string:v35 matchesString:v36];

      if (!v34)
      {
        goto LABEL_116;
      }
    }

    v37 = [(TIKeyboardState *)self inputContextHistory];
    v38 = [v5 inputContextHistory];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(TIKeyboardState *)self inputContextHistory];
      v41 = [v5 inputContextHistory];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_116;
      }
    }

    v43 = [(TIKeyboardState *)self keyLayout];
    v44 = [v5 keyLayout];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(TIKeyboardState *)self keyLayout];
      v47 = [v5 keyLayout];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_116;
      }
    }

    v49 = [(TIKeyboardState *)self shiftState];
    if (v49 == [v5 shiftState])
    {
      v50 = [(TIKeyboardState *)self layoutState];
      v51 = [v5 layoutState];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(TIKeyboardState *)self layoutState];
        v54 = [v5 layoutState];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_116;
        }
      }

      v56 = [(TIKeyboardState *)self documentState];
      v57 = [v5 documentState];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(TIKeyboardState *)self documentState];
        v60 = [v5 documentState];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_116;
        }
      }

      v62 = [(TIKeyboardState *)self attributedDocumentState];
      v63 = [v5 attributedDocumentState];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(TIKeyboardState *)self attributedDocumentState];
        v66 = [v5 attributedDocumentState];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_116;
        }
      }

      v68 = [(TIKeyboardState *)self secureCandidateRenderTraits];
      v69 = [v5 secureCandidateRenderTraits];
      v70 = v69;
      if (v68 == v69)
      {
      }

      else
      {
        v71 = [(TIKeyboardState *)self secureCandidateRenderTraits];
        v72 = [v5 secureCandidateRenderTraits];
        v73 = [v71 isEqual:v72];

        if (!v73)
        {
          goto LABEL_116;
        }
      }

      v74 = [(TIKeyboardState *)self eventAuthenticationMessage];
      v75 = [v5 eventAuthenticationMessage];
      v76 = v75;
      if (v74 == v75)
      {
      }

      else
      {
        v77 = [(TIKeyboardState *)self eventAuthenticationMessage];
        v78 = [v5 eventAuthenticationMessage];
        v79 = [v77 isEqual:v78];

        if (!v79)
        {
          goto LABEL_116;
        }
      }

      v80 = [(TIKeyboardState *)self inputForMarkedText];
      v81 = [v5 inputForMarkedText];
      v82 = v81;
      if (v80 == v81)
      {
      }

      else
      {
        v83 = MEMORY[0x1E696AEC0];
        v84 = [(TIKeyboardState *)self inputForMarkedText];
        v85 = [v5 inputForMarkedText];
        LODWORD(v83) = [v83 _string:v84 matchesString:v85];

        if (!v83)
        {
          goto LABEL_116;
        }
      }

      v86 = [(TIKeyboardState *)self searchStringForMarkedText];
      v87 = [v5 searchStringForMarkedText];
      v88 = v87;
      if (v86 == v87)
      {
      }

      else
      {
        v89 = MEMORY[0x1E696AEC0];
        v90 = [(TIKeyboardState *)self searchStringForMarkedText];
        v91 = [v5 searchStringForMarkedText];
        LODWORD(v89) = [v89 _string:v90 matchesString:v91];

        if (!v89)
        {
          goto LABEL_116;
        }
      }

      v92 = [(TIKeyboardState *)self currentCandidate];
      v93 = [v5 currentCandidate];
      v94 = v93;
      if (v92 == v93)
      {
      }

      else
      {
        v95 = [(TIKeyboardState *)self currentCandidate];
        v96 = [v5 currentCandidate];
        v97 = [v95 isEqual:v96];

        if (!v97)
        {
          goto LABEL_116;
        }
      }

      v98 = [(TIKeyboardState *)self userSelectedCurrentCandidate];
      if (v98 != [v5 userSelectedCurrentCandidate])
      {
        goto LABEL_116;
      }

      v99 = [(TIKeyboardState *)self shouldSkipCandidateSelection];
      if (v99 != [v5 shouldSkipCandidateSelection])
      {
        goto LABEL_116;
      }

      v100 = [(TIKeyboardState *)self suppressingCandidateSelection];
      if (v100 != [v5 suppressingCandidateSelection])
      {
        goto LABEL_116;
      }

      v101 = [(TIKeyboardState *)self needsCandidateMetadata];
      if (v101 != [v5 needsCandidateMetadata])
      {
        goto LABEL_116;
      }

      v102 = [(TIKeyboardState *)self keyboardEventsLagging];
      if (v102 != [v5 keyboardEventsLagging])
      {
        goto LABEL_116;
      }

      v103 = [(TIKeyboardState *)self hardwareKeyboardMode];
      if (v103 != [v5 hardwareKeyboardMode])
      {
        goto LABEL_116;
      }

      v104 = [(TIKeyboardState *)self splitKeyboardMode];
      if (v104 != [v5 splitKeyboardMode])
      {
        goto LABEL_116;
      }

      v105 = [(TIKeyboardState *)self floatingKeyboardMode];
      if (v105 != [v5 floatingKeyboardMode])
      {
        goto LABEL_116;
      }

      v106 = [(TIKeyboardState *)self landscapeOrientation];
      if (v106 != [v5 landscapeOrientation])
      {
        goto LABEL_116;
      }

      v107 = [(TIKeyboardState *)self wordLearningEnabled];
      if (v107 != [v5 wordLearningEnabled])
      {
        goto LABEL_116;
      }

      v108 = [(TIKeyboardState *)self inlineCompletionEnabled];
      if (v108 != [v5 inlineCompletionEnabled])
      {
        goto LABEL_116;
      }

      v109 = [(TIKeyboardState *)self autocorrectionEnabled];
      if (v109 != [v5 autocorrectionEnabled])
      {
        goto LABEL_116;
      }

      v110 = [(TIKeyboardState *)self imageSuggestionEnabled];
      if (v110 != [v5 imageSuggestionEnabled])
      {
        goto LABEL_116;
      }

      v111 = [(TIKeyboardState *)self omitEmojiCandidates];
      if (v111 != [v5 omitEmojiCandidates])
      {
        goto LABEL_116;
      }

      v112 = [(TIKeyboardState *)self emojiSearchMode];
      if (v112 != [v5 emojiSearchMode])
      {
        goto LABEL_116;
      }

      v113 = [(TIKeyboardState *)self emojiPopoverMode];
      if (v113 != [v5 emojiPopoverMode])
      {
        goto LABEL_116;
      }

      v114 = [(TIKeyboardState *)self shortcutConversionEnabled];
      if (v114 != [v5 shortcutConversionEnabled])
      {
        goto LABEL_116;
      }

      v115 = [(TIKeyboardState *)self candidateSelectionPredictionEnabled];
      if (v115 != [v5 candidateSelectionPredictionEnabled])
      {
        goto LABEL_116;
      }

      v116 = [(TIKeyboardState *)self autocapitalizationEnabled];
      if (v116 != [v5 autocapitalizationEnabled])
      {
        goto LABEL_116;
      }

      v117 = [(TIKeyboardState *)self inlineCompletionEnabled];
      if (v117 != [v5 inlineCompletionEnabled])
      {
        goto LABEL_116;
      }

      v118 = [(TIKeyboardState *)self textInputTraits];
      v119 = [v5 textInputTraits];
      v120 = v119;
      if (v118 == v119)
      {
      }

      else
      {
        v121 = [(TIKeyboardState *)self textInputTraits];
        v122 = [v5 textInputTraits];
        v123 = [v121 isEqual:v122];

        if (!v123)
        {
          goto LABEL_116;
        }
      }

      v124 = [(TIKeyboardState *)self responseContext];
      v125 = [v5 responseContext];
      v126 = v125;
      if (v124 == v125)
      {
      }

      else
      {
        v127 = MEMORY[0x1E696AEC0];
        v128 = [(TIKeyboardState *)self responseContext];
        v129 = [v5 responseContext];
        LODWORD(v127) = [v127 _string:v128 matchesString:v129];

        if (!v127)
        {
          goto LABEL_116;
        }
      }

      v130 = [(TIKeyboardState *)self supportedPayloadIds];
      v131 = [v5 supportedPayloadIds];
      v132 = v131;
      if (v130 == v131)
      {
      }

      else
      {
        v133 = [(TIKeyboardState *)self supportedPayloadIds];
        v134 = [v5 supportedPayloadIds];
        v135 = [v133 isEqual:v134];

        if (!v135)
        {
          goto LABEL_116;
        }
      }

      v136 = [(TIKeyboardState *)self autocorrectionListUIDisplayed];
      if (v136 != [v5 autocorrectionListUIDisplayed])
      {
        goto LABEL_116;
      }

      v137 = [(TIKeyboardState *)self autocorrectionListUIAutoDisplayMode];
      if (v137 != [v5 autocorrectionListUIAutoDisplayMode])
      {
        goto LABEL_116;
      }

      v138 = [(TIKeyboardState *)self canSendCurrentLocation];
      if (v138 != [v5 canSendCurrentLocation])
      {
        goto LABEL_116;
      }

      v139 = [(TIKeyboardState *)self isScreenLocked];
      if (v139 != [v5 isScreenLocked])
      {
        goto LABEL_116;
      }

      v140 = [(TIKeyboardState *)self longPredictionListEnabled];
      if (v140 != [v5 longPredictionListEnabled])
      {
        goto LABEL_116;
      }

      v141 = [(TIKeyboardState *)self needAutofill];
      if (v141 != [v5 needAutofill])
      {
        goto LABEL_116;
      }

      v142 = [(TIKeyboardState *)self autofillMode];
      if (v142 != [v5 autofillMode])
      {
        goto LABEL_116;
      }

      v143 = [(TIKeyboardState *)self autofillSubMode];
      if (v143 != [v5 autofillSubMode])
      {
        goto LABEL_116;
      }

      v144 = [(TIKeyboardState *)self needOneTimeCodeAutofill];
      if (v144 != [v5 needOneTimeCodeAutofill])
      {
        goto LABEL_116;
      }

      v145 = [(TIKeyboardState *)self needCellularAutofill];
      if (v145 != [v5 needCellularAutofill])
      {
        goto LABEL_116;
      }

      v146 = [(TIKeyboardState *)self autofillContext];
      v147 = [v5 autofillContext];
      v148 = v147;
      if (v146 == v147)
      {
      }

      else
      {
        v149 = [(TIKeyboardState *)self autofillContext];
        v150 = [v5 autofillContext];
        v151 = [v149 isEqualToDictionary:v150];

        if (!v151)
        {
          goto LABEL_116;
        }
      }

      v152 = [(TIKeyboardState *)self statisticChanges];
      v153 = [v5 statisticChanges];
      v154 = v153;
      if (v152 == v153)
      {
      }

      else
      {
        v155 = [(TIKeyboardState *)self statisticChanges];
        v156 = [v5 statisticChanges];
        v157 = [v155 isEqual:v156];

        if (!v157)
        {
          goto LABEL_116;
        }
      }

      if (self->_supplementalLexiconIdentifier == v5[4])
      {
        v158 = [(TIKeyboardState *)self canSuggestSupplementalItemsForCurrentSelection];
        v12 = v158 ^ [v5 canSuggestSupplementalItemsForCurrentSelection] ^ 1;
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

  v6 = [(TIKeyboardState *)self documentIdentifier];
  [v3 appendFormat:@"; documentIdentifier = %@", v6];

  v7 = [(TIKeyboardState *)self clientIdentifier];
  [v3 appendFormat:@"; clientIdentifier = %@", v7];

  v8 = [(TIKeyboardState *)self inputMode];
  [v3 appendFormat:@"; inputMode = %@", v8];

  v9 = [(TIKeyboardState *)self auxiliaryInputModeLanguages];
  [v3 appendFormat:@"; auxiliaryInputModeLanguages = %@", v9];

  v10 = [(TIKeyboardState *)self recipientIdentifier];
  [v3 appendFormat:@"; recipientIdentifier = %@", v10];

  v11 = [(TIKeyboardState *)self inputContextHistory];
  [v3 appendFormat:@"; inputContextHistory = %@", v11];

  v12 = [(TIKeyboardState *)self keyLayout];
  [v3 appendFormat:@"; keyLayout = %@", v12];

  [v3 appendFormat:@"; shiftState = %s", v5];
  v13 = [(TIKeyboardState *)self layoutState];
  [v3 appendFormat:@"; layoutState = %@", v13];

  v14 = [(TIKeyboardState *)self documentState];
  [v3 appendFormat:@"; documentState = %@", v14];

  v15 = [(TIKeyboardState *)self attributedDocumentState];

  if (v15)
  {
    v16 = [(TIKeyboardState *)self attributedDocumentState];
    [v3 appendFormat:@"; attributedDocumentState = %@", v16];
  }

  v17 = [(TIKeyboardState *)self secureCandidateRenderTraits];
  [v3 appendFormat:@"; secureCandidateRenderTraits = %@", v17];

  v18 = [(TIKeyboardState *)self eventAuthenticationMessage];
  [v3 appendFormat:@"; eventAuthenticationMessage = %@", v18];

  v19 = [(TIKeyboardState *)self inputForMarkedText];
  [v3 appendFormat:@"; inputForMarkedText = %@", v19];

  v20 = [(TIKeyboardState *)self searchStringForMarkedText];
  [v3 appendFormat:@"; searchStringForMarkedText = %@", v20];

  v21 = [(TIKeyboardState *)self currentCandidate];
  [v3 appendFormat:@"; currentCandidate = %@", v21];

  v22 = [(TIKeyboardState *)self currentCandidate];

  if (v22)
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
  v33 = [(TIKeyboardState *)self imageSuggestionEnabled];
  v34 = @"NO";
  if (v33)
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
  v41 = [(TIKeyboardState *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", v41];

  v42 = [(TIKeyboardState *)self responseContext];
  [v3 appendFormat:@"; responseContext = %@", v42];

  v43 = [(TIKeyboardState *)self supportedPayloadIds];

  if (v43)
  {
    v44 = [(TIKeyboardState *)self supportedPayloadIds];
    [v3 appendFormat:@"; supportedPayloadIds = %@", v44];
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
  v53 = [(TIKeyboardState *)self autofillContext];

  if (v53)
  {
    v54 = [(TIKeyboardState *)self autofillContext];
    [v3 appendFormat:@"; autofillContext = %@", v54];
  }

  v55 = [(TIKeyboardState *)self statisticChanges];

  if (v55)
  {
    v56 = [(TIKeyboardState *)self statisticChanges];
    [v3 appendFormat:@"; statisticChanges = %@", v56];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[TIKeyboardState allocWithZone:](TIKeyboardState init];
  objc_storeStrong(&v5->_documentIdentifier, self->_documentIdentifier);
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  clientIdentifier = v5->_clientIdentifier;
  v5->_clientIdentifier = v6;

  v8 = [(NSString *)self->_inputMode copyWithZone:a3];
  inputMode = v5->_inputMode;
  v5->_inputMode = v8;

  v10 = [(NSArray *)self->_auxiliaryInputModeLanguages copyWithZone:a3];
  auxiliaryInputModeLanguages = v5->_auxiliaryInputModeLanguages;
  v5->_auxiliaryInputModeLanguages = v10;

  v12 = [(NSString *)self->_recipientIdentifier copyWithZone:a3];
  recipientIdentifier = v5->_recipientIdentifier;
  v5->_recipientIdentifier = v12;

  v14 = [(TIInputContextHistory *)self->_inputContextHistory copyWithZone:a3];
  inputContextHistory = v5->_inputContextHistory;
  v5->_inputContextHistory = v14;

  objc_storeStrong(&v5->_keyLayout, self->_keyLayout);
  v16 = [(TIKeyboardLayoutState *)self->_layoutState copyWithZone:a3];
  layoutState = v5->_layoutState;
  v5->_layoutState = v16;

  objc_storeStrong(&v5->_documentState, self->_documentState);
  objc_storeStrong(&v5->_attributedDocumentState, self->_attributedDocumentState);
  v18 = [(TIKeyboardSecureCandidateRenderTraits *)self->_secureCandidateRenderTraits copyWithZone:a3];
  secureCandidateRenderTraits = v5->_secureCandidateRenderTraits;
  v5->_secureCandidateRenderTraits = v18;

  v20 = [(BKSHIDEventAuthenticationMessage *)self->_eventAuthenticationMessage copyWithZone:a3];
  eventAuthenticationMessage = v5->_eventAuthenticationMessage;
  v5->_eventAuthenticationMessage = v20;

  v22 = [(NSString *)self->_inputForMarkedText copyWithZone:a3];
  inputForMarkedText = v5->_inputForMarkedText;
  v5->_inputForMarkedText = v22;

  v24 = [(NSString *)self->_searchStringForMarkedText copyWithZone:a3];
  searchStringForMarkedText = v5->_searchStringForMarkedText;
  v5->_searchStringForMarkedText = v24;

  v26 = [(TITextInputTraits *)self->_textInputTraits copyWithZone:a3];
  textInputTraits = v5->_textInputTraits;
  v5->_textInputTraits = v26;

  v28 = [(NSString *)self->_responseContext copyWithZone:a3];
  responseContext = v5->_responseContext;
  v5->_responseContext = v28;

  v30 = [(NSArray *)self->_supportedPayloadIds copyWithZone:a3];
  supportedPayloadIds = v5->_supportedPayloadIds;
  v5->_supportedPayloadIds = v30;

  v32 = [(NSDictionary *)self->_autofillContext copyWithZone:a3];
  autofillContext = v5->_autofillContext;
  v5->_autofillContext = v32;

  v34 = [(TIKeyboardCandidate *)self->_currentCandidate copyWithZone:a3];
  currentCandidate = v5->_currentCandidate;
  v5->_currentCandidate = v34;

  v5->_mask.integerValue = self->_mask.integerValue;
  v5->_shiftState = self->_shiftState;
  v5->_autofillMode = self->_autofillMode;
  v5->_autofillSubMode = self->_autofillSubMode;
  v5->_autocorrectionListUIState.integerValue = self->_autocorrectionListUIState.integerValue;
  v36 = [(NSArray *)self->_statisticChanges copyWithZone:a3];
  statisticChanges = v5->_statisticChanges;
  v5->_statisticChanges = v36;

  v5->_supplementalLexiconIdentifier = self->_supplementalLexiconIdentifier;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [v30 encodeObject:documentIdentifier forKey:@"documentIdentifier"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v30 encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  inputMode = self->_inputMode;
  if (inputMode)
  {
    [v30 encodeObject:inputMode forKey:@"inputMode"];
  }

  auxiliaryInputModeLanguages = self->_auxiliaryInputModeLanguages;
  if (auxiliaryInputModeLanguages)
  {
    [v30 encodeObject:auxiliaryInputModeLanguages forKey:@"inputModeLanguages"];
  }

  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [v30 encodeObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  inputContextHistory = self->_inputContextHistory;
  if (inputContextHistory)
  {
    [v30 encodeObject:inputContextHistory forKey:@"inputContextHistory"];
  }

  keyLayout = self->_keyLayout;
  if (keyLayout)
  {
    [v30 encodeObject:keyLayout forKey:@"keyLayout"];
  }

  layoutState = self->_layoutState;
  if (layoutState)
  {
    [v30 encodeObject:layoutState forKey:@"layoutState"];
  }

  documentState = self->_documentState;
  if (documentState)
  {
    [v30 encodeObject:documentState forKey:@"documentState"];
  }

  attributedDocumentState = self->_attributedDocumentState;
  if (attributedDocumentState)
  {
    v14 = [(TIAttributedDocumentState *)attributedDocumentState documentStateWithAttributeIterator:&__block_literal_global_7674];
    [v30 encodeObject:v14 forKey:@"attributedDocumentState"];
  }

  secureCandidateRenderTraits = self->_secureCandidateRenderTraits;
  if (secureCandidateRenderTraits)
  {
    [v30 encodeObject:secureCandidateRenderTraits forKey:@"secureCandidateRenderTraits"];
  }

  if (self->_eventAuthenticationMessage)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v30 encodeObject:self->_eventAuthenticationMessage forKey:@"eventAuthenticationMessage"];
    }
  }

  inputForMarkedText = self->_inputForMarkedText;
  if (inputForMarkedText)
  {
    [v30 encodeObject:inputForMarkedText forKey:@"inputForMarkedText"];
  }

  searchStringForMarkedText = self->_searchStringForMarkedText;
  if (searchStringForMarkedText)
  {
    [v30 encodeObject:searchStringForMarkedText forKey:@"searchStringForMarkedText"];
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [v30 encodeObject:textInputTraits forKey:@"textInputTraits"];
  }

  responseContext = self->_responseContext;
  if (responseContext)
  {
    [v30 encodeObject:responseContext forKey:@"responseContext"];
  }

  supportedPayloadIds = self->_supportedPayloadIds;
  if (supportedPayloadIds)
  {
    [v30 encodeObject:supportedPayloadIds forKey:@"supportedPayloadIds"];
  }

  autofillContext = self->_autofillContext;
  if (autofillContext)
  {
    [v30 encodeObject:autofillContext forKey:@"autofillContext"];
  }

  currentCandidate = self->_currentCandidate;
  if (currentCandidate)
  {
    [v30 encodeObject:currentCandidate forKey:@"currentCandidate"];
  }

  integerValue = self->_mask.integerValue;
  if (integerValue)
  {
    [v30 encodeInteger:integerValue forKey:@"flags"];
  }

  shiftState = self->_shiftState;
  if (shiftState)
  {
    [v30 encodeInteger:shiftState forKey:@"shiftState"];
  }

  autofillMode = self->_autofillMode;
  if (autofillMode)
  {
    [v30 encodeInteger:autofillMode forKey:@"autofillMode"];
  }

  autofillSubMode = self->_autofillSubMode;
  if (autofillSubMode)
  {
    [v30 encodeInteger:autofillSubMode forKey:@"autofillSubMode"];
  }

  v27 = self->_autocorrectionListUIState.integerValue;
  if (v27)
  {
    [v30 encodeInteger:v27 forKey:@"autocorrectionListUIState"];
  }

  statisticChanges = self->_statisticChanges;
  if (statisticChanges)
  {
    [v30 encodeObject:statisticChanges forKey:@"statisticChanges"];
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_supplementalLexiconIdentifier];
  [v30 encodeObject:v29 forKey:@"supplementalLexiconIdentifier"];
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

- (TIKeyboardState)initWithCoder:(id)a3
{
  v65[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = TIKeyboardState;
  v5 = [(TIKeyboardState *)&v61 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentIdentifier"];
    documentIdentifier = v5->_documentIdentifier;
    v5->_documentIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v10;

    v12 = MEMORY[0x1E695DFD8];
    v65[0] = objc_opt_class();
    v65[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"inputModeLanguages"];
    auxiliaryInputModeLanguages = v5->_auxiliaryInputModeLanguages;
    v5->_auxiliaryInputModeLanguages = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputContextHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutState"];
    layoutState = v5->_layoutState;
    v5->_layoutState = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedDocumentState"];
    attributedDocumentState = v5->_attributedDocumentState;
    v5->_attributedDocumentState = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateRenderTraits"];
    secureCandidateRenderTraits = v5->_secureCandidateRenderTraits;
    v5->_secureCandidateRenderTraits = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventAuthenticationMessage"];
    eventAuthenticationMessage = v5->_eventAuthenticationMessage;
    v5->_eventAuthenticationMessage = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputForMarkedText"];
    inputForMarkedText = v5->_inputForMarkedText;
    v5->_inputForMarkedText = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchStringForMarkedText"];
    searchStringForMarkedText = v5->_searchStringForMarkedText;
    v5->_searchStringForMarkedText = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textInputTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseContext"];
    responseContext = v5->_responseContext;
    v5->_responseContext = v39;

    v41 = MEMORY[0x1E695DFD8];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v43 = [v41 setWithArray:v42];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"supportedPayloadIds"];
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
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"autofillContext"];
    autofillContext = v5->_autofillContext;
    v5->_autofillContext = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentCandidate"];
    currentCandidate = v5->_currentCandidate;
    v5->_currentCandidate = v51;

    v5->_mask.integerValue = [v4 decodeIntegerForKey:@"flags"];
    v5->_shiftState = [v4 decodeIntegerForKey:@"shiftState"];
    v5->_autofillMode = [v4 decodeIntegerForKey:@"autofillMode"];
    v5->_autofillSubMode = [v4 decodeIntegerForKey:@"autofillSubMode"];
    v5->_autocorrectionListUIState.integerValue = [v4 decodeIntegerForKey:@"autocorrectionListUIState"];
    v53 = MEMORY[0x1E695DFD8];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v62[2] = objc_opt_class();
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
    v55 = [v53 setWithArray:v54];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"statisticChanges"];
    statisticChanges = v5->_statisticChanges;
    v5->_statisticChanges = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalLexiconIdentifier"];
    v5->_supplementalLexiconIdentifier = [v58 unsignedLongLongValue];

    v59 = v5;
  }

  return v5;
}

- (BOOL)shouldOutputFullwidthSpace
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:@"SmartFullwidthSpace"];

  v5 = [(TIKeyboardState *)self documentState];
  v6 = [v5 contextBeforeInput];

  if (v4)
  {
    if ([v6 length])
    {
      v7 = [v6 hasSuffix:@" "];
      v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [v8 longCharacterIsMember:{objc_msgSend(v6, "_lastLongCharacter")}];

      v10 = (v7 ^ 1) & (v9 | [v6 _endsWithHalfwidth] ^ 1);
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

- (void)setNeedCellularAutofill:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFDFFFFFF | v3);
}

- (void)setNeedOneTimeCodeAutofill:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFDFFFF | v3);
}

- (void)setNeedAutofill:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFEFFFF | v3);
}

- (void)setLongPredictionListEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFF7FFF | v3);
}

- (void)setIsScreenLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFBFFF | v3);
}

- (void)setCanSendCurrentLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFDFFF | v3);
}

- (void)setAutocorrectionListUIAutoDisplayMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOBYTE(self->_autocorrectionListUIState.integerValue) = self->_autocorrectionListUIState.integerValue & 0xFD | v3;
}

- (void)setSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  v5 = [(TIKeyboardState *)self textInputTraits];
  [v5 setSecureTextEntry:v3];
}

- (void)setKeyboardType:(unint64_t)a3
{
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  v5 = [(TIKeyboardState *)self textInputTraits];
  [v5 setKeyboardType:a3];
}

- (unint64_t)keyboardType
{
  v2 = [(TIKeyboardState *)self textInputTraits];
  v3 = [v2 keyboardType];

  return v3;
}

- (void)setAutocapitalizationType:(unint64_t)a3
{
  [(TIKeyboardState *)self _createTextInputTraitsIfNecessary];
  v5 = [(TIKeyboardState *)self textInputTraits];
  [v5 setAutocapitalizationType:a3];
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

- (void)setInlineCompletionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFF7FFFFF | v3);
}

- (void)setAutocapitalizationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFEFFF | v3);
}

- (void)setCandidateSelectionPredictionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFF7FF | v3);
}

- (void)setShortcutConversionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFBFF | v3);
}

- (void)setImageSuggestionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFEFFFFFF | v3);
}

- (void)setAutocorrectionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFDFF | v3);
}

- (void)setEmojiPopoverMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFDFFFFF | v3);
}

- (void)setEmojiSearchMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFEFFFFF | v3);
}

- (void)setOmitEmojiCandidates:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFF7FFFF | v3);
}

- (void)setWordLearningEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFEFF | v3);
}

- (void)setLandscapeOrientation:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFBFFFF | v3);
}

- (void)setFloatingKeyboardMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFF7F | v3);
}

- (void)setSplitKeyboardMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFBF | v3);
}

- (void)setHardwareKeyboardMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFDF | v3);
}

- (void)setKeyboardEventsLagging:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFEF | v3);
}

- (void)setNeedsCandidateMetadata:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFF7 | v3);
}

- (void)setSuppressingCandidateSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFB | v3);
}

- (void)setShouldSkipCandidateSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFD | v3);
}

- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)a3
{
  if (a3)
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