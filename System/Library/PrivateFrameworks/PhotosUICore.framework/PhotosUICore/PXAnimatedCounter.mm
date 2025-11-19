@interface PXAnimatedCounter
- (CGSize)maxDigitSize;
- (CGSize)previousSize;
- (CGSize)requiredSizeForNumber:(unint64_t)a3;
- (PXAnimatedCounter)initWithCoder:(id)a3;
- (PXAnimatedCounter)initWithFrame:(CGRect)a3;
- (PXAnimatedCounter)initWithNumber:(unint64_t)a3;
- (double)_xOffsetForBackingLabel:(id)a3;
- (id)_labelForDigit:(unint64_t)a3;
- (id)_numberStringForNumber:(int64_t)a3;
- (int64_t)preferredAnimationStyleForNumber:(unint64_t)a3;
- (unint64_t)_numDigitsForNumber:(int64_t)a3;
- (void)_calculateLargestDigitSize;
- (void)_setCounterToNumber:(unint64_t)a3;
- (void)_updateFramesForShownDigits;
- (void)_updateSizeIfNeeded;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setNumber:(unint64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)setNumber:(unint64_t)a3 withAnimationStyle:(int64_t)a4 completionBlock:(id)a5;
@end

@implementation PXAnimatedCounter

- (CGSize)previousSize
{
  objc_copyStruct(v4, &self->_previousSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maxDigitSize
{
  objc_copyStruct(v4, &self->_maxDigitSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_labelForDigit:(unint64_t)a3
{
  v4 = [(PXAnimatedCounter *)self _numberStringForNumber:a3];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v5 setText:v4];
  v6 = [(PXAnimatedCounter *)self font];
  if (v6)
  {
    [v5 setFont:v6];
  }

  [v5 sizeToFit];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setTextColor:v7];

  [(PXAnimatedCounter *)self addSubview:v5];

  return v5;
}

- (void)_updateSizeIfNeeded
{
  [(PXAnimatedCounter *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXAnimatedCounter *)self previousSize];
  if (v8 != v12 || v10 != v11)
  {
    v14 = [(PXAnimatedCounter *)self backingLabel];
    [v14 setFrame:{v4, v6, v8, v10}];

    [(PXAnimatedCounter *)self _updateFramesForShownDigits];

    [(PXAnimatedCounter *)self setPreviousSize:v8, v10];
  }
}

- (void)_updateFramesForShownDigits
{
  v35 = [(PXAnimatedCounter *)self digitLabels];
  [(PXAnimatedCounter *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXAnimatedCounter *)self backingLabel];
  [(PXAnimatedCounter *)self _xOffsetForBackingLabel:v11];
  v13 = v12;
  v14 = [v35 count];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v33 = v13;
    v34 = v10;
    do
    {
      v17 = [v35 objectAtIndex:v16];
      [v11 boundingRectForCharacterRange:{v16, 1}];
      v19 = v18;
      v21 = v20;
      v22 = v8;
      v23 = v6;
      v24 = v4;
      v26 = v25;
      v28 = v27;
      [v17 bounds];
      Width = CGRectGetWidth(v37);
      v38.origin.x = v19;
      v38.origin.y = v21;
      v38.size.width = v26;
      v4 = v24;
      v6 = v23;
      v8 = v22;
      v38.size.height = v28;
      v30 = (Width - CGRectGetWidth(v38)) * -0.5;
      v39.origin.x = v4;
      v39.origin.y = v6;
      v39.size.width = v22;
      v39.size.height = v34;
      Height = CGRectGetHeight(v39);
      v32 = v33 + v19 + v30;
      [v17 setFrame:{roundf(v32), v21, Width, Height}];

      ++v16;
    }

    while (v15 != v16);
  }
}

- (void)_calculateLargestDigitSize
{
  v3 = 0;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DB648];
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = [(PXAnimatedCounter *)self _numberStringForNumber:v3];
    v14 = v4;
    v8 = [(PXAnimatedCounter *)self font];
    v15[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v7 sizeWithAttributes:v9];
    v11 = v10;
    v13 = v12;

    if (v11 > v5)
    {
      v6 = v13;
      v5 = v11;
    }

    ++v3;
  }

  while (v3 != 10);
  [(PXAnimatedCounter *)self setMaxDigitSize:v5, v6];
}

- (void)_setCounterToNumber:(unint64_t)a3
{
  self->_number = a3;
  v11 = [(PXAnimatedCounter *)self _numberStringForNumber:?];
  v4 = [v11 length];
  v5 = [(PXAnimatedCounter *)self digitLabels];
  if ([v5 count] >= v4)
  {
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    do
    {
      v6 = [(PXAnimatedCounter *)self _labelForDigit:0];
      [v5 addObject:v6];
    }

    while ([v5 count] < v4);
  }

  v7 = 0;
  do
  {
    v8 = [v11 substringWithRange:{v7, 1}];
    v9 = [v5 objectAtIndex:v7];
    [v9 setText:v8];

    ++v7;
  }

  while (v4 != v7);
LABEL_7:
  v10 = [(PXAnimatedCounter *)self backingLabel];
  [v10 setText:v11];

  [(PXAnimatedCounter *)self _updateFramesForShownDigits];
}

- (id)_numberStringForNumber:(int64_t)a3
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:0];

  return v5;
}

- (unint64_t)_numDigitsForNumber:(int64_t)a3
{
  v3 = [(PXAnimatedCounter *)self _numberStringForNumber:a3];
  v4 = [v3 length];

  return v4;
}

- (double)_xOffsetForBackingLabel:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PXAnimatedCounter *)self bounds];
  v14 = 0.0;
  if (v10 > v13)
  {
    v14 = v13 - v10;
    [v4 setFrame:{v6, v8, v10 + v13 - v10, v12}];
  }

  return v14;
}

- (void)setFont:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_font, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(PXAnimatedCounter *)self digitLabels];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setFont:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [(PXAnimatedCounter *)self backingLabel];
  [v11 setFont:v5];

  [(PXAnimatedCounter *)self _calculateLargestDigitSize];
}

- (CGSize)requiredSizeForNumber:(unint64_t)a3
{
  [(PXAnimatedCounter *)self maxDigitSize];
  v6 = v5;
  v8 = v7 * [(PXAnimatedCounter *)self _numDigitsForNumber:a3];
  v9 = ceilf(v8);
  v10 = v6;
  v11 = ceilf(v10);
  result.height = v11;
  result.width = v9;
  return result;
}

- (int64_t)preferredAnimationStyleForNumber:(unint64_t)a3
{
  number = self->_number;
  v4 = number >= a3;
  v5 = 2 * (number > a3);
  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

- (void)setNumber:(unint64_t)a3 withAnimationStyle:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = v8;
  v113 = a4;
  if (a4)
  {
    v100 = v8;
    number = self->_number;
    v11 = [(PXAnimatedCounter *)self _numberStringForNumber:number];
    self->_number = a3;
    v108 = a3;
    v12 = [(PXAnimatedCounter *)self _numberStringForNumber:a3];
    v13 = [v11 length];
    v14 = [v12 length];
    if (v14 >= v13)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v13 - v14;
    }

    v16 = [v11 length];
    if (v16 >= [v12 length])
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v11;
      do
      {
        v11 = [@"0" stringByAppendingString:v18];

        ++v17;
        v19 = [v11 length];
        v18 = v11;
      }

      while (v19 < [v12 length]);
    }

    v107 = number;
    v98 = v12;
    v20 = [MEMORY[0x1E696AD60] stringWithString:v12];
    v21 = [v20 length];
    if (v21 < [v11 length])
    {
      do
      {
        [v20 insertString:@"0" atIndex:0];
        v22 = [v20 length];
      }

      while (v22 < [v11 length]);
    }

    v23 = v15;
    v24 = [v20 length];
    v25 = [(PXAnimatedCounter *)self backingLabel];
    [v25 setText:v20];
    v99 = [(PXAnimatedCounter *)self digitLabels];
    [(PXAnimatedCounter *)self bounds];
    v105 = v27;
    v106 = v26;
    v103 = v29;
    v104 = v28;
    v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v26, v27, v28, v29}];
    [v30 setText:v11];
    [v30 setTextAlignment:2];
    v31 = [(PXAnimatedCounter *)self font];
    [v30 setFont:v31];

    v32 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v110 = v30;
    [v30 setTextColor:v32];

    v116 = self;
    v114 = v25;
    [(PXAnimatedCounter *)self _xOffsetForBackingLabel:v25];
    v124 = v33;
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24];
    v111 = v20;
    v112 = v11;
    v115 = v34;
    v109 = v24;
    if (v24)
    {
      v35 = 0;
      v36 = v113;
      if (v113 != 1)
      {
        v36 = -1;
      }

      v37 = -1;
      if (v113 != 1)
      {
        v37 = 1;
      }

      v38 = v36;
      v123 = v37;
      v101 = v15;
      v102 = v17;
      v130 = v36;
      do
      {
        v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:11];
        v119 = [v20 substringWithRange:{v35, 1}];
        v40 = [v119 integerValue];
        v118 = [v11 substringWithRange:{v35, 1}];
        v41 = [v118 integerValue];
        if (v35 < v17)
        {
          v42 = -1;
        }

        else
        {
          v42 = v41;
        }

        v43 = v40 - v42;
        if (v113 != 1)
        {
          v43 = v42 - v40;
        }

        if (v43 >= 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 + 10;
        }

        [v30 boundingRectForCharacterRange:{v35, 1}];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [v114 boundingRectForCharacterRange:{v35, 1}];
        v122 = v53;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v139.origin.x = v46;
        v139.origin.y = v48;
        v139.size.width = v50;
        v139.size.height = v52;
        MinX = CGRectGetMinX(v139);
        v140.origin.x = v46;
        v140.origin.y = v48;
        v140.size.width = v50;
        v140.size.height = v52;
        MinY = CGRectGetMinY(v140);
        v141.origin.y = v105;
        v141.origin.x = v106;
        v141.size.height = v103;
        v141.size.width = v104;
        Height = CGRectGetHeight(v141);
        v131 = v55;
        v132 = Height;
        if (v35 >= v23)
        {
          v62 = Height * v44;
        }

        else
        {
          v62 = Height + Height * v44;
        }

        v129 = v44;
        if (v35 >= v17)
        {
          v63 = [v99 objectAtIndex:v35 - v17];
          [v63 frame];
          v125 = v67;
          v127 = v66;
          if (v62 == 0.0)
          {
            v120 = v65;
            [v63 bounds];
            Width = CGRectGetWidth(v142);
            v143.origin.x = v122;
            v143.origin.y = v55;
            v143.size.width = v57;
            v143.size.height = v59;
            v70 = (Width - CGRectGetWidth(v143)) * -0.5;
            v144.origin.x = v122;
            v144.origin.y = v55;
            v144.size.width = v57;
            v144.size.height = v59;
            v71 = CGRectGetMinX(v144);
            v65 = v120;
            *&v71 = v124 + v71 + v70;
            v68 = roundf(*&v71);
          }

          else
          {
            v68 = v64;
          }

          v72 = [[PXLabelAnimationContext alloc] initWithLabel:v63 andDestinationRect:v68, v65 + v62 * v38, v127, v125];
          [v39 addObject:v72];
        }

        v121 = v35;
        v73 = off_1E771E000;
        v74 = v39;
        v75 = v132;
        v128 = v62;
        if (v44)
        {
          v126 = v42 + 10;
          v76 = -1;
          v77 = 1;
          do
          {
            if (v107 >= v108)
            {
              v78 = v76;
            }

            else
            {
              v78 = v77;
            }

            v79 = [(PXAnimatedCounter *)v116 _labelForDigit:(v126 + v78) % 10];
            [v79 sizeToFit];
            [v79 bounds];
            v80 = CGRectGetWidth(v145);
            v146.origin.x = v122;
            v146.origin.y = v131;
            v146.size.width = v57;
            v146.size.height = v59;
            v81 = (v80 - CGRectGetWidth(v146)) * -0.5;
            [v79 bounds];
            v83 = v82;
            v147.origin.x = v122;
            v147.origin.y = v131;
            v147.size.width = v57;
            v147.size.height = v59;
            v84 = v124 + MinX + (CGRectGetMinX(v147) - MinX) / v129 * v77 + v81;
            v85 = roundf(v84);
            [v79 setFrame:{v85, MinY + v75 * v77 * v123, v83, v132}];
            v86 = MinY + v75 * v77 * v123 + v128 * v130;
            v75 = v132;
            v87 = v44;
            v88 = v73;
            v89 = [objc_alloc(v73[94]) initWithLabel:v79 andDestinationRect:{v85, v86, v83, v132}];
            [v74 addObject:v89];

            v73 = v88;
            v44 = v87;

            ++v77;
            --v76;
          }

          while (v77 <= v87);
        }

        v34 = v115;
        [v115 addObject:v74];

        ++v35;
        v20 = v111;
        v11 = v112;
        v23 = v101;
        v17 = v102;
        v38 = v130;
      }

      while (v121 + 1 != v109);
    }

    [v114 setText:v98];
    v90 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v109];
    if ([v34 count])
    {
      v91 = 0;
      do
      {
        if (v91 >= v23)
        {
          v92 = [v34 objectAtIndex:v91];
          v93 = [v92 lastObject];
          v94 = [v93 label];

          [v90 addObject:v94];
        }

        ++v91;
      }

      while (v91 < [v34 count]);
    }

    [v99 removeAllObjects];
    [v99 addObjectsFromArray:v90];
    [MEMORY[0x1E6979518] flush];
    if ([v34 count])
    {
      v95 = 0;
      do
      {
        v96 = [v34 objectAtIndex:v95];
        if ([v96 count])
        {
          [(PXAnimatedCounter *)v116 setAnimationsInProgress:[(PXAnimatedCounter *)v116 animationsInProgress]+ 1];
          v97 = MEMORY[0x1E69DD250];
          v137[0] = MEMORY[0x1E69E9820];
          v137[1] = 3221225472;
          v137[2] = __66__PXAnimatedCounter_setNumber_withAnimationStyle_completionBlock___block_invoke;
          v137[3] = &unk_1E774C648;
          v138 = v96;
          v133[0] = MEMORY[0x1E69E9820];
          v133[1] = 3221225472;
          v133[2] = __66__PXAnimatedCounter_setNumber_withAnimationStyle_completionBlock___block_invoke_2;
          v133[3] = &unk_1E7745590;
          v133[4] = v116;
          v34 = v115;
          v134 = v138;
          v135 = v90;
          v136 = v100;
          [v97 animateWithDuration:0x10000 delay:v137 usingSpringWithDamping:v133 initialSpringVelocity:0.660000026 options:v95 * 0.1 animations:0.83 completion:0.0];
        }

        ++v95;
      }

      while (v95 < [v34 count]);
    }

    v9 = v100;
  }

  else
  {
    [(PXAnimatedCounter *)self _setCounterToNumber:a3];
    if (v9)
    {
      v9[2](v9, 1);
    }
  }
}

void __66__PXAnimatedCounter_setNumber_withAnimationStyle_completionBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v6 label];
        [v6 destinationRect];
        [v7 setFrame:?];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void __66__PXAnimatedCounter_setNumber_withAnimationStyle_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) animationsInProgress];
  v3 = [*(a1 + 40) valueForKeyPath:@"label"];
  v5 = [v3 mutableCopy];

  [v5 removeObjectsInArray:*(a1 + 48)];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperview];
  [*(a1 + 32) setAnimationsInProgress:--v2];
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
    }
  }
}

- (void)setNumber:(unint64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v9 = a5;
  if (v5)
  {
    v8 = [(PXAnimatedCounter *)self preferredAnimationStyleForNumber:a3];
  }

  else
  {
    v8 = 0;
  }

  [(PXAnimatedCounter *)self setNumber:a3 withAnimationStyle:v8 completionBlock:v9];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXAnimatedCounter;
  [(PXAnimatedCounter *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PXAnimatedCounter *)self _updateSizeIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXAnimatedCounter;
  [(PXAnimatedCounter *)&v3 layoutSubviews];
  [(PXAnimatedCounter *)self _updateSizeIfNeeded];
}

- (PXAnimatedCounter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCounter;
  v3 = [(PXAnimatedCounter *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedCounter *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedCounter)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCounter;
  v3 = [(PXAnimatedCounter *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedCounter *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedCounter)initWithNumber:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXAnimatedCounter;
  v4 = [(PXAnimatedCounter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PXAnimatedCounter *)v4 _setCounterToNumber:a3];
  }

  return v5;
}

- (void)commonInit
{
  self->_number = 0;
  self->_previousSize = *MEMORY[0x1E695F060];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  font = self->_font;
  self->_font = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  backingLabel = self->_backingLabel;
  self->_backingLabel = v5;

  v7 = self->_backingLabel;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
  [(UILabel *)v7 setText:v8];

  [(UILabel *)self->_backingLabel setTextAlignment:2];
  [(UILabel *)self->_backingLabel setFont:self->_font];
  v9 = self->_backingLabel;
  v10 = [MEMORY[0x1E69DC888] magentaColor];
  [(UILabel *)v9 setTextColor:v10];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  digitLabels = self->_digitLabels;
  self->_digitLabels = v11;

  v13 = self->_digitLabels;
  v14 = [(PXAnimatedCounter *)self _labelForDigit:0];
  [(NSMutableArray *)v13 addObject:v14];

  [(PXAnimatedCounter *)self _calculateLargestDigitSize];
}

@end