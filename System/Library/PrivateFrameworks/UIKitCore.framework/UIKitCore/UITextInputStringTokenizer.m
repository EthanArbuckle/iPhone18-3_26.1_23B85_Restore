@interface UITextInputStringTokenizer
- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (UITextInputStringTokenizer)initWithTextInput:(UIResponder *)textInput;
- (id)_closestTokenSubrangeForPosition:(id)a3 granularity:(int64_t)a4 downstream:(BOOL)a5;
- (id)_positionFromPosition:(id)a3 offset:(unint64_t)a4 affinity:(int64_t)a5;
- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5;
- (int64_t)_distanceForTokenizerWithGranularity:(int64_t)a3;
- (int64_t)_indexForTextPosition:(id)a3;
@end

@implementation UITextInputStringTokenizer

- (UITextInputStringTokenizer)initWithTextInput:(UIResponder *)textInput
{
  v4 = textInput;
  v9.receiver = self;
  v9.super_class = UITextInputStringTokenizer;
  v5 = [(UITextInputStringTokenizer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textInput, v4);
    v7 = v6;
  }

  return v6;
}

- (int64_t)_indexForTextPosition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v6 = [WeakRetained _indexForTextPosition:v4];

  return v6;
}

- (int64_t)_distanceForTokenizerWithGranularity:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_18A680730[a3];
  }
}

- (id)_closestTokenSubrangeForPosition:(id)a3 granularity:(int64_t)a4 downstream:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(UITextInputStringTokenizer *)self _distanceForTokenizerWithGranularity:a4];
  if (v9 < 1)
  {
    goto LABEL_14;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v12 = [WeakRetained positionFromPosition:v8 offset:-v10];

  v13 = objc_loadWeakRetained(&self->_textInput);
  v14 = [v13 positionFromPosition:v8 offset:v10];

  if (v12)
  {
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_textInput);
    v12 = [v15 beginningOfDocument];

    if (v14)
    {
LABEL_4:
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  v16 = objc_loadWeakRetained(&self->_textInput);
  v14 = [v16 endOfDocument];

  if (!v12)
  {
LABEL_11:

LABEL_14:
    v23 = objc_loadWeakRetained(&self->_textInput);
    v20 = [v23 _fullText];

    v22 = 0;
    goto LABEL_15;
  }

LABEL_8:
  if (!v14)
  {
    goto LABEL_11;
  }

  v17 = objc_loadWeakRetained(&self->_textInput);
  v18 = [v17 textRangeFromPosition:v12 toPosition:v14];

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_textInput);
    v20 = [v19 textInRange:v18];

    v21 = objc_loadWeakRetained(&self->_textInput);
    v22 = [v21 offsetFromPosition:v12 toPosition:v8];
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_15:
  v24 = [_UITextInputStringTokenizerSubrange subrangeWithSubstring:v20 basePosition:v8];
  v25 = v22;
  [v24 setIndexOfBase:v22];
  length = 0;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v28 = 1;
        break;
      case 3:
        v28 = 2;
        break;
      case 4:
        v28 = 3;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_25;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_38;
    }

    v28 = 0x2000000;
LABEL_25:
    v38.length = [(__CFString *)v20 length];
    v38.location = 0;
    v29 = CFStringTokenizerCreate(0, v20, v38, v28, 0);
    if (v5)
    {
      if ([(__CFString *)v20 length]> v22)
      {
        while (1)
        {
          CFStringTokenizerGoToTokenAtIndex(v29, v25);
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v29);
          location = CurrentTokenRange.location;
          length = CurrentTokenRange.length;
          if (CurrentTokenRange.location != -1)
          {
            break;
          }

          if ([(__CFString *)v20 length]<= ++v25)
          {
            goto LABEL_34;
          }
        }

LABEL_36:
        v27 = location;
        goto LABEL_37;
      }
    }

    else if (v22 >= 1)
    {
      v32 = v22 - 1;
      while (1)
      {
        CFStringTokenizerGoToTokenAtIndex(v29, v32);
        v33 = CFStringTokenizerGetCurrentTokenRange(v29);
        location = v33.location;
        length = v33.length;
        if (v33.location != -1)
        {
          goto LABEL_36;
        }

        v34 = v32-- + 1;
        if (v34 < 2)
        {
LABEL_34:
          v27 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_37;
        }
      }
    }

    length = 0;
LABEL_37:
    CFRelease(v29);
    goto LABEL_38;
  }

  length = 0;
  v36 = v22 - 1;
  if (v5)
  {
    v36 = v22 + 1;
  }

  v27 = v36;
LABEL_38:
  [v24 setRelevantRange:{v27, length}];

  return v24;
}

- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextInputStringTokenizer *)self _isDownstreamForDirection:a5 atPosition:v8];
  v10 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:v8 granularity:a4 downstream:!v9];
  v11 = [v10 relevantRange];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4 == 5 || a4 == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textInput);
      v14 = WeakRetained;
      if (a5 == 1)
      {
        [WeakRetained beginningOfDocument];
      }

      else
      {
        [WeakRetained endOfDocument];
      }
      v19 = ;
      v18 = [v8 isEqual:v19];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v15 = v11;
    v16 = v12;
    v17 = [v10 indexOfBase];
    if (v9)
    {
      v18 = v17 == v15 + v16;
    }

    else
    {
      v18 = v17 == v15;
    }
  }

  return v18;
}

- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextInputStringTokenizer *)self _isDownstreamForDirection:a5 atPosition:v8];
  v10 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:v8 granularity:a4 downstream:v9];
  v11 = [v10 relevantRange];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = v11;
    v15 = v12;
    v16 = [v10 indexOfBase];
    v17 = v14 + v15;
    if (v16 <= v14 + v15)
    {
      v17 = v14;
    }

    if (v16 >= v14)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + v14;
    if (!v9)
    {
      v19 = v17;
    }

    v13 = [(UITextInputStringTokenizer *)self _positionFromPosition:v8 offset:v19 - v16 affinity:v9];
  }

  return v13;
}

- (id)_positionFromPosition:(id)a3 offset:(unint64_t)a4 affinity:(int64_t)a5
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v9 = [WeakRetained positionFromPosition:v7 offset:a4];

  return v9;
}

- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:v8 granularity:a4 downstream:[(UITextInputStringTokenizer *)self _isDownstreamForDirection:a5 atPosition:v8]];

  v10 = [v9 relevantRange];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = [v9 indexOfBase];
    v12 = v15 >= v13 && v15 <= v13 + v14;
  }

  return v12;
}

- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:v8 granularity:a4 downstream:[(UITextInputStringTokenizer *)self _isDownstreamForDirection:a5 atPosition:v8]];
  v10 = [v9 relevantRange];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v12 = v10, v13 = v11, v14 = [v9 indexOfBase], v14 < v12) || (v15 = v12 + v13, v14 > v12 + v13))
  {
    v16 = 0;
  }

  else
  {
    v18 = v12 - v14;
    v19 = v15 - v14;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v21 = [WeakRetained positionFromPosition:v8 offset:v18];

    v22 = objc_loadWeakRetained(&self->_textInput);
    v23 = [v22 positionFromPosition:v8 offset:v19];

    v24 = objc_loadWeakRetained(&self->_textInput);
    v16 = [v24 textRangeFromPosition:v21 toPosition:v23];
  }

  return v16;
}

@end