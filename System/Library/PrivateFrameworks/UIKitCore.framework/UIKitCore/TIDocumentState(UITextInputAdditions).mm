@interface TIDocumentState(UITextInputAdditions)
+ (id)documentStateOfDocument:()UITextInputAdditions;
+ (id)documentStateOfDocumentWithParagraph:()UITextInputAdditions;
+ (id)documentStateOfDocumentWithRecentInputIdentifier:()UITextInputAdditions;
+ (id)documentStateOfSecureTextDocument:()UITextInputAdditions;
- (id)_contextAfterPosition:()UITextInputAdditions inDocument:toBoundary:;
- (id)_contextBeforePosition:()UITextInputAdditions inDocument:toBoundary:;
- (id)_positionFromPosition:()UITextInputAdditions toPreviousWordBoundaryInDocument:tokenAccumulator:;
- (id)_positionFromPosition:()UITextInputAdditions toPreviousWordStartInDocument:tokenAccumulator:;
- (id)fullString;
- (id)initWithDocument:()UITextInputAdditions contextBoundary:;
- (id)initWithSecureTextDocument:()UITextInputAdditions;
- (id)textRangeFromPosition:()UITextInputAdditions toPosition:inDocument:;
- (uint64_t)_selectedTextRange;
- (uint64_t)copyTextInRange:()UITextInputAdditions fromDocument:;
@end

@implementation TIDocumentState(UITextInputAdditions)

- (uint64_t)_selectedTextRange
{
  v2 = [a1 contextBeforeInput];
  v3 = [v2 length];
  v4 = [a1 selectedText];
  [v4 length];

  return v3;
}

+ (id)documentStateOfDocument:()UITextInputAdditions
{
  v3 = MEMORY[0x1E69D9590];
  v4 = a3;
  v5 = [[v3 alloc] initWithDocument:v4];

  return v5;
}

+ (id)documentStateOfDocumentWithParagraph:()UITextInputAdditions
{
  v3 = MEMORY[0x1E69D9590];
  v4 = a3;
  v5 = [[v3 alloc] initWithDocumentWithParagraph:v4];

  return v5;
}

+ (id)documentStateOfDocumentWithRecentInputIdentifier:()UITextInputAdditions
{
  v3 = MEMORY[0x1E69D9590];
  v4 = a3;
  v5 = [[v3 alloc] initWithDocumentWithRecentInputIdentifier:v4];

  return v5;
}

+ (id)documentStateOfSecureTextDocument:()UITextInputAdditions
{
  v3 = MEMORY[0x1E69D9590];
  v4 = a3;
  v5 = [[v3 alloc] initWithSecureTextDocument:v4];

  return v5;
}

- (id)textRangeFromPosition:()UITextInputAdditions toPosition:inDocument:
{
  v6 = 0;
  if (a3 && a4)
  {
    v6 = [a5 textRangeFromPosition:? toPosition:?];
    v5 = vars8;
  }

  return v6;
}

- (uint64_t)copyTextInRange:()UITextInputAdditions fromDocument:
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v8 = [v6 textInRange:v5];
    v7 = [v8 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_positionFromPosition:()UITextInputAdditions toPreviousWordBoundaryInDocument:tokenAccumulator:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 3;
  while (1)
  {
    v11 = [v8 tokenizer];
    v12 = [v11 positionFromPosition:v7 toBoundary:1 inDirection:1];

    if (v12)
    {
      break;
    }

    v13 = [v8 tokenizer];
    v14 = [v13 positionFromPosition:v7 toBoundary:3 inDirection:1];

    if (!v14 || [v8 comparePosition:v14 toPosition:v7] != -1)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v15 = [v8 textRangeFromPosition:v14 toPosition:v7];
    v12 = [v8 textInRange:v15];

    v9[2](v9, v12);
    v16 = [v8 tokenizer];
    v17 = [v16 isPosition:v7 atBoundary:1 inDirection:0];

    if (v17)
    {
      v20 = v14;
      v14 = v20;
      goto LABEL_13;
    }

    v7 = v14;
    if (!--v10)
    {
      v18 = 0;
      v7 = v14;
      goto LABEL_17;
    }
  }

  v19 = [v8 textRangeFromPosition:v12 toPosition:v7];
  v14 = [v8 textInRange:v19];

  if ([v14 length] && objc_msgSend(v14, "rangeOfString:", @"\uFFFC") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9[2](v9, v14);
    v20 = v12;
LABEL_13:
    v18 = v20;
    goto LABEL_15;
  }

  v18 = 0;
LABEL_15:

LABEL_16:
LABEL_17:

  return v18;
}

- (id)_positionFromPosition:()UITextInputAdditions toPreviousWordStartInDocument:tokenAccumulator:
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 _positionFromPosition:a3 toPreviousWordBoundaryInDocument:v8 tokenAccumulator:v9];
  if (v10)
  {
    v11 = [v8 tokenizer];
    v12 = [v11 isPosition:v10 atBoundary:1 inDirection:1];

    if ((v12 & 1) == 0)
    {
      v13 = [a1 _positionFromPosition:v10 toPreviousWordBoundaryInDocument:v8 tokenAccumulator:v9];

      v10 = v13;
    }
  }

  return v10;
}

- (id)_contextBeforePosition:()UITextInputAdditions inDocument:toBoundary:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 tokenizer];
    v11 = [v10 positionFromPosition:v7 toBoundary:a5 inDirection:1];

    if (a5 == 3 && v11)
    {
      v12 = [v9 positionFromPosition:v11 offset:-2];
      if (!v12)
      {
        v12 = [v9 positionFromPosition:v11 offset:-1];
      }

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13;

      v11 = v14;
    }

    if (v11)
    {
      if ([v9 offsetFromPosition:v11 toPosition:v7] <= 0x63)
      {
        v15 = [v9 _positionAtStartOfWords:10 beforePosition:v7];
        if (v15)
        {
          v16 = v15;
          v17 = [v9 _positionFromPosition:v15 pastTextUnit:2 inDirection:1];

          if (v17 && [v9 comparePosition:v17 toPosition:v11] == -1)
          {
            v17 = v17;

            v11 = v17;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      v19 = [v9 textRangeFromPosition:v11 toPosition:v7];
      if (v19)
      {
        v18 = [v9 textInRange:v19];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v11 = 0;
  }

  return v18;
}

- (id)_contextAfterPosition:()UITextInputAdditions inDocument:toBoundary:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 tokenizer];
    v11 = [v10 positionFromPosition:v7 toBoundary:a5 inDirection:0];

    if (a5 == 3 && v11)
    {
      v12 = [v9 positionFromPosition:v11 offset:2];
      if (!v12)
      {
        v12 = [v9 positionFromPosition:v11 offset:1];
      }

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13;

      v11 = v14;
    }

    if (v11)
    {
      v15 = [v9 textRangeFromPosition:v7 toPosition:v11];
      if (v15)
      {
        v16 = [v9 textInRange:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v11 = 0;
  }

  return v16;
}

- (id)initWithDocument:()UITextInputAdditions contextBoundary:
{
  v5 = a3;
  v6 = [v5 selectedTextRange];
  v7 = [v5 markedTextRange];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 start];
    v49 = [a1 _contextBeforePosition:v12 inDocument:v5 toBoundary:a4];

    v13 = [v11 end];
    v14 = [a1 _contextAfterPosition:v13 inDocument:v5 toBoundary:a4];
  }

  else
  {
    v14 = 0;
    v49 = 0;
  }

  v46 = v14;
  v15 = [v8 start];
  v16 = [v6 start];
  v17 = [a1 textRangeFromPosition:v15 toPosition:v16 inDocument:v5];

  v18 = [v6 end];
  v19 = [v8 end];
  v20 = [a1 textRangeFromPosition:v18 toPosition:v19 inDocument:v5];

  v45 = v17;
  v21 = [a1 copyTextInRange:v17 fromDocument:v5];
  v22 = [a1 copyTextInRange:v6 fromDocument:v5];
  v44 = v20;
  v48 = [a1 copyTextInRange:v20 fromDocument:v5];
  v43 = v21;
  if (!v8)
  {
    v25 = 0;
LABEL_21:
    v36 = 0;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

  v23 = v21;
  v24 = v23;
  v25 = v23;
  if (v22)
  {
    v26 = [v23 stringByAppendingString:v22];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v22;
    }

    v25 = v28;
  }

  if (v48)
  {
    v29 = [v25 stringByAppendingString:v48];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v48;
    }

    v42 = v8;
    v32 = v6;
    v33 = v11;
    v34 = v31;

    v25 = v34;
    v11 = v33;
    v6 = v32;
  }

  if (!v25)
  {
    goto LABEL_21;
  }

  v35 = [v24 length];
  v36 = [v22 length];
LABEL_22:
  if (a4 == 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v37 = a1;
    v38 = v46;
    v39 = [v37 initWithUnboundedContextBefore:v49 markedText:v25 selectedText:v22 unboundedContextAfter:v46 selectedRangeInMarkedText:{v35, v36}];
  }

  else
  {
    v38 = v46;
    v39 = [a1 initWithContextBefore:v49 markedText:v25 selectedText:v22 contextAfter:v46 selectedRangeInMarkedText:{v35, v36, v42, v43}];
    v37 = v39;
  }

  v40 = v39;

  return v40;
}

- (id)initWithSecureTextDocument:()UITextInputAdditions
{
  v4 = a3;
  v5 = [v4 selectedTextRange];
  if (v5)
  {
    v6 = [v4 beginningOfDocument];
    v7 = [v5 start];
    v8 = [v4 textRangeFromPosition:v6 toPosition:v7];

    if ([v8 isEmpty])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v4 textInRange:v8];
    }

    if ([v5 isEmpty])
    {
      v11 = 0;
    }

    else
    {
      v11 = [v4 textInRange:v5];
    }

    v12 = [v5 end];
    v13 = [v4 endOfDocument];
    v14 = [v4 textRangeFromPosition:v12 toPosition:v13];

    if ([v14 isEmpty])
    {
      v15 = 0;
    }

    else
    {
      v15 = [v4 textInRange:v14];
    }

    v10 = [a1 initWithContextBefore:v9 markedText:0 selectedText:v11 contextAfter:v15 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
  }

  else
  {
    v10 = [a1 initWithContextBefore:0 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
  }

  return v10;
}

- (id)fullString
{
  v2 = [a1 contextBeforeInput];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = v4;

  v6 = [a1 selectedText];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = v8;

  v10 = [a1 contextAfterInput];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1EFB14550;
  }

  v13 = v12;

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v5, v9, v13];

  return v14;
}

@end