@interface RTIInputSourceState
- (BOOL)isEqual:(id)equal;
- (CGRect)leftSplitFrame;
- (CGRect)rightSplitFrame;
- (RTIInputSourceState)init;
- (RTIInputSourceState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCenterFilled:(BOOL)filled;
- (void)setFloating:(BOOL)floating;
- (void)setHardwareKeyboardMode:(BOOL)mode;
- (void)setShowingEmojiSearch:(BOOL)search;
- (void)setShowsCandidateBar:(BOOL)bar;
- (void)setSplit:(BOOL)split;
- (void)setSupportsSetPhraseBoundary:(BOOL)boundary;
- (void)setUsesCandidateSelection:(BOOL)selection;
@end

@implementation RTIInputSourceState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  inputMode = self->_inputMode;
  v5 = coderCopy;
  if (inputMode)
  {
    [coderCopy encodeObject:inputMode forKey:@"im"];
    v5 = coderCopy;
  }

  [v5 encodeInt32:self->_inputSourceStateMask.integerValue forKey:@"mask"];
  if (!CGRectIsNull(self->_leftSplitFrame))
  {
    v6 = [MEMORY[0x1E696B098] valueWithRect:{self->_leftSplitFrame.origin.x, self->_leftSplitFrame.origin.y, self->_leftSplitFrame.size.width, self->_leftSplitFrame.size.height}];
    [coderCopy encodeObject:v6 forKey:@"lsf"];
  }

  if (!CGRectIsNull(self->_rightSplitFrame))
  {
    v7 = [MEMORY[0x1E696B098] valueWithRect:{self->_rightSplitFrame.origin.x, self->_rightSplitFrame.origin.y, self->_rightSplitFrame.size.width, self->_rightSplitFrame.size.height}];
    [coderCopy encodeObject:v7 forKey:@"rsf"];
  }
}

- (RTIInputSourceState)init
{
  v5.receiver = self;
  v5.super_class = RTIInputSourceState;
  result = [(RTIInputSourceState *)&v5 init];
  if (result)
  {
    result->_inputSourceStateMask.integerValue = 0;
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_leftSplitFrame.origin = *MEMORY[0x1E695F050];
    result->_leftSplitFrame.size = v4;
    result->_rightSplitFrame.origin = v3;
    result->_rightSplitFrame.size = v4;
  }

  return result;
}

- (RTIInputSourceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v23.receiver = self;
  v23.super_class = RTIInputSourceState;
  v5 = [(RTIInputSourceState *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"im"];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 2) = [coderCopy decodeInt32ForKey:@"mask"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsf"];
    v9 = v8;
    if (v8)
    {
      [v8 rectValue];
      *(v5 + 3) = v10;
      *(v5 + 4) = v11;
      *(v5 + 5) = v12;
      *(v5 + 6) = v13;
    }

    else
    {
      v14 = *(MEMORY[0x1E695F050] + 16);
      *(v5 + 24) = *MEMORY[0x1E695F050];
      *(v5 + 40) = v14;
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsf"];
    v16 = v15;
    if (v15)
    {
      [v15 rectValue];
      *(v5 + 7) = v17;
      *(v5 + 8) = v18;
      *(v5 + 9) = v19;
      *(v5 + 10) = v20;
    }

    else
    {
      v21 = *(MEMORY[0x1E695F050] + 16);
      *(v5 + 56) = *MEMORY[0x1E695F050];
      *(v5 + 72) = v21;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  inputMode = [(RTIInputSourceState *)self inputMode];
  [v3 appendFormat:@"; inputMode = %@", inputMode];

  if ([(RTIInputSourceState *)self minimized])
  {
    [v3 appendFormat:@"; minimized = %d", -[RTIInputSourceState minimized](self, "minimized")];
  }

  if ([(RTIInputSourceState *)self hardwareKeyboardMode])
  {
    [v3 appendFormat:@"; hardwareKeyboardMode = %d", -[RTIInputSourceState hardwareKeyboardMode](self, "hardwareKeyboardMode")];
  }

  if ([(RTIInputSourceState *)self centerFilled])
  {
    [v3 appendFormat:@"; centerFilled = %d", -[RTIInputSourceState centerFilled](self, "centerFilled")];
  }

  if ([(RTIInputSourceState *)self split])
  {
    [v3 appendFormat:@"; split = %d", -[RTIInputSourceState split](self, "split")];
    [(RTIInputSourceState *)self leftSplitFrame];
    if (!CGRectIsNull(v17))
    {
      [(RTIInputSourceState *)self leftSplitFrame];
      v9 = _RTI_NSStringFromCGRect(v5, v6, v7, v8);
      [v3 appendFormat:@"; leftSplitFrame = %@", v9];
    }

    [(RTIInputSourceState *)self rightSplitFrame];
    if (!CGRectIsNull(v18))
    {
      [(RTIInputSourceState *)self rightSplitFrame];
      v14 = _RTI_NSStringFromCGRect(v10, v11, v12, v13);
      [v3 appendFormat:@"; rightSplitFrame = %@", v14];
    }
  }

  if ([(RTIInputSourceState *)self floating])
  {
    [v3 appendFormat:@"; floating = %d", -[RTIInputSourceState floating](self, "floating")];
  }

  if ([(RTIInputSourceState *)self showingEmojiSearch])
  {
    [v3 appendFormat:@"; showingEmojiSearch = %d", -[RTIInputSourceState showingEmojiSearch](self, "showingEmojiSearch")];
  }

  if ([(RTIInputSourceState *)self usesCandidateSelection])
  {
    [v3 appendFormat:@"; usesCandidateSelection = %d", -[RTIInputSourceState usesCandidateSelection](self, "usesCandidateSelection")];
  }

  if ([(RTIInputSourceState *)self showsCandidateBar])
  {
    [v3 appendFormat:@"; showsCandidateBar = %d", -[RTIInputSourceState showsCandidateBar](self, "showsCandidateBar")];
  }

  if ([(RTIInputSourceState *)self supportsSetPhraseBoundary])
  {
    [v3 appendFormat:@"; supportsSetPhraseBoundary = %d", -[RTIInputSourceState supportsSetPhraseBoundary](self, "supportsSetPhraseBoundary")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      inputMode = [(RTIInputSourceState *)self inputMode];
      inputMode2 = [(RTIInputSourceState *)v5 inputMode];
      v8 = inputMode2;
      if (inputMode == inputMode2)
      {
      }

      else
      {
        inputMode3 = [(RTIInputSourceState *)self inputMode];
        inputMode4 = [(RTIInputSourceState *)v5 inputMode];
        v11 = [inputMode3 isEqual:inputMode4];

        if (!v11)
        {
          goto LABEL_19;
        }
      }

      minimized = [(RTIInputSourceState *)self minimized];
      if (minimized == [(RTIInputSourceState *)v5 minimized])
      {
        hardwareKeyboardMode = [(RTIInputSourceState *)self hardwareKeyboardMode];
        if (hardwareKeyboardMode == [(RTIInputSourceState *)v5 hardwareKeyboardMode])
        {
          centerFilled = [(RTIInputSourceState *)self centerFilled];
          if (centerFilled == [(RTIInputSourceState *)v5 centerFilled])
          {
            split = [(RTIInputSourceState *)self split];
            if (split == [(RTIInputSourceState *)v5 split])
            {
              [(RTIInputSourceState *)self leftSplitFrame];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              [(RTIInputSourceState *)self leftSplitFrame];
              v49.origin.x = v25;
              v49.origin.y = v26;
              v49.size.width = v27;
              v49.size.height = v28;
              v47.origin.x = v18;
              v47.origin.y = v20;
              v47.size.width = v22;
              v47.size.height = v24;
              if (CGRectEqualToRect(v47, v49))
              {
                [(RTIInputSourceState *)self rightSplitFrame];
                v30 = v29;
                v32 = v31;
                v34 = v33;
                v36 = v35;
                [(RTIInputSourceState *)self rightSplitFrame];
                v50.origin.x = v37;
                v50.origin.y = v38;
                v50.size.width = v39;
                v50.size.height = v40;
                v48.origin.x = v30;
                v48.origin.y = v32;
                v48.size.width = v34;
                v48.size.height = v36;
                if (CGRectEqualToRect(v48, v50))
                {
                  floating = [(RTIInputSourceState *)self floating];
                  if (floating == [(RTIInputSourceState *)v5 floating])
                  {
                    showingEmojiSearch = [(RTIInputSourceState *)self showingEmojiSearch];
                    if (showingEmojiSearch == [(RTIInputSourceState *)v5 showingEmojiSearch])
                    {
                      usesCandidateSelection = [(RTIInputSourceState *)self usesCandidateSelection];
                      if (usesCandidateSelection == [(RTIInputSourceState *)v5 usesCandidateSelection])
                      {
                        showsCandidateBar = [(RTIInputSourceState *)self showsCandidateBar];
                        if (showsCandidateBar == [(RTIInputSourceState *)v5 showsCandidateBar])
                        {
                          supportsSetPhraseBoundary = [(RTIInputSourceState *)self supportsSetPhraseBoundary];
                          v12 = supportsSetPhraseBoundary ^ [(RTIInputSourceState *)v5 supportsSetPhraseBoundary]^ 1;
                          goto LABEL_20;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_19:
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    LOBYTE(v12) = 0;
  }

LABEL_21:

  return v12;
}

- (void)setHardwareKeyboardMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFFD | v3;
}

- (void)setCenterFilled:(BOOL)filled
{
  if (filled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFFB | v3;
}

- (void)setSplit:(BOOL)split
{
  if (split)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFF7 | v3;
}

- (void)setFloating:(BOOL)floating
{
  if (floating)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFEF | v3;
}

- (void)setShowingEmojiSearch:(BOOL)search
{
  if (search)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFDF | v3;
}

- (void)setUsesCandidateSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFF7F | v3;
}

- (void)setShowsCandidateBar:(BOOL)bar
{
  if (bar)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFFBF | v3;
}

- (void)setSupportsSetPhraseBoundary:(BOOL)boundary
{
  if (boundary)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_inputSourceStateMask.integerValue) = self->_inputSourceStateMask.integerValue & 0xFEFF | v3;
}

- (CGRect)leftSplitFrame
{
  x = self->_leftSplitFrame.origin.x;
  y = self->_leftSplitFrame.origin.y;
  width = self->_leftSplitFrame.size.width;
  height = self->_leftSplitFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rightSplitFrame
{
  x = self->_rightSplitFrame.origin.x;
  y = self->_rightSplitFrame.origin.y;
  width = self->_rightSplitFrame.size.width;
  height = self->_rightSplitFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end