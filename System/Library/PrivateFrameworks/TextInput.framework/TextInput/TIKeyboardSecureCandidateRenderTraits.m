@interface TIKeyboardSecureCandidateRenderTraits
- (BOOL)isEqual:(id)a3;
- (TIKeyboardSecureCandidateLayoutTraits)layoutTraits;
- (TIKeyboardSecureCandidateRenderTraits)init;
- (TIKeyboardSecureCandidateRenderTraits)initWithCoder:(id)a3;
- (TIKeyboardSecureCandidateTextTraits)headerTextTraits;
- (TIKeyboardSecureCandidateTextTraits)inputTextTraits;
- (double)singleCellWidth;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setSingleCellWidth:(double)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    layoutTraits = self->_layoutTraits;
    if (layoutTraits != v5[2] && ![(TIKeyboardSecureCandidateLayoutTraits *)layoutTraits isEqual:?])
    {
      goto LABEL_30;
    }

    v7 = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
    v8 = [v5 headerTextTraits];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
      v11 = [v5 headerTextTraits];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v14 = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
    v15 = [v5 inputTextTraits];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
      v18 = [v5 inputTextTraits];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];
    v22 = [v5 prefixText];
    LODWORD(v20) = [v20 _string:v21 matchesString:v22];

    if (!v20)
    {
      goto LABEL_30;
    }

    v23 = MEMORY[0x1E696AEC0];
    v24 = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];
    v25 = [v5 suffixText];
    LODWORD(v23) = [v23 _string:v24 matchesString:v25];

    if (!v23)
    {
      goto LABEL_30;
    }

    v26 = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
    v27 = [v5 resultCountToSingleCellWidth];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
      v30 = [v5 resultCountToSingleCellWidth];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    v32 = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
    v33 = [v5 cellWidthOptions];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
      v36 = [v5 cellWidthOptions];
      v37 = [v35 isEqual:v36];

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
          v47 = [(TIKeyboardSecureCandidateRenderTraits *)self maxCellCount];
          if (v47 == [v5 maxCellCount])
          {
            v48 = [(TIKeyboardSecureCandidateRenderTraits *)self sharedCellCount];
            if (v48 == [v5 sharedCellCount])
            {
              [(TIKeyboardSecureCandidateRenderTraits *)self screenScale];
              v50 = v49;
              [v5 screenScale];
              if (v50 == v51)
              {
                v52 = [(TIKeyboardSecureCandidateRenderTraits *)self isCandidateUI];
                if (v52 == [v5 isCandidateUI])
                {
                  v54 = [(TIKeyboardSecureCandidateRenderTraits *)self isInlinePromptUI];
                  v13 = v54 ^ [v5 isInlinePromptUI] ^ 1;
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
  v4 = [(TIKeyboardSecureCandidateRenderTraits *)self headerTextTraits];
  [v3 appendFormat:@"; headerTextTraits = %@", v4];

  v5 = [(TIKeyboardSecureCandidateRenderTraits *)self inputTextTraits];
  [v3 appendFormat:@"; inputTextTraits = %@", v5];

  v6 = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];

  if (v6)
  {
    v7 = [(TIKeyboardSecureCandidateRenderTraits *)self prefixText];
    [v3 appendFormat:@"; prefixText = %@", v7];
  }

  v8 = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];

  if (v8)
  {
    v9 = [(TIKeyboardSecureCandidateRenderTraits *)self suffixText];
    [v3 appendFormat:@"; suffixText = %@", v9];
  }

  v10 = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"; resultCountToSingleCellWidth = (%@)", v11];

  v12 = [(TIKeyboardSecureCandidateRenderTraits *)self cellWidthOptions];
  v13 = [v12 description];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  layoutTraits = self->_layoutTraits;
  v17 = v4;
  if (layoutTraits)
  {
    [v4 encodeObject:layoutTraits forKey:@"layoutTraits"];
    v4 = v17;
  }

  headerTextTraits = self->_headerTextTraits;
  if (headerTextTraits)
  {
    [v17 encodeObject:headerTextTraits forKey:@"headerTextTraits"];
    v4 = v17;
  }

  inputTextTraits = self->_inputTextTraits;
  if (inputTextTraits)
  {
    [v17 encodeObject:inputTextTraits forKey:@"inputTextTraits"];
    v4 = v17;
  }

  prefixText = self->_prefixText;
  if (prefixText)
  {
    [v17 encodeObject:prefixText forKey:@"prefixText"];
    v4 = v17;
  }

  suffixText = self->_suffixText;
  if (suffixText)
  {
    [v17 encodeObject:suffixText forKey:@"suffixText"];
    v4 = v17;
  }

  resultCountToSingleCellWidth = self->_resultCountToSingleCellWidth;
  if (resultCountToSingleCellWidth)
  {
    [v17 encodeObject:resultCountToSingleCellWidth forKey:@"resultCountToSingleCellWidth"];
    v4 = v17;
  }

  cellWidthOptions = self->_cellWidthOptions;
  if (cellWidthOptions)
  {
    [v17 encodeObject:cellWidthOptions forKey:@"cellWidthOptions"];
    v4 = v17;
  }

  singleCellHeight = self->_singleCellHeight;
  if (singleCellHeight != 0.0)
  {
    *&singleCellHeight = singleCellHeight;
    [v17 encodeFloat:@"singleCellHeight" forKey:singleCellHeight];
    v4 = v17;
  }

  singleCellVerticalPadding = self->_singleCellVerticalPadding;
  if (singleCellVerticalPadding != 0.0)
  {
    *&singleCellVerticalPadding = singleCellVerticalPadding;
    [v17 encodeFloat:@"singleCellVerticalPadding" forKey:singleCellVerticalPadding];
    v4 = v17;
  }

  dividerLineWidth = self->_dividerLineWidth;
  if (dividerLineWidth != 0.0)
  {
    *&dividerLineWidth = dividerLineWidth;
    [v17 encodeFloat:@"dividerLineWidth" forKey:dividerLineWidth];
    v4 = v17;
  }

  maxCellCount = self->_maxCellCount;
  if (maxCellCount)
  {
    [v17 encodeInteger:maxCellCount forKey:@"maxCellCount"];
    v4 = v17;
  }

  screenScale = self->_screenScale;
  if (screenScale != 0.0)
  {
    *&screenScale = screenScale;
    [v17 encodeFloat:@"screenScale" forKey:screenScale];
    v4 = v17;
  }

  [v4 encodeBool:self->_isCandidateUI forKey:@"isCandidateUI"];
  [v17 encodeBool:self->_isInlinePromptUI forKey:@"isInlinePromptUI"];
}

- (TIKeyboardSecureCandidateRenderTraits)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = TIKeyboardSecureCandidateRenderTraits;
  v5 = [(TIKeyboardSecureCandidateRenderTraits *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutTraits"];
    layoutTraits = v5->_layoutTraits;
    v5->_layoutTraits = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerTextTraits"];
    headerTextTraits = v5->_headerTextTraits;
    v5->_headerTextTraits = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputTextTraits"];
    inputTextTraits = v5->_inputTextTraits;
    v5->_inputTextTraits = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefixText"];
    v13 = [v12 copy];
    prefixText = v5->_prefixText;
    v5->_prefixText = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suffixText"];
    v16 = [v15 copy];
    suffixText = v5->_suffixText;
    v5->_suffixText = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"resultCountToSingleCellWidth"];
    v22 = [v21 copy];
    resultCountToSingleCellWidth = v5->_resultCountToSingleCellWidth;
    v5->_resultCountToSingleCellWidth = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"cellWidthOptions"];
    v29 = [v28 copy];
    cellWidthOptions = v5->_cellWidthOptions;
    v5->_cellWidthOptions = v29;

    [v4 decodeFloatForKey:@"singleCellHeight"];
    v5->_singleCellHeight = v31;
    [v4 decodeFloatForKey:@"singleCellVerticalPadding"];
    v5->_singleCellVerticalPadding = v32;
    [v4 decodeFloatForKey:@"dividerLineWidth"];
    v5->_dividerLineWidth = v33;
    v5->_maxCellCount = [v4 decodeIntegerForKey:@"maxCellCount"];
    v5->_sharedCellCount = 0;
    [v4 decodeFloatForKey:@"screenScale"];
    v5->_screenScale = v34;
    v5->_isCandidateUI = [v4 decodeBoolForKey:@"isCandidateUI"];
    v5->_isInlinePromptUI = [v4 decodeBoolForKey:@"isInlinePromptUI"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TIKeyboardSecureCandidateRenderTraits);
  if (v5)
  {
    v6 = [(TIKeyboardSecureCandidateLayoutTraits *)self->_layoutTraits copyWithZone:a3];
    layoutTraits = v5->_layoutTraits;
    v5->_layoutTraits = v6;

    v8 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTextTraits copyWithZone:a3];
    headerTextTraits = v5->_headerTextTraits;
    v5->_headerTextTraits = v8;

    v10 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTextTraits copyWithZone:a3];
    inputTextTraits = v5->_inputTextTraits;
    v5->_inputTextTraits = v10;

    v12 = [(NSString *)self->_prefixText copyWithZone:a3];
    prefixText = v5->_prefixText;
    v5->_prefixText = v12;

    v14 = [(NSString *)self->_suffixText copyWithZone:a3];
    suffixText = v5->_suffixText;
    v5->_suffixText = v14;

    v16 = [(NSArray *)self->_resultCountToSingleCellWidth copyWithZone:a3];
    resultCountToSingleCellWidth = v5->_resultCountToSingleCellWidth;
    v5->_resultCountToSingleCellWidth = v16;

    v18 = [(NSDictionary *)self->_cellWidthOptions copyWithZone:a3];
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

- (void)setSingleCellWidth:(double)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(TIKeyboardSecureCandidateRenderTraits *)self setResultCountToSingleCellWidth:v5];
}

- (double)singleCellWidth
{
  v2 = [(TIKeyboardSecureCandidateRenderTraits *)self resultCountToSingleCellWidth];
  if ([v2 count])
  {
    v3 = [v2 lastObject];
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end