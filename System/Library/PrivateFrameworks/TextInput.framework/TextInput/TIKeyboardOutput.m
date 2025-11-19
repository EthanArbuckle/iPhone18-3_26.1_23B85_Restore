@interface TIKeyboardOutput
- (BOOL)isEqual:(id)a3;
- (TIKeyboardOutput)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)deleteBackward:(unint64_t)a3;
- (void)deleteForward:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)insertText:(id)a3;
- (void)insertTextAfterSelection:(id)a3;
@end

@implementation TIKeyboardOutput

- (void)deleteForward:(unint64_t)a3
{
  v5 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  v6 = [v5 length];

  v7 = 0;
  v8 = v6 != 0;
  if (a3 && v6)
  {
    v7 = 0;
    do
    {
      v9 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
      v10 = [v9 rangeOfComposedCharacterSequenceAtIndex:v7];
      v12 = v11;

      v7 = v10 + v12;
      v8 = v7 < v6;
      --a3;
    }

    while (a3 && v7 < v6);
  }

  if (v8)
  {
    v13 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    v14 = [v13 substringFromIndex:v7];
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:v14];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:0];
  }

  self->_forwardDeletionCount += a3;
}

- (void)insertTextAfterSelection:(id)a3
{
  v7 = a3;
  v4 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  if (v4)
  {
    v5 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    v6 = [v7 stringByAppendingString:v5];
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:v6];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionTextAfterSelection:v7];
  }
}

- (void)deleteBackward:(unint64_t)a3
{
  v5 = [(TIKeyboardOutput *)self insertionText];
  v6 = [v5 length];

  for (; a3 && v6; --a3)
  {
    v7 = [(TIKeyboardOutput *)self insertionText];
    v6 = [v7 _rangeOfBackwardDeletionClusterAtIndex:v6 - 1];
  }

  if (v6)
  {
    v8 = [(TIKeyboardOutput *)self insertionText];
    v9 = [v8 substringToIndex:v6];
    [(TIKeyboardOutput *)self setInsertionText:v9];
  }

  else
  {
    [(TIKeyboardOutput *)self setInsertionText:0];
  }

  self->_deletionCount += a3;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v8 = [(TIKeyboardOutput *)self insertionText];
  v5 = [v8 stringByAppendingString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [(TIKeyboardOutput *)self setInsertionText:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(TIKeyboardOutput *)self acceptedCandidate];

  if (v7)
  {
    v8 = [(TIKeyboardOutput *)self acceptedCandidate];
    v9 = [v8 candidate];
    [v6 appendFormat:@"; acceptedCandidate = %@", v9];
  }

  v10 = [(TIKeyboardOutput *)self textToCommit];

  if (v10)
  {
    v11 = [(TIKeyboardOutput *)self textToCommit];
    [v6 appendFormat:@"; textToCommit = %@", v11];
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

  v12 = [(TIKeyboardOutput *)self insertionText];

  if (v12)
  {
    v13 = [(TIKeyboardOutput *)self insertionText];
    [v6 appendFormat:@"; insert %@", v13];
  }

  if ([(TIKeyboardOutput *)self forwardDeletionCount])
  {
    [v6 appendFormat:@"; delete forward %u", -[TIKeyboardOutput forwardDeletionCount](self, "forwardDeletionCount")];
  }

  v14 = [(TIKeyboardOutput *)self insertionTextAfterSelection];

  if (v14)
  {
    v15 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
    [v6 appendFormat:@"; insert %@ (after selection)", v15];
  }

  v16 = [(TIKeyboardOutput *)self shortcutConversion];

  if (v16)
  {
    v17 = [(TIKeyboardOutput *)self shortcutConversion];
    v18 = [v17 candidate];
    [v6 appendFormat:@"; shortcutConversion = %@", v18];
  }

  v19 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];

  if (v19)
  {
    v20 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
    [v6 appendFormat:@"; handwritingStrokesToDelete = %@", v20];
  }

  if ([(TIKeyboardOutput *)self shouldSendCurrentLocation])
  {
    [v6 appendString:@"; shouldSendCurrentLocation = YES"];
  }

  v21 = [(TIKeyboardOutput *)self customInfo];

  if (v21)
  {
    v22 = [(TIKeyboardOutput *)self customInfo];
    [v6 appendFormat:@"; secureCandidateInfo = %@", v22];
  }

  if ([(TIKeyboardOutput *)self producedByDeleteInput])
  {
    [v6 appendString:@"; producedByDeleteInput = YES"];
  }

  v23 = [(TIKeyboardOutput *)self delimitingPrefix];

  if (v23)
  {
    v24 = [(TIKeyboardOutput *)self delimitingPrefix];
    [v6 appendFormat:@"; delimitingPrefix = %@", v24];
  }

  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TIKeyboardOutput *)self acceptedCandidate];
  v4 = [v3 hash];

  v5 = [(TIKeyboardOutput *)self textToCommit];
  v6 = [v5 hash] + 257 * v4;

  v7 = 257 * (257 * v6 + [(TIKeyboardOutput *)self positionOffset]);
  v8 = 257 * (v7 + [(TIKeyboardOutput *)self deletionCount]);
  v9 = [(TIKeyboardOutput *)self insertionText];
  v10 = v8 + [v9 hash];

  v11 = 257 * (257 * v10 + [(TIKeyboardOutput *)self forwardDeletionCount]);
  v12 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
  v13 = [v12 hash] + v11;

  v14 = [(TIKeyboardOutput *)self shortcutConversion];
  v15 = [v14 hash] + 257 * v13;

  v16 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
  v17 = [v16 hash] + 257 * v15;

  v18 = [(TIKeyboardOutput *)self customInfo];
  v19 = [v18 hash] + 257 * v17;

  v20 = 257 * (257 * v19 + [(TIKeyboardOutput *)self producedByDeleteInput]);
  v21 = [(TIKeyboardOutput *)self delimitingPrefix];
  v22 = [v21 hash];

  return v20 + v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TIKeyboardOutput *)self acceptedCandidate];
    v7 = [v5 acceptedCandidate];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TIKeyboardOutput *)self acceptedCandidate];
      v10 = [v5 acceptedCandidate];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    v13 = [(TIKeyboardOutput *)self textToCommit];
    v14 = [v5 textToCommit];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(TIKeyboardOutput *)self textToCommit];
      v17 = [v5 textToCommit];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    v19 = [(TIKeyboardOutput *)self unmarkIfNecessary];
    if (v19 != [v5 unmarkIfNecessary])
    {
      goto LABEL_34;
    }

    v20 = [(TIKeyboardOutput *)self positionOffset];
    if (v20 != [v5 positionOffset])
    {
      goto LABEL_34;
    }

    v21 = [(TIKeyboardOutput *)self deletionCount];
    if (v21 != [v5 deletionCount])
    {
      goto LABEL_34;
    }

    v22 = [(TIKeyboardOutput *)self insertionText];
    v23 = [v5 insertionText];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(TIKeyboardOutput *)self insertionText];
      v26 = [v5 insertionText];
      v27 = [v25 isEqualToString:v26];

      if (!v27)
      {
        goto LABEL_34;
      }
    }

    v28 = [(TIKeyboardOutput *)self forwardDeletionCount];
    if (v28 == [v5 forwardDeletionCount])
    {
      v29 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
      v30 = [v5 insertionTextAfterSelection];
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        v32 = [(TIKeyboardOutput *)self insertionTextAfterSelection];
        v33 = [v5 insertionTextAfterSelection];
        v34 = [v32 isEqualToString:v33];

        if (!v34)
        {
          goto LABEL_34;
        }
      }

      v35 = [(TIKeyboardOutput *)self shortcutConversion];
      v36 = [v5 shortcutConversion];
      v37 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        v38 = [(TIKeyboardOutput *)self shortcutConversion];
        v39 = [v5 shortcutConversion];
        v40 = [v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_34;
        }
      }

      v41 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
      v42 = [v5 handwritingStrokesToDelete];
      v43 = v42;
      if (v41 == v42)
      {
      }

      else
      {
        v44 = [(TIKeyboardOutput *)self handwritingStrokesToDelete];
        v45 = [v5 handwritingStrokesToDelete];
        v46 = [v44 isEqual:v45];

        if (!v46)
        {
          goto LABEL_34;
        }
      }

      v47 = [(TIKeyboardOutput *)self shouldSendCurrentLocation];
      if (v47 == [v5 shouldSendCurrentLocation])
      {
        v48 = [(TIKeyboardOutput *)self customInfo];
        v49 = [v5 customInfo];

        if (v48 == v49)
        {
          v50 = [(TIKeyboardOutput *)self producedByDeleteInput];
          if (v50 == [v5 producedByDeleteInput])
          {
            v52 = [(TIKeyboardOutput *)self delimitingPrefix];
            v53 = [v5 delimitingPrefix];
            if (v52 == v53)
            {
              v12 = 1;
            }

            else
            {
              v54 = [(TIKeyboardOutput *)self delimitingPrefix];
              v55 = [v5 delimitingPrefix];
              v12 = [v54 isEqualToString:v55];
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

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  acceptedCandidate = self->_acceptedCandidate;
  if (acceptedCandidate)
  {
    [v15 encodeObject:acceptedCandidate forKey:@"acceptedCandidate"];
  }

  textToCommit = self->_textToCommit;
  if (textToCommit)
  {
    [v15 encodeObject:textToCommit forKey:@"textToCommit"];
  }

  if (self->_unmarkIfNecessary)
  {
    [v15 encodeBool:1 forKey:@"unmarkIfNecessary"];
  }

  if (self->_positionOffset)
  {
    [v15 encodeInteger:-[TIKeyboardOutput positionOffset](self forKey:{"positionOffset"), @"positionOffset"}];
  }

  deletionCount = self->_deletionCount;
  if (deletionCount)
  {
    [v15 encodeInteger:deletionCount forKey:@"deletionCount"];
  }

  insertionText = self->_insertionText;
  v8 = v15;
  if (insertionText)
  {
    [v15 encodeObject:insertionText forKey:@"insertionText"];
    v8 = v15;
  }

  forwardDeletionCount = self->_forwardDeletionCount;
  if (forwardDeletionCount)
  {
    [v15 encodeInteger:forwardDeletionCount forKey:@"forwardDeletionCount"];
    v8 = v15;
  }

  insertionTextAfterSelection = self->_insertionTextAfterSelection;
  if (insertionTextAfterSelection)
  {
    [v15 encodeObject:insertionTextAfterSelection forKey:@"insertionTextAfterSelection"];
    v8 = v15;
  }

  shortcutConversion = self->_shortcutConversion;
  if (shortcutConversion)
  {
    [v15 encodeObject:shortcutConversion forKey:@"shortcutConversion"];
    v8 = v15;
  }

  handwritingStrokesToDelete = self->_handwritingStrokesToDelete;
  if (handwritingStrokesToDelete)
  {
    [v15 encodeObject:handwritingStrokesToDelete forKey:@"handwritingStrokesToDelete"];
    v8 = v15;
  }

  if (self->_shouldSendCurrentLocation)
  {
    [v15 encodeBool:1 forKey:@"shouldSendCurrentLocation"];
    v8 = v15;
  }

  customInfo = self->_customInfo;
  if (customInfo)
  {
    [v15 encodeObject:customInfo forKey:@"customInfo"];
    v8 = v15;
  }

  if (self->_producedByDeleteInput)
  {
    [v15 encodeBool:1 forKey:@"producedByDeleteInput"];
    v8 = v15;
  }

  delimitingPrefix = self->_delimitingPrefix;
  if (delimitingPrefix)
  {
    [v15 encodeObject:delimitingPrefix forKey:@"delimitingPrefix"];
    v8 = v15;
  }
}

- (TIKeyboardOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = TIKeyboardOutput;
  v5 = [(TIKeyboardOutput *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textToCommit"];
    textToCommit = v5->_textToCommit;
    v5->_textToCommit = v8;

    v5->_unmarkIfNecessary = [v4 decodeBoolForKey:@"_unmarkIfNecessary"];
    v5->_positionOffset = [v4 decodeIntegerForKey:@"positionOffset"];
    v5->_deletionCount = [v4 decodeIntegerForKey:@"deletionCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insertionText"];
    v11 = [v10 copy];
    insertionText = v5->_insertionText;
    v5->_insertionText = v11;

    v5->_forwardDeletionCount = [v4 decodeIntegerForKey:@"forwardDeletionCount"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insertionTextAfterSelection"];
    v14 = [v13 copy];
    insertionTextAfterSelection = v5->_insertionTextAfterSelection;
    v5->_insertionTextAfterSelection = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutConversion"];
    shortcutConversion = v5->_shortcutConversion;
    v5->_shortcutConversion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handwritingStrokesToDelete"];
    v19 = [v18 copy];
    handwritingStrokesToDelete = v5->_handwritingStrokesToDelete;
    v5->_handwritingStrokesToDelete = v19;

    v5->_shouldSendCurrentLocation = [v4 decodeBoolForKey:@"shouldSendCurrentLocation"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v21 setWithObjects:{v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"customInfo"];
    v29 = [v28 mutableCopy];
    customInfo = v5->_customInfo;
    v5->_customInfo = v29;

    v5->_producedByDeleteInput = [v4 decodeBoolForKey:@"producedByDeleteInput"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delimitingPrefix"];
    v32 = [v31 copy];
    delimitingPrefix = v5->_delimitingPrefix;
    v5->_delimitingPrefix = v32;
  }

  return v5;
}

@end