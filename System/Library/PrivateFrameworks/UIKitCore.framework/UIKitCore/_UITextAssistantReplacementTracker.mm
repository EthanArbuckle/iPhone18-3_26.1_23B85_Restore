@interface _UITextAssistantReplacementTracker
- (BOOL)hasProcessedOriginalRange;
- (BOOL)selectRewriteMatchingUndoRedoReplacementText:(id)a3;
- (NSAttributedString)activeText;
- (NSAttributedString)processedOriginalText;
- (NSAttributedString)unprocessedOriginalText;
- (_NSRange)activeCharacterRange;
- (_NSRange)activeFullCharacterRange;
- (_NSRange)activeUnprocessedCharacterRange;
- (_NSRange)finalCurrentChunkCharacterRange;
- (_NSRange)initialCurrentChunkCharacterRange;
- (_NSRange)originalCharacterRange;
- (_NSRange)processedOriginalCharacterRange;
- (_NSRange)rewrittenCharacterRange;
- (_NSRange)sourceRangeForChunkFromDelivery:(id)a3;
- (_NSRange)targetRangeForChunkFromDelivery:(id)a3;
- (id)assembledRewrittenTextToDelivery:(id)a3 matchingInitialDeliveries:(BOOL)a4;
- (id)description;
- (id)initFromSessionContext:(id)a3 offsetForSessionRange:(unint64_t)a4 withProofreadingController:(id)a5;
- (id)newEditTracker;
- (id)nextDeliveryForDelivery:(id)a3;
- (id)originalChunkTextForDelivery:(id)a3;
- (id)recordRewrittenText:(id)a3 forRange:(_NSRange)a4 withContext:(id)a5 finished:(BOOL)a6;
- (id)rewrittenChunkTextForDelivery:(id)a3;
- (uint64_t)currentChunkCharacterRangeUpdatingLength:(uint64_t)a1;
- (uint64_t)rangeForChunkFromDelivery:(int)a3 useOriginalLength:;
- (void)setCompositionSessionState:(int64_t)a3;
- (void)setOffsetForSessionRange:(unint64_t)a3;
- (void)updateReplacementChunkForDeliveryID:(id)a3 newText:(id)a4;
@end

@implementation _UITextAssistantReplacementTracker

- (id)newEditTracker
{
  v3 = [off_1E70ECC08 alloc];
  length = self->_sessionContextRange.length;

  return [v3 initWithContextRange:{0, length}];
}

- (id)initFromSessionContext:(id)a3 offsetForSessionRange:(unint64_t)a4 withProofreadingController:(id)a5
{
  v9 = a3;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = _UITextAssistantReplacementTracker;
  v11 = [(_UITextAssistantReplacementTracker *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalContext, a3);
    v13 = [v9 uuid];
    contextUUID = v12->_contextUUID;
    v12->_contextUUID = v13;

    v12->_offsetForSessionRange = a4;
    v12->_sessionContextRange.location = [v9 range];
    v12->_sessionContextRange.length = v15;
    v16 = [v9 attributedText];
    v17 = [v16 attributedSubstringFromRange:{v12->_sessionContextRange.location, v12->_sessionContextRange.length}];
    originalText = v12->_originalText;
    v12->_originalText = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    rewrittenText = v12->_rewrittenText;
    v12->_rewrittenText = v19;

    v12->_selectedRewriteIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v12->_proofreadingController, a5);
    v12->_proofreading = v10 != 0;
    if (v10)
    {
      v12->_compositionSessionState = -1;
    }

    v21 = [(_UITextAssistantReplacementTracker *)v12 newEditTracker];
    editTracker = v12->_editTracker;
    v12->_editTracker = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    replacementDeliveryUUIDs = v12->_replacementDeliveryUUIDs;
    v12->_replacementDeliveryUUIDs = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    replacementChunksByUUID = v12->_replacementChunksByUUID;
    v12->_replacementChunksByUUID = v25;
  }

  return v12;
}

- (void)setOffsetForSessionRange:(unint64_t)a3
{
  if (self->_offsetForSessionRange != a3)
  {
    self->_offsetForSessionRange = a3;
    processedOriginalText = self->_processedOriginalText;
    self->_processedOriginalText = 0;

    unprocessedOriginalText = self->_unprocessedOriginalText;
    self->_unprocessedOriginalText = 0;
  }
}

- (void)setCompositionSessionState:(int64_t)a3
{
  v6 = [(_UITextAssistantReplacementTracker *)self isProofreading];
  if (a3 != -1 && v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:123 description:@"Can't set replacement tracker's compositionSessionState to anything other than Invalid when proofreading"];
  }

  if (self->_compositionSessionState != a3)
  {
    self->_compositionSessionState = a3;
    if (!a3)
    {
      v7 = [(_UITextAssistantReplacementTracker *)self newEditTracker];
      editTracker = self->_editTracker;
      self->_editTracker = v7;

      self->_finished = 0;
      [(NSMutableArray *)self->_replacementDeliveryUUIDs removeAllObjects];
      [(NSMutableDictionary *)self->_replacementChunksByUUID removeAllObjects];
      [(NSMutableDictionary *)self->_initialReplacementChunksByUUID removeAllObjects];
      if ([(NSAttributedString *)self->_rewrittenText length])
      {
        previousRewrites = self->_previousRewrites;
        if (!previousRewrites)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v11 = self->_previousRewrites;
          self->_previousRewrites = v10;

          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          previousRewrittenTexts = self->_previousRewrittenTexts;
          self->_previousRewrittenTexts = v12;

          previousRewrites = self->_previousRewrites;
        }

        v14 = [(NSAttributedString *)self->_rewrittenText string];
        [(NSMutableArray *)previousRewrites addObject:v14];

        [(NSMutableArray *)self->_previousRewrittenTexts addObject:self->_rewrittenText];
      }

      v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
      rewrittenText = self->_rewrittenText;
      self->_rewrittenText = v15;
    }

    processedOriginalText = self->_processedOriginalText;
    self->_processedOriginalText = 0;

    unprocessedOriginalText = self->_unprocessedOriginalText;
    self->_unprocessedOriginalText = 0;
  }
}

- (id)recordRewrittenText:(id)a3 forRange:(_NSRange)a4 withContext:(id)a5 finished:(BOOL)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  v124 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = [v14 uuid];
  contextUUID = self->_contextUUID;
  v17 = v15;
  v18 = contextUUID;
  v19 = v18;
  v113 = length;
  if (v17 == v18)
  {
  }

  else
  {
    if (v17 && v18)
    {
      v20 = [(NSUUID *)v17 isEqual:v18];

      if (v20)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [(NSUUID *)v17 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:174 description:@"Mismatched composition session context"];
  }

LABEL_8:
  v21 = self->_originalContext;
  v22 = v14;
  v23 = v22;
  v107 = a2;
  if (v21 == v22)
  {

    goto LABEL_16;
  }

  if (v22 && v21)
  {
    v24 = [(WTContext *)v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v82 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_MergedGlobals_1122) + 8);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v82, OS_LOG_TYPE_ERROR, "Surprise request to record rewritten text with context argument's range different from the range of the context that the tracker was initialized with", buf, 2u);
        }
      }
    }
  }

LABEL_16:
  p_rewrittenText = &self->_rewrittenText;
  rewrittenText = self->_rewrittenText;
  self->_finished = v6;
  v27 = [(NSAttributedString *)rewrittenText string];
  if (self->_initialReplacementChunksByUUID)
  {
    v28 = [(_UITextAssistantReplacementTracker *)self assembledRewrittenTextToDelivery:0 matchingInitialDeliveries:1];
    v29 = [v28 string];

    v27 = v29;
  }

  if (v6)
  {
    v30 = [v13 string];
    v31 = [v30 isEqualToString:v27];

    if (v31)
    {
      v32 = 0;
      self->_selectedRewriteIndex = [(NSMutableArray *)self->_previousRewrittenTexts count];
      goto LABEL_61;
    }
  }

  v111 = location;
  v108 = v27;
  v109 = v6;
  processedOriginalText = self->_processedOriginalText;
  self->_processedOriginalText = 0;

  unprocessedOriginalText = self->_unprocessedOriginalText;
  self->_unprocessedOriginalText = 0;

  v32 = [MEMORY[0x1E696AFB0] UUID];
  v35 = [(_UITextAssistantReplacementTracker *)self isProofreading];
  fallbackDeliveryID = self->_fallbackDeliveryID;
  self->_fallbackDeliveryID = 0;

  v106 = v35;
  if (!v35)
  {
    v37 = [v13 length];
    if (v37 <= [(NSAttributedString *)*p_rewrittenText length])
    {
      v104 = v13;
      if (os_variant_has_internal_diagnostics())
      {
        if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
        {
          if (byte_1EA95E17C)
          {
            v92 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E348) + 8);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              replacementDeliveryUUIDs = self->_replacementDeliveryUUIDs;
              v94 = v92;
              v95 = [(NSMutableArray *)replacementDeliveryUUIDs count];
              *buf = 134217984;
              v120 = v95;
              _os_log_impl(&dword_188A29000, v94, OS_LOG_TYPE_ERROR, "New delivery is no longer than the rewrite so far. Replacing all accumulated chunks with the current delivery. Number of chunks cleared = %lu", buf, 0xCu);
            }
          }
        }
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v38 = self->_replacementDeliveryUUIDs;
      v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v115 objects:v123 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v116;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v116 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [(NSWritingToolsEditTracker *)self->_editTracker removeEditForSuggestionWithUUID:*(*(&v115 + 1) + 8 * i)];
          }

          v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v115 objects:v123 count:16];
        }

        while (v40);
      }

      [(NSMutableArray *)self->_replacementDeliveryUUIDs removeAllObjects];
      [(NSMutableDictionary *)self->_replacementChunksByUUID removeAllObjects];
      [(NSMutableDictionary *)self->_initialReplacementChunksByUUID removeAllObjects];
      objc_storeStrong(&self->_fallbackDeliveryID, v32);
      v13 = v104;
      LOBYTE(v35) = v106;
    }
  }

  v43 = [(NSMutableArray *)self->_replacementDeliveryUUIDs lastObject];
  if (v43)
  {
    v44 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v43];
    v45 = v44;
    if (v35)
    {
      v46 = v13;
      if (v44)
      {
        v47 = [v44 originalRange];
        v49 = v47 + v48;
        v50 = v111 - (v47 + v48);
        if (v50 < 0)
        {
          v51 = [MEMORY[0x1E696AAA8] currentHandler];
          [v51 handleFailureInMethod:v107 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:220 description:@"Unexpected overlapping proofreading delivery range"];
        }

        goto LABEL_40;
      }

LABEL_39:
      v50 = 0;
      v49 = 0;
LABEL_40:
      if (*p_rewrittenText)
      {
        v52 = [(NSAttributedString *)*p_rewrittenText mutableCopy];
      }

      else
      {
        v52 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFB14550];
      }

      v66 = v52;
      v110 = v45;
      if (v50)
      {
        v67 = [(NSAttributedString *)self->_originalText attributedSubstringFromRange:v49, v50];
        [v66 appendAttributedString:v67];
      }

      v13 = v46;
      [v66 appendAttributedString:v46];
      v68 = [v66 copy];
      v69 = *p_rewrittenText;
      *p_rewrittenText = v68;

      v53 = v46;
      goto LABEL_57;
    }
  }

  else
  {
    if (v35)
    {
      v46 = v13;
      v45 = 0;
      goto LABEL_39;
    }

    v45 = 0;
  }

  objc_storeStrong(&self->_rewrittenText, a3);
  v53 = v13;
  v110 = v45;
  if (v43 && v45)
  {
    v54 = v13;
    v55 = v111 + v113 - [v45 originalEndIndex];
    if (v55 < 0)
    {
      v96 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = v45;
      [v96 handleFailureInMethod:v107 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:238 description:{@"Negative length found for incoming replacement.\npreviousChunk: %@\ninRange={%lu, %lu}", v45, v111, v113}];
    }

    else
    {
      v56 = v45;
      if (!v55)
      {
        if (os_variant_has_internal_diagnostics())
        {
          if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
          {
            if (byte_1EA95E17C)
            {
              v99 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E350) + 8);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v99, OS_LOG_TYPE_ERROR, "Proper animation for extending rewrites TBD: rdar://127571889", buf, 2u);
              }
            }
          }
        }
      }
    }

    v111 = [v56 originalEndIndex];
    editTracker = self->_editTracker;
    v58 = [v56 originalRange];
    v60 = [(NSWritingToolsEditTracker *)editTracker rangeOfSuggestionWithRange:v58 UUID:v59 applyDelta:v43, 1];
    v62 = v60 + v61;
    v63 = [v53 length] - (v60 + v61);
    if (v63 < 0)
    {
      v97 = [MEMORY[0x1E696AAA8] currentHandler];
      [v97 handleFailureInMethod:v107 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:248 description:@"Error in rewrite length calculation"];
    }

    v64 = [v53 attributedSubstringFromRange:{v62, v63}];

    v113 = v55;
    v53 = v64;
    v13 = v54;
  }

  v65 = [v53 string];
  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C)
  {
    v83 = v13;
    v84 = [v65 substringWithRange:{0, objc_msgSend(v65, "length") != 0}];
    v85 = [v84 isEqualToString:@"\n"];

    v86 = v85;
    if (v85)
    {
      if (os_variant_has_internal_diagnostics())
      {
        if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
        {
          if (byte_1EA95E17C)
          {
            v101 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E3A0) + 8);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v101, OS_LOG_TYPE_ERROR, "\tfirst character is linefeed", buf, 2u);
            }
          }
        }
      }
    }

    v87 = [v65 length];
    if (v87 <= 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = v87;
    }

    v89 = [v65 substringWithRange:{v88 - 1, objc_msgSend(v65, "length") != 0}];
    v90 = [v89 isEqualToString:@"\n"];

    if (v90)
    {
      v13 = v83;
      if (os_variant_has_internal_diagnostics())
      {
        if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
        {
          if (byte_1EA95E17C)
          {
            v91 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E3A8) + 8);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v91, OS_LOG_TYPE_ERROR, "\tlast character is linefeed", buf, 2u);
            }
          }
        }
      }

      goto LABEL_97;
    }

    v13 = v83;
    if (v86)
    {
LABEL_97:
      if (os_variant_has_internal_diagnostics())
      {
        if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
        {
          if (byte_1EA95E17C)
          {
            v98 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E3B0) + 8);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v120 = v65;
              _os_log_impl(&dword_188A29000, v98, OS_LOG_TYPE_ERROR, "\n------------\n%@\n------------", buf, 0xCu);
            }
          }
        }
      }
    }
  }

LABEL_57:
  [(NSMutableArray *)self->_replacementDeliveryUUIDs addObject:v32];
  v70 = [[_UIWritingToolsReplacementChunk alloc] initWithReplacementChunk:v53 originalRange:v111 uuid:v113, v32];
  [(NSMutableDictionary *)self->_replacementChunksByUUID setObject:v70 forKeyedSubscript:v32];
  [(NSWritingToolsEditTracker *)self->_editTracker addEditForSuggestionWithRange:v111 lengthDelta:v113 UUID:[(_UIWritingToolsReplacementChunk *)v70 lengthDelta], v32];
  v71 = v110;
  if (os_variant_has_internal_diagnostics())
  {
    v73 = [(_UITextAssistantReplacementTracker *)self assembledRewrittenText];
    [(_UITextAssistantReplacementTracker *)self rewrittenText];
    v74 = v105 = v13;
    v75 = [v73 isEqualToAttributedString:v74];

    v13 = v105;
    if ((v75 & 1) == 0)
    {
      v114 = [(_UITextAssistantReplacementTracker *)self assembledRewrittenText];
      v76 = [v114 string];
      v77 = [(_UITextAssistantReplacementTracker *)self rewrittenText];
      v78 = [v77 string];
      v112 = [v76 isEqualToString:v78];

      if (os_variant_has_internal_diagnostics())
      {
        v100 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
        {
          v102 = @"Composition";
          if (v106)
          {
            v102 = @"Proofreading";
          }

          v103 = @" Difference in attributes only.";
          if (!v112)
          {
            v103 = &stru_1EFB14550;
          }

          *buf = 138412546;
          v120 = v102;
          v121 = 2112;
          v122 = v103;
          _os_log_fault_impl(&dword_188A29000, v100, OS_LOG_TYPE_FAULT, "%@ replacement improperly recorded.%@", buf, 0x16u);
        }

        v13 = v105;
        v71 = v110;
      }

      else
      {
        v79 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E358) + 8);
        v13 = v105;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = @"Composition";
          if (v106)
          {
            v80 = @"Proofreading";
          }

          v81 = @" Difference in attributes only.";
          if (!v112)
          {
            v81 = &stru_1EFB14550;
          }

          *buf = 138412546;
          v120 = v80;
          v121 = 2112;
          v122 = v81;
          _os_log_impl(&dword_188A29000, v79, OS_LOG_TYPE_ERROR, "%@ replacement improperly recorded.%@", buf, 0x16u);
        }
      }
    }
  }

  if (v109)
  {
    self->_selectedRewriteIndex = [(NSMutableArray *)self->_previousRewrittenTexts count];
  }

  v27 = v108;
LABEL_61:

  return v32;
}

- (void)updateReplacementChunkForDeliveryID:(id)a3 newText:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  replacementDeliveryUUIDs = self->_replacementDeliveryUUIDs;
  v8 = a4;
  if (([(NSMutableArray *)replacementDeliveryUUIDs containsObject:v6]& 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = self->_replacementDeliveryUUIDs;
        v24 = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v23;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Can't update replacement chunk for abandoned delivery, %@. It's not contained in %@", &v24, 0x16u);
      }
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &updateReplacementChunkForDeliveryID_newText____s_category) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = self->_replacementDeliveryUUIDs;
        v24 = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Can't update replacement chunk for abandoned delivery, %@. It's not contained in %@", &v24, 0x16u);
      }
    }
  }

  v9 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v6];
  [(NSWritingToolsEditTracker *)self->_editTracker removeEditForSuggestionWithUUID:v6];
  v10 = [(NSMutableDictionary *)self->_initialReplacementChunksByUUID objectForKeyedSubscript:v6];

  if (!v10)
  {
    initialReplacementChunksByUUID = self->_initialReplacementChunksByUUID;
    if (!initialReplacementChunksByUUID)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self->_initialReplacementChunksByUUID;
      self->_initialReplacementChunksByUUID = v12;

      initialReplacementChunksByUUID = self->_initialReplacementChunksByUUID;
    }

    [(NSMutableDictionary *)initialReplacementChunksByUUID setObject:v9 forKeyedSubscript:v6];
  }

  v14 = [v9 originalRange];
  v16 = v15;
  v17 = [[_UIWritingToolsReplacementChunk alloc] initWithReplacementChunk:v8 originalRange:v14 uuid:v15, v6];

  [(NSWritingToolsEditTracker *)self->_editTracker addEditForSuggestionWithRange:v14 lengthDelta:v16 UUID:[(_UIWritingToolsReplacementChunk *)v17 lengthDelta], v6];
  [(NSMutableDictionary *)self->_replacementChunksByUUID setObject:v17 forKeyedSubscript:v6];
  v18 = [(_UITextAssistantReplacementTracker *)self assembledRewrittenText];
  rewrittenText = self->_rewrittenText;
  self->_rewrittenText = v18;
}

- (BOOL)selectRewriteMatchingUndoRedoReplacementText:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(_UITextAssistantReplacementTracker *)self isRewriting])
  {
    v6 = [v5 string];
    previousRewrites = self->_previousRewrites;
    if (!previousRewrites || (v8 = [(NSMutableArray *)previousRewrites indexOfObject:v6], v8 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = [(NSAttributedString *)self->_rewrittenText string];
      v10 = [v6 isEqualToString:v9];

      if (!v10 || (v8 = [(NSMutableArray *)self->_previousRewrites count], v8 == 0x7FFFFFFFFFFFFFFFLL))
      {
        if (os_variant_has_internal_diagnostics())
        {
          if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
          {
            if (byte_1EA95E17C)
            {
              v14 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E360) + 8);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = v14;
                v16 = [v5 string];
                v23 = 138412290;
                v24 = v16;
                _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "No rewrite version matches undoRedoReplacmentText\n%@", &v23, 0xCu);
              }
            }
          }
        }

        goto LABEL_10;
      }
    }

    v12 = v8;

    self->_selectedRewriteIndex = v12;
    if (os_variant_has_internal_diagnostics())
    {
      v11 = 1;
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v22 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E370) + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = 134217984;
            v24 = v12;
            _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Selecting rewrite version for index %li", &v23, 0xCu);
          }
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (![(_UITextAssistantReplacementTracker *)self isProofreading]|| !os_variant_has_internal_diagnostics())
    {
LABEL_10:
      v11 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184)
    {
      v17 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E368) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v23 = 138412546;
        v24 = v19;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%@ unexpectedly received by %@ during proofreading", &v23, 0x16u);
      }

      goto LABEL_10;
    }
  }

LABEL_13:

  return v11;
}

- (id)assembledRewrittenTextToDelivery:(id)a3 matchingInitialDeliveries:(BOOL)a4
{
  v25 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_replacementDeliveryUUIDs;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v28;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v27 + 1) + 8 * v10);
      if (v25 && (initialReplacementChunksByUUID = self->_initialReplacementChunksByUUID) != 0)
      {
        v13 = [(NSMutableDictionary *)initialReplacementChunksByUUID objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v10)];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v11];
        }

        v16 = v15;
      }

      else
      {
        v16 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v10)];
      }

      v17 = [v16 originalRange];
      v19 = v18;
      if (v17 - v8 >= 1)
      {
        v20 = [(NSAttributedString *)self->_originalText attributedSubstringFromRange:v8];
        [v5 appendAttributedString:v20];
      }

      v21 = [v16 replacement];
      [v5 appendAttributedString:v21];

      LOBYTE(v21) = [v11 isEqual:v26];
      if (v21)
      {
        break;
      }

      v8 = v17 + v19;
      if (v7 == ++v10)
      {
        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = [v5 copy];

  return v22;
}

- (NSAttributedString)processedOriginalText
{
  processedOriginalText = self->_processedOriginalText;
  if (!processedOriginalText)
  {
    v4 = [(_UITextAssistantReplacementTracker *)self processedOriginalCharacterRange];
    v6 = [(NSAttributedString *)self->_originalText attributedSubstringFromRange:v4 - (self->_offsetForSessionRange + self->_sessionContextRange.location), v5];
    v7 = self->_processedOriginalText;
    self->_processedOriginalText = v6;

    processedOriginalText = self->_processedOriginalText;
  }

  return processedOriginalText;
}

- (NSAttributedString)unprocessedOriginalText
{
  unprocessedOriginalText = self->_unprocessedOriginalText;
  if (!unprocessedOriginalText)
  {
    length = self->_sessionContextRange.length;
    v6 = [(NSMutableArray *)self->_replacementDeliveryUUIDs lastObject];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v6];
      v8 = [v7 originalRange];
      v10 = v8 + v9;
      length -= v8 + v9;
      if (length < 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:377 description:@"Invalid unprocessed range length"];
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSAttributedString *)self->_originalText attributedSubstringFromRange:v10, length];
    v12 = self->_unprocessedOriginalText;
    self->_unprocessedOriginalText = v11;

    unprocessedOriginalText = self->_unprocessedOriginalText;
  }

  return unprocessedOriginalText;
}

- (id)rewrittenChunkTextForDelivery:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (([(NSMutableArray *)self->_replacementDeliveryUUIDs containsObject:v5]& 1) == 0)
  {
    v6 = self->_fallbackDeliveryID;
  }

  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:392 description:@"Unknown delivery ID for retrieving chunk rewrite"];
  }

  v7 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 replacement];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  }

  v10 = v9;

  return v10;
}

- (id)originalChunkTextForDelivery:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (([(NSMutableArray *)self->_replacementDeliveryUUIDs containsObject:v5]& 1) == 0)
  {
    v6 = self->_fallbackDeliveryID;
  }

  if (!v6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:403 description:@"Unknown delivery ID for retrieving chunk original"];
  }

  v7 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    originalText = self->_originalText;
    v10 = [v7 originalRange];
    v12 = [(NSAttributedString *)originalText attributedSubstringFromRange:v10, v11];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  }

  v13 = v12;

  return v13;
}

- (NSAttributedString)activeText
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_compositionSessionState != 2)
  {
    v6 = [(_UITextAssistantReplacementTracker *)self processedOriginalText];
    goto LABEL_13;
  }

  if (![(_UITextAssistantReplacementTracker *)self isRewriting])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = v8;
    v10 = self->_compositionSessionState + 1;
    if (v10 > 3)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_1E710ADE8[v10];
    }

    [v8 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:411 description:{@"_compositionSessionState should not be set to %@ unless replacement tracker is rewriting", v11}];
  }

  if (![(_UITextAssistantReplacementTracker *)self isFinished])
  {
    goto LABEL_11;
  }

  v4 = [(NSMutableArray *)self->_previousRewrites count];
  selectedRewriteIndex = self->_selectedRewriteIndex;
  if ((selectedRewriteIndex & 0x8000000000000000) == 0 && selectedRewriteIndex < v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v19 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E378) + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = self->_selectedRewriteIndex;
            v21 = self->_compositionSessionState + 1;
            if (v21 > 3)
            {
              v22 = @"Unknown";
            }

            else
            {
              v22 = off_1E710ADE8[v21];
            }

            *buf = 134218242;
            v28 = v20;
            v29 = 2112;
            v30 = v22;
            v24 = v19;
            _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Choosing previous rewrite version at index %li for resolving activeText for %@", buf, 0x16u);
          }
        }
      }
    }

    v6 = [(NSMutableArray *)self->_previousRewrittenTexts objectAtIndexedSubscript:self->_selectedRewriteIndex];
    goto LABEL_13;
  }

  if (selectedRewriteIndex != v4)
  {
    v15 = v4;
    if (os_variant_has_internal_diagnostics())
    {
      v25 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = self->_selectedRewriteIndex;
        *buf = 134218240;
        v28 = v26;
        v29 = 2048;
        v30 = v15;
        _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Setting _selectedRewriteIndex with unexpected value, %li, to match known number of rewrites, %li ", buf, 0x16u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E380) + 8);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      v4 = v15;
      if (!v17)
      {
        goto LABEL_10;
      }

      v18 = self->_selectedRewriteIndex;
      *buf = 134218240;
      v28 = v18;
      v29 = 2048;
      v30 = v15;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Setting _selectedRewriteIndex with unexpected value, %li, to match known number of rewrites, %li ", buf, 0x16u);
    }

    v4 = v15;
  }

LABEL_10:
  self->_selectedRewriteIndex = v4;
LABEL_11:
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v12 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E388) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_compositionSessionState + 1;
          if (v13 > 3)
          {
            v14 = @"Unknown";
          }

          else
          {
            v14 = off_1E710ADE8[v13];
          }

          *buf = 138412290;
          v28 = v14;
          v23 = v12;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Choosing last rewrite version for resolving activeText for %@", buf, 0xCu);
        }
      }
    }
  }

  v6 = self->_rewrittenText;
LABEL_13:

  return v6;
}

- (BOOL)hasProcessedOriginalRange
{
  [(_UITextAssistantReplacementTracker *)self processedOriginalCharacterRange];
  v4 = v3;
  [(_UITextAssistantReplacementTracker *)self originalCharacterRange];
  return v4 == v5;
}

- (_NSRange)originalCharacterRange
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_offsetForSessionRange + self->_sessionContextRange.location;
  length = self->_sessionContextRange.length;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v7 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &originalCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = v7;
          v9 = NSStringFromSelector(a2);
          v10 = 138412802;
          v11 = v9;
          v12 = 2048;
          v13 = v3;
          v14 = 2048;
          v15 = length;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v10, 0x20u);
        }
      }
    }
  }

  v5 = v3;
  v6 = length;
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)processedOriginalCharacterRange
{
  v23 = *MEMORY[0x1E69E9840];
  offsetForSessionRange = self->_offsetForSessionRange;
  location = self->_sessionContextRange.location;
  v6 = [(NSMutableArray *)self->_replacementDeliveryUUIDs lastObject];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_replacementChunksByUUID objectForKeyedSubscript:v6];
    v8 = [v7 originalRange];
    v10 = v8 + v9;
    if (v8 + v9 < 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:457 description:@"error in calculating length of processedOriginalCharacterRange"];
    }
  }

  else
  {
    v10 = 0;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v13 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &processedOriginalCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          v15 = NSStringFromSelector(a2);
          v17 = 138412802;
          v18 = v15;
          v19 = 2048;
          v20 = location + offsetForSessionRange;
          v21 = 2048;
          v22 = v10;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v17, 0x20u);
        }
      }
    }
  }

  v11 = location + offsetForSessionRange;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (uint64_t)currentChunkCharacterRangeUpdatingLength:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    if (*(a1 + 112) == 1)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = v11;
      v13 = *(v2 + 112) + 1;
      if (v13 > 3)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E710ADE8[v13];
      }

      [v11 handleFailureInMethod:sel_currentChunkCharacterRangeUpdatingLength_ object:v2 file:@"_UITextAssistantReplacementTracker.m" lineNumber:466 description:{@"initial and final current-chunk ranges not valid for session state: %@", v14}];
    }

    v4 = [*(v2 + 48) lastObject];
    if (v4)
    {
      v5 = [*(v2 + 56) objectForKeyedSubscript:v4];
      v6 = *(v2 + 40);
      v7 = [v5 originalRange];
      v9 = [v6 rangeOfSuggestionWithRange:v7 UUID:v8 applyDelta:{v4, a2}];
    }

    else
    {
      v9 = 0;
    }

    v2 = v9 + *(v2 + 16) + *(v2 + 8);
  }

  return v2;
}

- (_NSRange)initialCurrentChunkCharacterRange
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(_UITextAssistantReplacementTracker *)self currentChunkCharacterRangeUpdatingLength:?];
  v5 = v4;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v8 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &initialCurrentChunkCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          v10 = NSStringFromSelector(a2);
          v11 = 138412802;
          v12 = v10;
          v13 = 2048;
          v14 = v3;
          v15 = 2048;
          v16 = v5;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v11, 0x20u);
        }
      }
    }
  }

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)finalCurrentChunkCharacterRange
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(_UITextAssistantReplacementTracker *)self currentChunkCharacterRangeUpdatingLength:?];
  v5 = v4;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v8 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &finalCurrentChunkCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          v10 = NSStringFromSelector(a2);
          v11 = 138412802;
          v12 = v10;
          v13 = 2048;
          v14 = v3;
          v15 = 2048;
          v16 = v5;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v11, 0x20u);
        }
      }
    }
  }

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rewrittenCharacterRange
{
  v18 = *MEMORY[0x1E69E9840];
  location = self->_sessionContextRange.location;
  v5 = [(NSAttributedString *)self->_rewrittenText length];
  v6 = self->_offsetForSessionRange + location;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v9 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &rewrittenCharacterRange___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      v12 = 138412802;
      v13 = v11;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v12, 0x20u);
    }
  }

  v7 = v6;
  v8 = v5;
  result.length = v8;
  result.location = v7;
  return result;
}

- (uint64_t)rangeForChunkFromDelivery:(int)a3 useOriginalLength:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    if (([*(a1 + 48) containsObject:v7] & 1) == 0)
    {
      v8 = *(a1 + 72);

      v7 = v8;
    }

    if (v7)
    {
      v9 = [*(a1 + 56) objectForKeyedSubscript:v7];
      v10 = v9;
      if (*(a1 + 112) == 1)
      {
        if (os_variant_has_internal_diagnostics())
        {
          if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
          {
            if (byte_1EA95E17C)
            {
              v16 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &rangeForChunkFromDelivery_useOriginalLength____s_category) + 8);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = 138412290;
                v18 = v7;
                _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "ALERT: unexpected request for chunk-delivery range while showing original. %@", &v17, 0xCu);
              }
            }
          }
        }

        v11 = [v10 originalRange];
      }

      else
      {
        v12 = *(a1 + 40);
        v13 = [v9 originalRange];
        v11 = [v12 rangeOfSuggestionWithRange:v13 UUID:v14 applyDelta:{v7, a3 ^ 1u}];
      }

      a1 = v11 + *(a1 + 8) + *(a1 + 16);
    }

    else
    {
      a1 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return a1;
}

- (_NSRange)sourceRangeForChunkFromDelivery:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_UITextAssistantReplacementTracker *)self rangeForChunkFromDelivery:v5 useOriginalLength:1];
  v8 = v7;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v11 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &sourceRangeForChunkFromDelivery____s_category) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = v11;
          v13 = NSStringFromSelector(a2);
          v14 = 138413058;
          v15 = v13;
          v16 = 2112;
          v17 = v5;
          v18 = 2048;
          v19 = v6;
          v20 = 2048;
          v21 = v8;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "\t%@ %@={%lu, %lu}", &v14, 0x2Au);
        }
      }
    }
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)targetRangeForChunkFromDelivery:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_UITextAssistantReplacementTracker *)self rangeForChunkFromDelivery:v5 useOriginalLength:0];
  v8 = v7;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v11 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &targetRangeForChunkFromDelivery____s_category) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = v11;
          v13 = NSStringFromSelector(a2);
          v14 = 138413058;
          v15 = v13;
          v16 = 2112;
          v17 = v5;
          v18 = 2048;
          v19 = v6;
          v20 = 2048;
          v21 = v8;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "\t%@ %@={%lu, %lu}", &v14, 0x2Au);
        }
      }
    }
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)nextDeliveryForDelivery:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->_replacementDeliveryUUIDs indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [(NSMutableArray *)self->_replacementDeliveryUUIDs count]- 1))
  {
    v6 = 0;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
      {
        if (byte_1EA95E17C)
        {
          v8 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &nextDeliveryForDelivery____s_category) + 8);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            replacementDeliveryUUIDs = self->_replacementDeliveryUUIDs;
            v10 = v8;
            v11[0] = 67109376;
            v11[1] = v5 + 1;
            v12 = 1024;
            v13 = [(NSMutableArray *)replacementDeliveryUUIDs count];
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "next delivery index = %u of %u", v11, 0xEu);
          }
        }
      }
    }

    v6 = [(NSMutableArray *)self->_replacementDeliveryUUIDs objectAtIndexedSubscript:v5 + 1];
  }

  return v6;
}

- (_NSRange)activeFullCharacterRange
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(_UITextAssistantReplacementTracker *)self isProofreading]|| (compositionSessionState = self->_compositionSessionState, compositionSessionState == 2))
  {
    v4 = [(NSWritingToolsEditTracker *)self->_editTracker currentContextRange];
    length = v5;
    location = v4 + self->_sessionContextRange.location;
  }

  else if (compositionSessionState == 1)
  {
    location = self->_sessionContextRange.location;
    length = self->_sessionContextRange.length;
  }

  else if (compositionSessionState)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITextAssistantReplacementTracker.m" lineNumber:579 description:@"Unknown composition session state"];

    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    length = 0;
    location = self->_sessionContextRange.location;
  }

  v8 = self->_offsetForSessionRange + location;
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v13 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &activeFullCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          v15 = NSStringFromSelector(a2);
          v16 = 138412802;
          v17 = v15;
          v18 = 2048;
          v19 = v8;
          v20 = 2048;
          v21 = length;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v16, 0x20u);
        }
      }
    }
  }

  v9 = v8;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)activeCharacterRange
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(_UITextAssistantReplacementTracker *)self isProofreading])
  {
    goto LABEL_2;
  }

  if (self->_compositionSessionState != 2)
  {
    goto LABEL_7;
  }

  if (![(_UITextAssistantReplacementTracker *)self isFinished])
  {
LABEL_2:
    v4 = [(_UITextAssistantReplacementTracker *)self rewrittenCharacterRange];
LABEL_8:
    v9 = v4;
    v8 = v5;
    goto LABEL_9;
  }

  if (self->_compositionSessionState != 2)
  {
LABEL_7:
    v4 = [(_UITextAssistantReplacementTracker *)self processedOriginalCharacterRange];
    goto LABEL_8;
  }

  location = self->_sessionContextRange.location;
  v7 = [(_UITextAssistantReplacementTracker *)self activeText];
  v8 = [v7 length];

  v9 = self->_offsetForSessionRange + location;
LABEL_9:
  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v12 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &activeCharacterRange___s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          v14 = NSStringFromSelector(a2);
          v15 = 138412802;
          v16 = v14;
          v17 = 2048;
          v18 = v9;
          v19 = 2048;
          v20 = v8;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v15, 0x20u);
        }
      }
    }
  }

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)activeUnprocessedCharacterRange
{
  v25 = *MEMORY[0x1E69E9840];
  length = self->_sessionContextRange.length;
  v5 = [(_UITextAssistantReplacementTracker *)self processedOriginalCharacterRange];
  v7 = v6;
  v8 = length - v6;
  if (v8 < 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v19) = 0;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "overshot processed length when calculating unprocessed range", &v19, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E390) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "overshot processed length when calculating unprocessed range", &v19, 2u);
      }
    }

    v8 = 0;
  }

  if ([(_UITextAssistantReplacementTracker *)self isProofreading]|| self->_compositionSessionState == 2)
  {
    v10 = [(_UITextAssistantReplacementTracker *)self rewrittenCharacterRange];
    v12 = v10 + v11;
  }

  else
  {
    v12 = v5 + v7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0)
    {
      if (byte_1EA95E17C)
      {
        v15 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49E398) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v17 = NSStringFromSelector(a2);
          v19 = 138412802;
          v20 = v17;
          v21 = 2048;
          v22 = v12;
          v23 = 2048;
          v24 = v8;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "\t%@={%lu, %lu}", &v19, 0x20u);
        }
      }
    }
  }

  v13 = v12;
  v14 = v8;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)description
{
  v28.receiver = self;
  v28.super_class = _UITextAssistantReplacementTracker;
  v3 = [(_UITextAssistantReplacementTracker *)&v28 description];
  v4 = self->_compositionSessionState + 1;
  v27 = v3;
  if (v4 > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E710ADE8[v4];
  }

  v26 = v5;
  length = self->_sessionContextRange.length;
  location = self->_sessionContextRange.location;
  v23 = [(NSWritingToolsEditTracker *)self->_editTracker currentContextRange];
  [(NSWritingToolsEditTracker *)self->_editTracker currentContextRange];
  v7 = v6;
  offsetForSessionRange = self->_offsetForSessionRange;
  originalText = self->_originalText;
  rewrittenText = self->_rewrittenText;
  v11 = [(NSMutableArray *)self->_replacementDeliveryUUIDs lastObject];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    replacementChunksByUUID = self->_replacementChunksByUUID;
    v22 = [(NSMutableArray *)self->_replacementDeliveryUUIDs lastObject];
    v21 = [(NSMutableDictionary *)replacementChunksByUUID objectForKeyedSubscript:?];
    v14 = [v12 stringWithFormat:@" lastChunk=%p", v21];
  }

  else
  {
    v14 = &stru_1EFB14550;
  }

  editTracker = self->_editTracker;
  proofreadingController = self->_proofreadingController;
  if (proofreadingController)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"proofreadingController=%p", self->_proofreadingController];
  }

  else
  {
    v17 = &stru_1EFB14550;
  }

  if (self->_finished)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = objc_msgSend(v27, "stringByAppendingFormat:", @" state=%@ originalRange={%lu, %lu} currentRange={%lu, %lu} offset=(%ld} original=%p rewrite=%p%@ editTracker=%p%@ finished=%@"), v26, location, length, v23, v7, offsetForSessionRange, originalText, rewrittenText, v14, editTracker, v17, v18;
  if (proofreadingController)
  {
  }

  if (v11)
  {
  }

  return v19;
}

@end