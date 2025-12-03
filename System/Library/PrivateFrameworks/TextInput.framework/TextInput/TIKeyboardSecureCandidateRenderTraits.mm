@interface TIKeyboardSecureCandidateRenderTraits
- (BOOL)isEqual:(id)equal;
- (TIKeyboardSecureCandidateLayoutTraits)layoutTraits;
- (TIKeyboardSecureCandidateRenderTraits)init;
- (TIKeyboardSecureCandidateRenderTraits)initWithCoder:(id)coder;
- (TIKeyboardSecureCandidateTextTraits)headerTextTraits;
- (TIKeyboardSecureCandidateTextTraits)inputTextTraits;
- (double)singleCellWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setSingleCellWidth:(double)width;
@end

@implementation TIKeyboardSecureCandidateRenderTraits

- (TIKeyboardSecureCandidateRenderTraits)init
{
  v5.receiver = self;
  v5.super_class = TIKeyboardSecureCandidateRenderTraits;
  v2 = [(TIKeyboardSecureCandidateRenderTraits *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIKeyboardSecureCandidateRenderTraits *)v2 setCellRenderingStyle:0];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    layoutTraits = self->_layoutTraits;
    if (layoutTraits != v5[2] && ![(TIKeyboardSecureCandidateLayoutTraits *)layoutTraits isEqual:?])
    {
      goto LABEL_30;
    }

    headerTextTraits = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
    headerTextTraits2 = [v5 headerTextTraits];
    v9 = headerTextTraits2;
    if (headerTextTraits == headerTextTraits2)
    {
    }

    else
    {
      headerTextTraits3 = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
      headerTextTraits4 = [v5 headerTextTraits];
      v12 = [headerTextTraits3 isEqual:headerTextTraits4];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    inputTextTraits = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
    inputTextTraits2 = [v5 inputTextTraits];
    v16 = inputTextTraits2;
    if (inputTextTraits == inputTextTraits2)
    {
    }

    else
    {
      inputTextTraits3 = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
      inputTextTraits4 = [v5 inputTextTraits];
      v19 = [inputTextTraits3 isEqual:inputTextTraits4];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    v20 = MEMORY[0x1E696AEC0];
    prefixText = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];
    prefixText2 = [v5 prefixText];
    LODWORD(v20) = [v20 _string:prefixText matchesString:prefixText2];

    if (!v20)
    {
      goto LABEL_30;
    }

    v23 = MEMORY[0x1E696AEC0];
    suffixText = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];
    suffixText2 = [v5 suffixText];
    LODWORD(v23) = [v23 _string:suffixText matchesString:suffixText2];

    if (!v23)
    {
      goto LABEL_30;
    }

    resultCountToSingleCellWidth = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
    resultCountToSingleCellWidth2 = [v5 resultCountToSingleCellWidth];
    v28 = resultCountToSingleCellWidth2;
    if (resultCountToSingleCellWidth == resultCountToSingleCellWidth2)
    {
    }

    else
    {
      resultCountToSingleCellWidth3 = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
      resultCountToSingleCellWidth4 = [v5 resultCountToSingleCellWidth];
      v31 = [resultCountToSingleCellWidth3 isEqual:resultCountToSingleCellWidth4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    cellWidthOptions = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
    cellWidthOptions2 = [v5 cellWidthOptions];
    v34 = cellWidthOptions2;
    if (cellWidthOptions == cellWidthOptions2)
    {
    }

    else
    {
      cellWidthOptions3 = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
      cellWidthOptions4 = [v5 cellWidthOptions];
      v37 = [cellWidthOptions3 isEqual:cellWidthOptions4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    [(TIKeyboardSecureCandidateRenderTraits *)self singleCellHeight];
    v39 = v38;
    [v5 singleCellHeight];
    if (v39 == v40)
    {
      [(TIKeyboardSecureCandidateRenderTraits *)self singleCellVerticalPadding];
      v42 = v41;
      [v5 singleCellVerticalPadding];
      if (v42 == v43)
      {
        [(TIKeyboardSecureCandidateRenderTraits *)self dividerLineWidth];
        v45 = v44;
        [v5 dividerLineWidth];
        if (v45 == v46)
        {
          maxCellCount = [(TIKeyboardSecureCandidateRenderTraits *)self maxCellCount];
          if (maxCellCount == [v5 maxCellCount])
          {
            sharedCellCount = [(TIKeyboardSecureCandidateRenderTraits *)self sharedCellCount];
            if (sharedCellCount == [v5 sharedCellCount])
            {
              [(TIKeyboardSecureCandidateRenderTraits *)self screenScale];
              v50 = v49;
              [v5 screenScale];
              if (v50 == v51)
              {
                isCandidateUI = [(TIKeyboardSecureCandidateRenderTraits *)self isCandidateUI];
                if (isCandidateUI == [v5 isCandidateUI])
                {
                  isInlinePromptUI = [(TIKeyboardSecureCandidateRenderTraits *)self isInlinePromptUI];
                  v13 = isInlinePromptUI ^ [v5 isInlinePromptUI] ^ 1;
                  goto LABEL_31;
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    LOBYTE(v13) = 0;
LABEL_31:

    goto LABEL_32;
  }

  LOBYTE(v13) = 0;
LABEL_32:

  return v13;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; layoutTraits = %@", self->_layoutTraits];
  headerTextTraits = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
  [v3 appendFormat:@"; headerTextTraits = %@", headerTextTraits];

  inputTextTraits = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
  [v3 appendFormat:@"; inputTextTraits = %@", inputTextTraits];

  prefixText = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];

  if (prefixText)
  {
    prefixText2 = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];
    [v3 appendFormat:@"; prefixText = %@", prefixText2];
  }

  suffixText = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];

  if (suffixText)
  {
    suffixText2 = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];
    [v3 appendFormat:@"; suffixText = %@", suffixText2];
  }

  resultCountToSingleCellWidth = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
  v11 = [resultCountToSingleCellWidth componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"; resultCountToSingleCellWidth = (%@)", v11];

  cellWidthOptions = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
  v13 = [cellWidthOptions description];
  [v3 appendFormat:@"; cellWidthOptions = %@", v13];

  [(TIKeyboardSecureCandidateRenderTraits *)self singleCellHeight];
  [v3 appendFormat:@"; singleCellHeight = %f", v14];
  [(TIKeyboardSecureCandidateRenderTraits *)self singleCellVerticalPadding];
  [v3 appendFormat:@"; singleCellVerticalPadding = %f", v15];
  [(TIKeyboardSecureCandidateRenderTraits *)self dividerLineWidth];
  [v3 appendFormat:@"; dividerLineWidth = %f", v16];
  [v3 appendFormat:@"; maxCellCount = %ld", -[TIKeyboardSecureCandidateRenderTraits maxCellCount](self, "maxCellCount")];
  [v3 appendFormat:@"; sharedCellCount = %ld", -[TIKeyboardSecureCandidateRenderTraits sharedCellCount](self, "sharedCellCount")];
  [(TIKeyboardSecureCandidateRenderTraits *)self screenScale];
  [v3 appendFormat:@"; screenScale = %f", v17];
  if ([(TIKeyboardSecureCandidateRenderTraits *)self isCandidateUI])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"; isCandidateUI = %@", v18];
  if ([(TIKeyboardSecureCandidateRenderTraits *)self isInlinePromptUI])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"; isInlinePromptUI = %@", v19];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  layoutTraits = self->_layoutTraits;
  v17 = coderCopy;
  if (layoutTraits)
  {
    [coderCopy encodeObject:layoutTraits forKey:@"layoutTraits"];
    coderCopy = v17;
  }

  headerTextTraits = self->_headerTextTraits;
  if (headerTextTraits)
  {
    [v17 encodeObject:headerTextTraits forKey:@"headerTextTraits"];
    coderCopy = v17;
  }

  inputTextTraits = self->_inputTextTraits;
  if (inputTextTraits)
  {
    [v17 encodeObject:inputTextTraits forKey:@"inputTextTraits"];
    coderCopy = v17;
  }

  prefixText = self->_prefixText;
  if (prefixText)
  {
    [v17 encodeObject:prefixText forKey:@"prefixText"];
    coderCopy = v17;
  }

  suffixText = self->_suffixText;
  if (suffixText)
  {
    [v17 encodeObject:suffixText forKey:@"suffixText"];
    coderCopy = v17;
  }

  resultCountToSingleCellWidth = self->_resultCountToSingleCellWidth;
  if (resultCountToSingleCellWidth)
  {
    [v17 encodeObject:resultCountToSingleCellWidth forKey:@"resultCountToSingleCellWidth"];
    coderCopy = v17;
  }

  cellWidthOptions = self->_cellWidthOptions;
  if (cellWidthOptions)
  {
    [v17 encodeObject:cellWidthOptions forKey:@"cellWidthOptions"];
    coderCopy = v17;
  }

  singleCellHeight = self->_singleCellHeight;
  if (singleCellHeight != 0.0)
  {
    *&singleCellHeight = singleCellHeight;
    [v17 encodeFloat:@"singleCellHeight" forKey:singleCellHeight];
    coderCopy = v17;
  }

  singleCellVerticalPadding = self->_singleCellVerticalPadding;
  if (singleCellVerticalPadding != 0.0)
  {
    *&singleCellVerticalPadding = singleCellVerticalPadding;
    [v17 encodeFloat:@"singleCellVerticalPadding" forKey:singleCellVerticalPadding];
    coderCopy = v17;
  }

  dividerLineWidth = self->_dividerLineWidth;
  if (dividerLineWidth != 0.0)
  {
    *&dividerLineWidth = dividerLineWidth;
    [v17 encodeFloat:@"dividerLineWidth" forKey:dividerLineWidth];
    coderCopy = v17;
  }

  maxCellCount = self->_maxCellCount;
  if (maxCellCount)
  {
    [v17 encodeInteger:maxCellCount forKey:@"maxCellCount"];
    coderCopy = v17;
  }

  screenScale = self->_screenScale;
  if (screenScale != 0.0)
  {
    *&screenScale = screenScale;
    [v17 encodeFloat:@"screenScale" forKey:screenScale];
    coderCopy = v17;
  }

  [coderCopy encodeBool:self->_isCandidateUI forKey:@"isCandidateUI"];
  [v17 encodeBool:self->_isInlinePromptUI forKey:@"isInlinePromptUI"];
}

- (TIKeyboardSecureCandidateRenderTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = TIKeyboardSecureCandidateRenderTraits;
  v5 = [(TIKeyboardSecureCandidateRenderTraits *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutTraits"];
    layoutTraits = v5->_layoutTraits;
    v5->_layoutTraits = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerTextTraits"];
    headerTextTraits = v5->_headerTextTraits;
    v5->_headerTextTraits = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputTextTraits"];
    inputTextTraits = v5->_inputTextTraits;
    v5->_inputTextTraits = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefixText"];
    v13 = [v12 copy];
    prefixText = v5->_prefixText;
    v5->_prefixText = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suffixText"];
    v16 = [v15 copy];
    suffixText = v5->_suffixText;
    v5->_suffixText = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"resultCountToSingleCellWidth"];
    v22 = [v21 copy];
    resultCountToSingleCellWidth = v5->_resultCountToSingleCellWidth;
    v5->_resultCountToSingleCellWidth = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"cellWidthOptions"];
    v29 = [v28 copy];
    cellWidthOptions = v5->_cellWidthOptions;
    v5->_cellWidthOptions = v29;

    [coderCopy decodeFloatForKey:@"singleCellHeight"];
    v5->_singleCellHeight = v31;
    [coderCopy decodeFloatForKey:@"singleCellVerticalPadding"];
    v5->_singleCellVerticalPadding = v32;
    [coderCopy decodeFloatForKey:@"dividerLineWidth"];
    v5->_dividerLineWidth = v33;
    v5->_maxCellCount = [coderCopy decodeIntegerForKey:@"maxCellCount"];
    v5->_sharedCellCount = 0;
    [coderCopy decodeFloatForKey:@"screenScale"];
    v5->_screenScale = v34;
    v5->_isCandidateUI = [coderCopy decodeBoolForKey:@"isCandidateUI"];
    v5->_isInlinePromptUI = [coderCopy decodeBoolForKey:@"isInlinePromptUI"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TIKeyboardSecureCandidateRenderTraits);
  if (v5)
  {
    v6 = [(TIKeyboardSecureCandidateLayoutTraits *)self->_layoutTraits copyWithZone:zone];
    layoutTraits = v5->_layoutTraits;
    v5->_layoutTraits = v6;

    v8 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTextTraits copyWithZone:zone];
    headerTextTraits = v5->_headerTextTraits;
    v5->_headerTextTraits = v8;

    v10 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTextTraits copyWithZone:zone];
    inputTextTraits = v5->_inputTextTraits;
    v5->_inputTextTraits = v10;

    v12 = [(NSString *)self->_prefixText copyWithZone:zone];
    prefixText = v5->_prefixText;
    v5->_prefixText = v12;

    v14 = [(NSString *)self->_suffixText copyWithZone:zone];
    suffixText = v5->_suffixText;
    v5->_suffixText = v14;

    v16 = [(NSArray *)self->_resultCountToSingleCellWidth copyWithZone:zone];
    resultCountToSingleCellWidth = v5->_resultCountToSingleCellWidth;
    v5->_resultCountToSingleCellWidth = v16;

    v18 = [(NSDictionary *)self->_cellWidthOptions copyWithZone:zone];
    cellWidthOptions = v5->_cellWidthOptions;
    v5->_cellWidthOptions = v18;

    v5->_singleCellHeight = self->_singleCellHeight;
    v5->_singleCellVerticalPadding = self->_singleCellVerticalPadding;
    v5->_dividerLineWidth = self->_dividerLineWidth;
    v5->_maxCellCount = self->_maxCellCount;
    v5->_sharedCellCount = self->_sharedCellCount;
    v5->_screenScale = self->_screenScale;
    v5->_cellRenderingStyle = self->_cellRenderingStyle;
    v5->_isCandidateUI = self->_isCandidateUI;
    v5->_isInlinePromptUI = self->_isInlinePromptUI;
  }

  return v5;
}

- (TIKeyboardSecureCandidateTextTraits)inputTextTraits
{
  inputTextTraits = self->_inputTextTraits;
  if (!inputTextTraits)
  {
    v4 = objc_opt_new();
    v5 = self->_inputTextTraits;
    self->_inputTextTraits = v4;

    inputTextTraits = self->_inputTextTraits;
  }

  return inputTextTraits;
}

- (TIKeyboardSecureCandidateTextTraits)headerTextTraits
{
  headerTextTraits = self->_headerTextTraits;
  if (!headerTextTraits)
  {
    v4 = objc_opt_new();
    v5 = self->_headerTextTraits;
    self->_headerTextTraits = v4;

    headerTextTraits = self->_headerTextTraits;
  }

  return headerTextTraits;
}

- (TIKeyboardSecureCandidateLayoutTraits)layoutTraits
{
  layoutTraits = self->_layoutTraits;
  if (!layoutTraits)
  {
    v4 = objc_opt_new();
    v5 = self->_layoutTraits;
    self->_layoutTraits = v4;

    layoutTraits = self->_layoutTraits;
  }

  return layoutTraits;
}

- (void)setSingleCellWidth:(double)width
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(TIKeyboardSecureCandidateRenderTraits *)self setResultCountToSingleCellWidth:v5];
}

- (double)singleCellWidth
{
  resultCountToSingleCellWidth = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
  if ([resultCountToSingleCellWidth count])
  {
    lastObject = [resultCountToSingleCellWidth lastObject];
    [lastObject doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end