@interface TIKeyboardOutput
- (BOOL)isEqual:(id)equal;
- (TIKeyboardOutput)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)deleteBackward:(unint64_t)backward;
- (void)deleteForward:(unint64_t)forward;
- (void)encodeWithCoder:(id)coder;
- (void)insertText:(id)text;
- (void)insertTextAfterSelection:(id)selection;
@end

@implementation TIKeyboardOutput

- (void)deleteForward:(unint64_t)forward
{
  insertionTextAfterSelection = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  v6 = [insertionTextAfterSelection length];

  v7 = 0;
  v8 = v6 != 0;
  if (forward && v6)
  {
    v7 = 0;
    do
    {
      insertionTextAfterSelection2 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
      v10 = [insertionTextAfterSelection2 rangeOfComposedCharacterSequenceAtIndex:v7];
      v12 = v11;

      v7 = v10 + v12;
      v8 = v7 < v6;
      --forward;
    }

    while (forward && v7 < v6);
  }

  if (v8)
  {
    insertionTextAfterSelection3 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    v14 = [insertionTextAfterSelection3 substringFromIndex:v7];
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:v14];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:0];
  }

  self->_forwardDeletionCount += forward;
}

- (void)insertTextAfterSelection:(id)selection
{
  selectionCopy = selection;
  insertionTextAfterSelection = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  if (insertionTextAfterSelection)
  {
    insertionTextAfterSelection2 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    v6 = [selectionCopy stringByAppendingString:insertionTextAfterSelection2];
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:v6];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:selectionCopy];
  }
}

- (void)deleteBackward:(unint64_t)backward
{
  insertionText = [(TIKeyboardOutput *)self insertionText];
  v6 = [insertionText length];

  for (; backward && v6; --backward)
  {
    insertionText2 = [(TIKeyboardOutput *)self insertionText];
    v6 = [insertionText2 _rangeOfBackwardDeletionClusterAtIndex:v6 - 1];
  }

  if (v6)
  {
    insertionText3 = [(TIKeyboardOutput *)self insertionText];
    v9 = [insertionText3 substringToIndex:v6];
    [(TIKeyboardOutput *)self setInsertionText:v9];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionText:0];
  }

  self->_deletionCount += backward;
}

- (void)insertText:(id)text
{
  textCopy = text;
  insertionText = [(TIKeyboardOutput *)self insertionText];
  v5 = [insertionText stringByAppendingString:textCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = textCopy;
  }

  [(TIKeyboardOutput *)self setInsertionText:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  acceptedCandidate = [(TIKeyboardOutput *)self acceptedCandidate];

  if (acceptedCandidate)
  {
    acceptedCandidate2 = [(TIKeyboardOutput *)self acceptedCandidate];
    candidate = [acceptedCandidate2 candidate];
    [v6 appendFormat:@"; acceptedCandidate = %@", candidate];
  }

  textToCommit = [(TIKeyboardOutput *)self textToCommit];

  if (textToCommit)
  {
    textToCommit2 = [(TIKeyboardOutput *)self textToCommit];
    [v6 appendFormat:@"; textToCommit = %@", textToCommit2];
  }

  if ([(TIKeyboardOutput *)self unmarkIfNecessary])
  {
    [v6 appendString:@"; unmarkIfNecessary = YES"];
  }

  if ([(TIKeyboardOutput *)self positionOffset])
  {
    [v6 appendFormat:@"; positionOffset = %d", -[TIKeyboardOutput positionOffset](self, "positionOffset")];
  }

  if ([(TIKeyboardOutput *)self deletionCount])
  {
    [v6 appendFormat:@"; delete %u", -[TIKeyboardOutput deletionCount](self, "deletionCount")];
  }

  insertionText = [(TIKeyboardOutput *)self insertionText];

  if (insertionText)
  {
    insertionText2 = [(TIKeyboardOutput *)self insertionText];
    [v6 appendFormat:@"; insert %@", insertionText2];
  }

  if ([(TIKeyboardOutput *)self forwardDeletionCount])
  {
    [v6 appendFormat:@"; delete forward %u", -[TIKeyboardOutput forwardDeletionCount](self, "forwardDeletionCount")];
  }

  insertionTextAfterSelection = [(TIKeyboardOutput *)self insertionTextAfterSelection];

  if (insertionTextAfterSelection)
  {
    insertionTextAfterSelection2 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    [v6 appendFormat:@"; insert %@ (after selection)", insertionTextAfterSelection2];
  }

  shortcutConversion = [(TIKeyboardOutput *)self shortcutConversion];

  if (shortcutConversion)
  {
    shortcutConversion2 = [(TIKeyboardOutput *)self shortcutConversion];
    candidate2 = [shortcutConversion2 candidate];
    [v6 appendFormat:@"; shortcutConversion = %@", candidate2];
  }

  handwritingStrokesToDelete = [(TIKeyboardOutput *)self handwritingStrokesToDelete];

  if (handwritingStrokesToDelete)
  {
    handwritingStrokesToDelete2 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
    [v6 appendFormat:@"; handwritingStrokesToDelete = %@", handwritingStrokesToDelete2];
  }

  if ([(TIKeyboardOutput *)self shouldSendCurrentLocation])
  {
    [v6 appendString:@"; shouldSendCurrentLocation = YES"];
  }

  customInfo = [(TIKeyboardOutput *)self customInfo];

  if (customInfo)
  {
    customInfo2 = [(TIKeyboardOutput *)self customInfo];
    [v6 appendFormat:@"; secureCandidateInfo = %@", customInfo2];
  }

  if ([(TIKeyboardOutput *)self producedByDeleteInput])
  {
    [v6 appendString:@"; producedByDeleteInput = YES"];
  }

  delimitingPrefix = [(TIKeyboardOutput *)self delimitingPrefix];

  if (delimitingPrefix)
  {
    delimitingPrefix2 = [(TIKeyboardOutput *)self delimitingPrefix];
    [v6 appendFormat:@"; delimitingPrefix = %@", delimitingPrefix2];
  }

  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  acceptedCandidate = [(TIKeyboardOutput *)self acceptedCandidate];
  v4 = [acceptedCandidate hash];

  textToCommit = [(TIKeyboardOutput *)self textToCommit];
  v6 = [textToCommit hash] + 257 * v4;

  v7 = 257 * (257 * v6 + [(TIKeyboardOutput *)self positionOffset]);
  v8 = 257 * (v7 + [(TIKeyboardOutput *)self deletionCount]);
  insertionText = [(TIKeyboardOutput *)self insertionText];
  v10 = v8 + [insertionText hash];

  v11 = 257 * (257 * v10 + [(TIKeyboardOutput *)self forwardDeletionCount]);
  insertionTextAfterSelection = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  v13 = [insertionTextAfterSelection hash] + v11;

  shortcutConversion = [(TIKeyboardOutput *)self shortcutConversion];
  v15 = [shortcutConversion hash] + 257 * v13;

  handwritingStrokesToDelete = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
  v17 = [handwritingStrokesToDelete hash] + 257 * v15;

  customInfo = [(TIKeyboardOutput *)self customInfo];
  v19 = [customInfo hash] + 257 * v17;

  v20 = 257 * (257 * v19 + [(TIKeyboardOutput *)self producedByDeleteInput]);
  delimitingPrefix = [(TIKeyboardOutput *)self delimitingPrefix];
  v22 = [delimitingPrefix hash];

  return v20 + v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    acceptedCandidate = [(TIKeyboardOutput *)self acceptedCandidate];
    acceptedCandidate2 = [v5 acceptedCandidate];
    v8 = acceptedCandidate2;
    if (acceptedCandidate == acceptedCandidate2)
    {
    }

    else
    {
      acceptedCandidate3 = [(TIKeyboardOutput *)self acceptedCandidate];
      acceptedCandidate4 = [v5 acceptedCandidate];
      v11 = [acceptedCandidate3 isEqual:acceptedCandidate4];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    textToCommit = [(TIKeyboardOutput *)self textToCommit];
    textToCommit2 = [v5 textToCommit];
    v15 = textToCommit2;
    if (textToCommit == textToCommit2)
    {
    }

    else
    {
      textToCommit3 = [(TIKeyboardOutput *)self textToCommit];
      textToCommit4 = [v5 textToCommit];
      v18 = [textToCommit3 isEqualToString:textToCommit4];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    unmarkIfNecessary = [(TIKeyboardOutput *)self unmarkIfNecessary];
    if (unmarkIfNecessary != [v5 unmarkIfNecessary])
    {
      goto LABEL_34;
    }

    positionOffset = [(TIKeyboardOutput *)self positionOffset];
    if (positionOffset != [v5 positionOffset])
    {
      goto LABEL_34;
    }

    deletionCount = [(TIKeyboardOutput *)self deletionCount];
    if (deletionCount != [v5 deletionCount])
    {
      goto LABEL_34;
    }

    insertionText = [(TIKeyboardOutput *)self insertionText];
    insertionText2 = [v5 insertionText];
    v24 = insertionText2;
    if (insertionText == insertionText2)
    {
    }

    else
    {
      insertionText3 = [(TIKeyboardOutput *)self insertionText];
      insertionText4 = [v5 insertionText];
      v27 = [insertionText3 isEqualToString:insertionText4];

      if (!v27)
      {
        goto LABEL_34;
      }
    }

    forwardDeletionCount = [(TIKeyboardOutput *)self forwardDeletionCount];
    if (forwardDeletionCount == [v5 forwardDeletionCount])
    {
      insertionTextAfterSelection = [(TIKeyboardOutput *)self insertionTextAfterSelection];
      insertionTextAfterSelection2 = [v5 insertionTextAfterSelection];
      v31 = insertionTextAfterSelection2;
      if (insertionTextAfterSelection == insertionTextAfterSelection2)
      {
      }

      else
      {
        insertionTextAfterSelection3 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
        insertionTextAfterSelection4 = [v5 insertionTextAfterSelection];
        v34 = [insertionTextAfterSelection3 isEqualToString:insertionTextAfterSelection4];

        if (!v34)
        {
          goto LABEL_34;
        }
      }

      shortcutConversion = [(TIKeyboardOutput *)self shortcutConversion];
      shortcutConversion2 = [v5 shortcutConversion];
      v37 = shortcutConversion2;
      if (shortcutConversion == shortcutConversion2)
      {
      }

      else
      {
        shortcutConversion3 = [(TIKeyboardOutput *)self shortcutConversion];
        shortcutConversion4 = [v5 shortcutConversion];
        v40 = [shortcutConversion3 isEqual:shortcutConversion4];

        if (!v40)
        {
          goto LABEL_34;
        }
      }

      handwritingStrokesToDelete = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
      handwritingStrokesToDelete2 = [v5 handwritingStrokesToDelete];
      v43 = handwritingStrokesToDelete2;
      if (handwritingStrokesToDelete == handwritingStrokesToDelete2)
      {
      }

      else
      {
        handwritingStrokesToDelete3 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
        handwritingStrokesToDelete4 = [v5 handwritingStrokesToDelete];
        v46 = [handwritingStrokesToDelete3 isEqual:handwritingStrokesToDelete4];

        if (!v46)
        {
          goto LABEL_34;
        }
      }

      shouldSendCurrentLocation = [(TIKeyboardOutput *)self shouldSendCurrentLocation];
      if (shouldSendCurrentLocation == [v5 shouldSendCurrentLocation])
      {
        customInfo = [(TIKeyboardOutput *)self customInfo];
        customInfo2 = [v5 customInfo];

        if (customInfo == customInfo2)
        {
          producedByDeleteInput = [(TIKeyboardOutput *)self producedByDeleteInput];
          if (producedByDeleteInput == [v5 producedByDeleteInput])
          {
            delimitingPrefix = [(TIKeyboardOutput *)self delimitingPrefix];
            delimitingPrefix2 = [v5 delimitingPrefix];
            if (delimitingPrefix == delimitingPrefix2)
            {
              v12 = 1;
            }

            else
            {
              delimitingPrefix3 = [(TIKeyboardOutput *)self delimitingPrefix];
              delimitingPrefix4 = [v5 delimitingPrefix];
              v12 = [delimitingPrefix3 isEqualToString:delimitingPrefix4];
            }

            goto LABEL_35;
          }
        }
      }
    }

LABEL_34:
    v12 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  acceptedCandidate = self->_acceptedCandidate;
  if (acceptedCandidate)
  {
    [coderCopy encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
  }

  textToCommit = self->_textToCommit;
  if (textToCommit)
  {
    [coderCopy encodeObject:textToCommit forKey:@"textToCommit"];
  }

  if (self->_unmarkIfNecessary)
  {
    [coderCopy encodeBool:1 forKey:@"unmarkIfNecessary"];
  }

  if (self->_positionOffset)
  {
    [coderCopy encodeInteger:-[TIKeyboardOutput positionOffset](self forKey:{"positionOffset"), @"positionOffset"}];
  }

  deletionCount = self->_deletionCount;
  if (deletionCount)
  {
    [coderCopy encodeInteger:deletionCount forKey:@"deletionCount"];
  }

  insertionText = self->_insertionText;
  v8 = coderCopy;
  if (insertionText)
  {
    [coderCopy encodeObject:insertionText forKey:@"insertionText"];
    v8 = coderCopy;
  }

  forwardDeletionCount = self->_forwardDeletionCount;
  if (forwardDeletionCount)
  {
    [coderCopy encodeInteger:forwardDeletionCount forKey:@"forwardDeletionCount"];
    v8 = coderCopy;
  }

  insertionTextAfterSelection = self->_insertionTextAfterSelection;
  if (insertionTextAfterSelection)
  {
    [coderCopy encodeObject:insertionTextAfterSelection forKey:@"insertionTextAfterSelection"];
    v8 = coderCopy;
  }

  shortcutConversion = self->_shortcutConversion;
  if (shortcutConversion)
  {
    [coderCopy encodeObject:shortcutConversion forKey:@"shortcutConversion"];
    v8 = coderCopy;
  }

  handwritingStrokesToDelete = self->_handwritingStrokesToDelete;
  if (handwritingStrokesToDelete)
  {
    [coderCopy encodeObject:handwritingStrokesToDelete forKey:@"handwritingStrokesToDelete"];
    v8 = coderCopy;
  }

  if (self->_shouldSendCurrentLocation)
  {
    [coderCopy encodeBool:1 forKey:@"shouldSendCurrentLocation"];
    v8 = coderCopy;
  }

  customInfo = self->_customInfo;
  if (customInfo)
  {
    [coderCopy encodeObject:customInfo forKey:@"customInfo"];
    v8 = coderCopy;
  }

  if (self->_producedByDeleteInput)
  {
    [coderCopy encodeBool:1 forKey:@"producedByDeleteInput"];
    v8 = coderCopy;
  }

  delimitingPrefix = self->_delimitingPrefix;
  if (delimitingPrefix)
  {
    [coderCopy encodeObject:delimitingPrefix forKey:@"delimitingPrefix"];
    v8 = coderCopy;
  }
}

- (TIKeyboardOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = TIKeyboardOutput;
  v5 = [(TIKeyboardOutput *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textToCommit"];
    textToCommit = v5->_textToCommit;
    v5->_textToCommit = v8;

    v5->_unmarkIfNecessary = [coderCopy decodeBoolForKey:@"_unmarkIfNecessary"];
    v5->_positionOffset = [coderCopy decodeIntegerForKey:@"positionOffset"];
    v5->_deletionCount = [coderCopy decodeIntegerForKey:@"deletionCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"insertionText"];
    v11 = [v10 copy];
    insertionText = v5->_insertionText;
    v5->_insertionText = v11;

    v5->_forwardDeletionCount = [coderCopy decodeIntegerForKey:@"forwardDeletionCount"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"insertionTextAfterSelection"];
    v14 = [v13 copy];
    insertionTextAfterSelection = v5->_insertionTextAfterSelection;
    v5->_insertionTextAfterSelection = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutConversion"];
    shortcutConversion = v5->_shortcutConversion;
    v5->_shortcutConversion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handwritingStrokesToDelete"];
    v19 = [v18 copy];
    handwritingStrokesToDelete = v5->_handwritingStrokesToDelete;
    v5->_handwritingStrokesToDelete = v19;

    v5->_shouldSendCurrentLocation = [coderCopy decodeBoolForKey:@"shouldSendCurrentLocation"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v21 setWithObjects:{v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"customInfo"];
    v29 = [v28 mutableCopy];
    customInfo = v5->_customInfo;
    v5->_customInfo = v29;

    v5->_producedByDeleteInput = [coderCopy decodeBoolForKey:@"producedByDeleteInput"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delimitingPrefix"];
    v32 = [v31 copy];
    delimitingPrefix = v5->_delimitingPrefix;
    v5->_delimitingPrefix = v32;
  }

  return v5;
}

@end