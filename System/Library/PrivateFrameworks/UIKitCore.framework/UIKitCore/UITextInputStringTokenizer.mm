@interface UITextInputStringTokenizer
- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (UITextInputStringTokenizer)initWithTextInput:(UIResponder *)textInput;
- (id)_closestTokenSubrangeForPosition:(id)position granularity:(int64_t)granularity downstream:(BOOL)downstream;
- (id)_positionFromPosition:(id)position offset:(unint64_t)offset affinity:(int64_t)affinity;
- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction;
- (int64_t)_distanceForTokenizerWithGranularity:(int64_t)granularity;
- (int64_t)_indexForTextPosition:(id)position;
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

- (int64_t)_indexForTextPosition:(id)position
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v6 = [WeakRetained _indexForTextPosition:positionCopy];

  return v6;
}

- (int64_t)_distanceForTokenizerWithGranularity:(int64_t)granularity
{
  if (granularity > 4)
  {
    return 0;
  }

  else
  {
    return qword_18A680730[granularity];
  }
}

- (id)_closestTokenSubrangeForPosition:(id)position granularity:(int64_t)granularity downstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  positionCopy = position;
  v9 = [(UITextInputStringTokenizer *)self _distanceForTokenizerWithGranularity:granularity];
  if (v9 < 1)
  {
    goto LABEL_14;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  beginningOfDocument = [WeakRetained positionFromPosition:positionCopy offset:-v10];

  v13 = objc_loadWeakRetained(&self->_textInput);
  endOfDocument = [v13 positionFromPosition:positionCopy offset:v10];

  if (beginningOfDocument)
  {
    if (endOfDocument)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_textInput);
    beginningOfDocument = [v15 beginningOfDocument];

    if (endOfDocument)
    {
LABEL_4:
      if (!beginningOfDocument)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  v16 = objc_loadWeakRetained(&self->_textInput);
  endOfDocument = [v16 endOfDocument];

  if (!beginningOfDocument)
  {
LABEL_11:

LABEL_14:
    v23 = objc_loadWeakRetained(&self->_textInput);
    _fullText = [v23 _fullText];

    v22 = 0;
    goto LABEL_15;
  }

LABEL_8:
  if (!endOfDocument)
  {
    goto LABEL_11;
  }

  v17 = objc_loadWeakRetained(&self->_textInput);
  v18 = [v17 textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_textInput);
    _fullText = [v19 textInRange:v18];

    v21 = objc_loadWeakRetained(&self->_textInput);
    v22 = [v21 offsetFromPosition:beginningOfDocument toPosition:positionCopy];
  }

  else
  {
    _fullText = 0;
    v22 = 0;
  }

  if (!_fullText)
  {
    goto LABEL_14;
  }

LABEL_15:
  v24 = [_UITextInputStringTokenizerSubrange subrangeWithSubstring:_fullText basePosition:positionCopy];
  v25 = v22;
  [v24 setIndexOfBase:v22];
  length = 0;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  if (granularity > 1)
  {
    switch(granularity)
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

  if (granularity)
  {
    if (granularity != 1)
    {
      goto LABEL_38;
    }

    v28 = 0x2000000;
LABEL_25:
    v38.length = [(__CFString *)_fullText length];
    v38.location = 0;
    v29 = CFStringTokenizerCreate(0, _fullText, v38, v28, 0);
    if (downstreamCopy)
    {
      if ([(__CFString *)_fullText length]> v22)
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

          if ([(__CFString *)_fullText length]<= ++v25)
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
  if (downstreamCopy)
  {
    v36 = v22 + 1;
  }

  v27 = v36;
LABEL_38:
  [v24 setRelevantRange:{v27, length}];

  return v24;
}

- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = [(UITextInputStringTokenizer *)self _isDownstreamForDirection:direction atPosition:positionCopy];
  v10 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:positionCopy granularity:boundary downstream:!v9];
  relevantRange = [v10 relevantRange];
  if (relevantRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (boundary == 5 || boundary == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textInput);
      v14 = WeakRetained;
      if (direction == 1)
      {
        [WeakRetained beginningOfDocument];
      }

      else
      {
        [WeakRetained endOfDocument];
      }
      v19 = ;
      v18 = [positionCopy isEqual:v19];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v15 = relevantRange;
    v16 = v12;
    indexOfBase = [v10 indexOfBase];
    if (v9)
    {
      v18 = indexOfBase == v15 + v16;
    }

    else
    {
      v18 = indexOfBase == v15;
    }
  }

  return v18;
}

- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = [(UITextInputStringTokenizer *)self _isDownstreamForDirection:direction atPosition:positionCopy];
  v10 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:positionCopy granularity:boundary downstream:v9];
  relevantRange = [v10 relevantRange];
  if (relevantRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = relevantRange;
    v15 = v12;
    indexOfBase = [v10 indexOfBase];
    v17 = v14 + v15;
    if (indexOfBase <= v14 + v15)
    {
      v17 = v14;
    }

    if (indexOfBase >= v14)
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

    v13 = [(UITextInputStringTokenizer *)self _positionFromPosition:positionCopy offset:v19 - indexOfBase affinity:v9];
  }

  return v13;
}

- (id)_positionFromPosition:(id)position offset:(unint64_t)offset affinity:(int64_t)affinity
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v9 = [WeakRetained positionFromPosition:positionCopy offset:offset];

  return v9;
}

- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:positionCopy granularity:unit downstream:[(UITextInputStringTokenizer *)self _isDownstreamForDirection:direction atPosition:positionCopy]];

  relevantRange = [v9 relevantRange];
  if (relevantRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = relevantRange;
    v14 = v11;
    indexOfBase = [v9 indexOfBase];
    v12 = indexOfBase >= v13 && indexOfBase <= v13 + v14;
  }

  return v12;
}

- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = [(UITextInputStringTokenizer *)self _closestTokenSubrangeForPosition:positionCopy granularity:granularity downstream:[(UITextInputStringTokenizer *)self _isDownstreamForDirection:direction atPosition:positionCopy]];
  relevantRange = [v9 relevantRange];
  if (relevantRange == 0x7FFFFFFFFFFFFFFFLL || (v12 = relevantRange, v13 = v11, v14 = [v9 indexOfBase], v14 < v12) || (v15 = v12 + v13, v14 > v12 + v13))
  {
    v16 = 0;
  }

  else
  {
    v18 = v12 - v14;
    v19 = v15 - v14;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v21 = [WeakRetained positionFromPosition:positionCopy offset:v18];

    v22 = objc_loadWeakRetained(&self->_textInput);
    v23 = [v22 positionFromPosition:positionCopy offset:v19];

    v24 = objc_loadWeakRetained(&self->_textInput);
    v16 = [v24 textRangeFromPosition:v21 toPosition:v23];
  }

  return v16;
}

@end