@interface SBUISimpleFixedDigitPasscodeEntryField
- (BOOL)_hasAnyCharacters;
- (CGRect)_entryFieldBoundsWithXOffset:(double)a3;
- (CGSize)_viewSize;
- (SBUISimpleFixedDigitPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4;
- (UIEdgeInsets)_entryFieldPaddingOutsideRing;
- (void)_appendString:(id)a3;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3;
- (void)_deleteLastCharacter;
- (void)_resetForFailedPasscode:(BOOL)a3;
- (void)reset;
@end

@implementation SBUISimpleFixedDigitPasscodeEntryField

- (CGSize)_viewSize
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  [(SBUISimpleFixedDigitPasscodeEntryField *)self _entryFieldBoundsWithXOffset:0.0];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)_entryFieldPaddingOutsideRing
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  Height = CGRectGetHeight(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [MEMORY[0x1E69D3FE8] pinFixedDigitEntryFieldIndicatorPaddingWidth:Height >= CGRectGetWidth(v18)];
  v13 = v12;
  v14 = 0.0;
  v15 = 0.0;
  v16 = v13;
  result.right = v16;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
}

- (void)reset
{
  [(NSMutableArray *)self->_characterIndicators enumerateObjectsWithOptions:2 usingBlock:&__block_literal_global_4];
  v3.receiver = self;
  v3.super_class = SBUISimpleFixedDigitPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v3 reset];
}

- (SBUISimpleFixedDigitPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4
{
  v5 = a3;
  v59.receiver = self;
  v59.super_class = SBUISimpleFixedDigitPasscodeEntryField;
  v6 = [(SBUINumericPasscodeEntryFieldBase *)&v59 initWithDefaultSizeAndLightStyle:?];
  v7 = v6;
  if (v6)
  {
    [(SBUISimpleFixedDigitPasscodeEntryField *)v6 setClipsToBounds:1];
    [(SBUINumericPasscodeEntryFieldBase *)v7 setMaxNumbersAllowed:a4];
    v8 = [(SBUIPasscodeEntryField *)v7 _textField];
    v9 = 0.0;
    [v8 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v8 setHidden:1];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    characterIndicators = v7->_characterIndicators;
    v7->_characterIndicators = v10;

    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 bounds];
    v14 = v13;

    [(SBUISimpleFixedDigitPasscodeEntryField *)v7 _entryFieldBoundsWithXOffset:0.0];
    v16 = v15;
    v18 = v17 * a4;
    v19 = SBUIFloatFloorForMainScreenScale((v14 - v18) * 0.5);
    v20 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUISimpleFixedDigitPasscodeEntryField *)v7 bounds];
    v21 = [v20 initWithFrame:?];
    springView = v7->_springView;
    v7->_springView = v21;

    v23 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUISimpleFixedDigitPasscodeEntryField *)v7 bounds];
    v24 = [v23 initWithFrame:?];
    springViewParent = v7->_springViewParent;
    v7->_springViewParent = v24;

    [(UIView *)v7->_springView setAutoresizingMask:2];
    [(UIView *)v7->_springViewParent setAutoresizingMask:2];
    [(SBUISimpleFixedDigitPasscodeEntryField *)v7 addSubview:v7->_springViewParent];
    [(UIView *)v7->_springViewParent addSubview:v7->_springView];
    v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, 0.0, v18, v16}];
    characterIndicatorsContainerView = v7->_characterIndicatorsContainerView;
    v7->_characterIndicatorsContainerView = v26;

    v28 = v7->_characterIndicatorsContainerView;
    v29 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v28 setBackgroundColor:v29];

    [(UIView *)v7->_characterIndicatorsContainerView setAutoresizingMask:5];
    [(UIView *)v7->_springView addSubview:v7->_characterIndicatorsContainerView];
    [(SBUISimpleFixedDigitPasscodeEntryField *)v7 _entryFieldPaddingOutsideRing];
    if (a4)
    {
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = 0;
      do
      {
        v58 = v9;
        v39 = v38;
        [(SBUISimpleFixedDigitPasscodeEntryField *)v7 _entryFieldBoundsWithXOffset:v9];
        v40 = v37;
        v41 = v36;
        v42 = v35;
        v43 = v34;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v52 = [SBSimplePasscodeEntryFieldButton alloc];
        v53 = v45;
        v34 = v43;
        v35 = v42;
        v36 = v41;
        v37 = v40;
        v38 = [(SBSimplePasscodeEntryFieldButton *)v52 initWithFrame:v5 paddingOutsideRing:v53 useLightStyle:v47, v49, v51, v34, v35, v36, v40];

        [(NSMutableArray *)v7->_characterIndicators addObject:v38];
        [(UIView *)v7->_characterIndicatorsContainerView addSubview:v38];
        [(SBSimplePasscodeEntryFieldButton *)v38 size];
        v55 = v54;
        [(SBSimplePasscodeEntryFieldButton *)v38 setFrame:v58, 0.0, v54, v56];
        v9 = v58 + v55;
        --a4;
      }

      while (a4);
    }
  }

  return v7;
}

- (void)_appendString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBUIPasscodeEntryField *)self stringValue];
  v6 = [v5 length];

  if (v6 < [(SBUINumericPasscodeEntryFieldBase *)self maxNumbersAllowed])
  {
    v7 = [(UIView *)self->_springView layer];
    v8 = [v7 animationKeys];
    v9 = [v8 containsObject:@"shake"];

    if (v9)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = self->_characterIndicators;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if ([v15 isAnimatingUnreveal])
            {
              [v15 setRevealed:1 animated:1 delay:0.0];
              [v15 setRevealed:0 animated:1 delay:0.0];
            }
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v16 = [(UIView *)self->_springView layer];
      [v16 removeAnimationForKey:@"shake"];

      v17 = [(UIView *)self->_springViewParent layer];
      [v17 removeAnimationForKey:@"force-off-center"];

      v18 = v6 + 1;
      if (v6 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = v6 + 1;
    }

    if (v18 <= [(SBUINumericPasscodeEntryFieldBase *)self maxNumbersAllowed])
    {
      v19 = [(NSMutableArray *)self->_characterIndicators objectAtIndex:v6];
      [v19 setRevealed:1 animated:1];
    }

LABEL_17:
    v20.receiver = self;
    v20.super_class = SBUISimpleFixedDigitPasscodeEntryField;
    [(SBUINumericPasscodeEntryFieldBase *)&v20 _appendString:v4];
  }
}

- (void)_deleteLastCharacter
{
  v3 = [(SBUIPasscodeEntryField *)self stringValue];
  v4 = [v3 length];

  if (v4)
  {
    v5 = v4 - 1;
    if (v5 < [(NSMutableArray *)self->_characterIndicators count])
    {
      v6 = [(NSMutableArray *)self->_characterIndicators objectAtIndex:v5];
      [v6 setRevealed:0 animated:1];
    }
  }

  v7.receiver = self;
  v7.super_class = SBUISimpleFixedDigitPasscodeEntryField;
  [(SBUINumericPasscodeEntryFieldBase *)&v7 _deleteLastCharacter];
}

- (BOOL)_hasAnyCharacters
{
  v2 = [(SBUIPasscodeEntryField *)self stringValue];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_resetForFailedPasscode:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
  [v5 setMass:1.20000005];
  [v5 setStiffness:1200.0];
  [v5 setDamping:12.0];
  LODWORD(v6) = 1028389654;
  LODWORD(v7) = 990057071;
  LODWORD(v8) = 1059712716;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v6 :v7 :v8 :v9];
  [v5 setTimingFunction:v10];

  [v5 setDuration:0.666999996];
  [v5 setVelocity:0.0];
  v11 = *MEMORY[0x1E69797D8];
  [v5 setFillMode:*MEMORY[0x1E69797D8]];
  v12 = MEMORY[0x1E696AD98];
  v13 = [(UIView *)self->_springView layer];
  [v13 position];
  v15 = v14 + 75.0;
  *&v15 = v15;
  v16 = [v12 numberWithFloat:v15];
  [v5 setFromValue:v16];

  v17 = [(UIView *)self->_springView layer];
  [v17 addAnimation:v5 forKey:@"shake"];

  v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.x"];
  LODWORD(v19) = 1054276898;
  LODWORD(v20) = 1058305108;
  LODWORD(v21) = 1.0;
  v22 = [MEMORY[0x1E69793D0] functionWithControlPoints:v19 :0.0 :v20 :v21];
  [v18 setTimingFunction:v22];

  [v18 setDuration:0.100000001];
  [v18 setFillMode:v11];
  v23 = MEMORY[0x1E696AD98];
  v24 = [(UIView *)self->_springViewParent layer];
  [v24 position];
  v26 = v25 + -75.0;
  *&v26 = v26;
  v27 = [v23 numberWithFloat:v26];
  [v18 setFromValue:v27];

  v28 = [(UIView *)self->_springViewParent layer];
  [v28 addAnimation:v18 forKey:@"force-off-center"];

  v29.receiver = self;
  v29.super_class = SBUISimpleFixedDigitPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v29 _resetForFailedPasscode:v3];
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_characterIndicators;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = 0.0;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * v9) setRevealed:1 animated:1 delay:v8];
        v8 = v8 + 0.0166666666;
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
    v6 = (v8 * 1000000000.0);
  }

  v10 = dispatch_time(0, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__SBUISimpleFixedDigitPasscodeEntryField__autofillForBiometricAuthenticationWithCompletion___block_invoke;
  v12[3] = &unk_1E789E340;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_after(v10, MEMORY[0x1E69E96A0], v12);
}

id __92__SBUISimpleFixedDigitPasscodeEntryField__autofillForBiometricAuthenticationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = SBUISimpleFixedDigitPasscodeEntryField;
  return objc_msgSendSuper2(&v3, sel__autofillForBiometricAuthenticationWithCompletion_, v1);
}

- (CGRect)_entryFieldBoundsWithXOffset:(double)a3
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v14 = Height >= CGRectGetWidth(v23);
  [MEMORY[0x1E69D3FE8] pinFixedDigitEntryFieldIndicatorDiameter:v14];
  v16 = v15;
  [MEMORY[0x1E69D3FE8] pinFixedDigitEntryFieldIndicatorPaddingWidth:v14];
  v18 = v16 + v17 * 2.0;
  v19 = 0.0;
  v20 = a3;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v18;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

@end