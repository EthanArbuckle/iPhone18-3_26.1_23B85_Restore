@interface SBUISystemApertureLabel
- (CGSize)_sizeOfLabelWithNewText:(id)a3 fittingSize:(CGSize)a4;
- (id)_springAnimationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (void)_animateLayer:(id)a3 andSetValueForKeyPath:(id)a4 fromValue:(id)a5 toValue:(id)a6;
- (void)performTextSwapAnimationWithText:(id)a3 textColor:(id)a4 fittingSize:(CGSize)a5 sizeWillChangeBlock:(id)a6 didSetPropertiesBlock:(id)a7;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation SBUISystemApertureLabel

- (void)setText:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBUISystemApertureLabel;
  [(SBUISystemApertureLabel *)&v5 setText:a3];
  pendingText = self->_pendingText;
  self->_pendingText = 0;
}

- (void)setTextColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBUISystemApertureLabel;
  [(SBUISystemApertureLabel *)&v5 setTextColor:a3];
  pendingTextColor = self->_pendingTextColor;
  self->_pendingTextColor = 0;
}

- (void)performTextSwapAnimationWithText:(id)a3 textColor:(id)a4 fittingSize:(CGSize)a5 sizeWillChangeBlock:(id)a6 didSetPropertiesBlock:(id)a7
{
  height = a5.height;
  width = a5.width;
  v43[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v29 = a4;
  v15 = a7;
  v16 = a6;
  v17 = [(SBUISystemApertureLabel *)self layer];
  v18 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v18 setName:@"gaussianBlur"];
  [v18 setValue:&unk_1F1DB5AE0 forKey:*MEMORY[0x1E6979BA8]];
  v43[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v17 setFilters:v19];

  [(SBUISystemApertureLabel *)self _animateLayer:v17 andSetValueForKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_1F1DB5AE0 toValue:&unk_1F1DB5AF0];
  [(SBUISystemApertureLabel *)self _animateLayer:v17 andSetValueForKeyPath:@"opacity" fromValue:&unk_1F1DB5B00 toValue:&unk_1F1DB5B10];
  [(SBUISystemApertureLabel *)self _animateLayer:v17 andSetValueForKeyPath:@"transform.scale.xy" fromValue:&unk_1F1DB5B00 toValue:&unk_1F1DB5B10];
  [(SBUISystemApertureLabel *)self _sizeOfLabelWithNewText:v14 fittingSize:width, height];
  v21 = v20;
  v23 = v22;
  v16[2](v16);

  objc_storeStrong(&self->_pendingText, a3);
  objc_storeStrong(&self->_pendingTextColor, a4);
  v24 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__SBUISystemApertureLabel_performTextSwapAnimationWithText_textColor_fittingSize_sizeWillChangeBlock_didSetPropertiesBlock___block_invoke;
  block[3] = &unk_1E789FA08;
  block[4] = self;
  v31 = v14;
  v41 = v21;
  v42 = v23;
  v39 = &unk_1F1DB5B00;
  v40 = v15;
  v32 = v29;
  v33 = v17;
  v34 = &unk_1F1DB5AF0;
  v35 = &unk_1F1DB5AE0;
  v36 = &unk_1F1DB5B10;
  v37 = &unk_1F1DB5B00;
  v38 = &unk_1F1DB5B10;
  v25 = v17;
  v26 = v15;
  v27 = v29;
  v28 = v14;
  dispatch_after(v24, MEMORY[0x1E69E96A0], block);
}

uint64_t __124__SBUISystemApertureLabel_performTextSwapAnimationWithText_textColor_fittingSize_sizeWillChangeBlock_didSetPropertiesBlock___block_invoke(uint64_t a1)
{
  if (BSEqualStrings())
  {
    [*(a1 + 32) setText:*(a1 + 40)];
    v2 = *(a1 + 32);
    BSRectWithSize();
    [v2 setBounds:?];
  }

  if (BSEqualObjects())
  {
    [*(a1 + 32) setTextColor:*(a1 + 48)];
  }

  (*(*(a1 + 112) + 16))();
  [*(a1 + 32) _animateLayer:*(a1 + 56) andSetValueForKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:*(a1 + 64) toValue:*(a1 + 72)];
  [*(a1 + 32) _animateLayer:*(a1 + 56) andSetValueForKeyPath:@"opacity" fromValue:*(a1 + 80) toValue:*(a1 + 88)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return [v3 _animateLayer:v4 andSetValueForKeyPath:@"transform.scale.xy" fromValue:v5 toValue:v6];
}

- (void)_animateLayer:(id)a3 andSetValueForKeyPath:(id)a4 fromValue:(id)a5 toValue:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(SBUISystemApertureLabel *)self _springAnimationForKeyPath:v11 fromValue:a5 toValue:v10];
  [v12 addAnimation:v13 forKey:v11];
  [v12 setValue:v10 forKeyPath:v11];
}

- (id)_springAnimationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = MEMORY[0x1E69794A8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 animationWithKeyPath:a3];
  [v10 setBeginTime:CACurrentMediaTime()];
  [v10 setFillMode:*MEMORY[0x1E69797D8]];
  [v10 setFromValue:v9];

  [v10 setToValue:v8];
  [v10 setMass:2.0];
  [v10 setStiffness:300.0];
  [v10 setDamping:30.0];
  [v10 setDuration:0.5];

  return v10;
}

- (CGSize)_sizeOfLabelWithNewText:(id)a3 fittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(SBUISystemApertureLabel *)self sizeThatFits:width, height];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v9 = [(SBUISystemApertureLabel *)self font];
  [v8 setFont:v9];

  v10 = [(SBUISystemApertureLabel *)self text];
  [v8 setText:v10];

  [v8 setNumberOfLines:{-[SBUISystemApertureLabel numberOfLines](self, "numberOfLines")}];
  [v8 sizeThatFits:{width, height}];
  [v8 setText:v7];

  [v8 sizeThatFits:{width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end