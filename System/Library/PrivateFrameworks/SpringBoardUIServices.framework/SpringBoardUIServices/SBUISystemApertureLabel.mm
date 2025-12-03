@interface SBUISystemApertureLabel
- (CGSize)_sizeOfLabelWithNewText:(id)text fittingSize:(CGSize)size;
- (id)_springAnimationForKeyPath:(id)path fromValue:(id)value toValue:(id)toValue;
- (void)_animateLayer:(id)layer andSetValueForKeyPath:(id)path fromValue:(id)value toValue:(id)toValue;
- (void)performTextSwapAnimationWithText:(id)text textColor:(id)color fittingSize:(CGSize)size sizeWillChangeBlock:(id)block didSetPropertiesBlock:(id)propertiesBlock;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation SBUISystemApertureLabel

- (void)setText:(id)text
{
  v5.receiver = self;
  v5.super_class = SBUISystemApertureLabel;
  [(SBUISystemApertureLabel *)&v5 setText:text];
  pendingText = self->_pendingText;
  self->_pendingText = 0;
}

- (void)setTextColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SBUISystemApertureLabel;
  [(SBUISystemApertureLabel *)&v5 setTextColor:color];
  pendingTextColor = self->_pendingTextColor;
  self->_pendingTextColor = 0;
}

- (void)performTextSwapAnimationWithText:(id)text textColor:(id)color fittingSize:(CGSize)size sizeWillChangeBlock:(id)block didSetPropertiesBlock:(id)propertiesBlock
{
  height = size.height;
  width = size.width;
  v43[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  colorCopy = color;
  propertiesBlockCopy = propertiesBlock;
  blockCopy = block;
  layer = [(SBUISystemApertureLabel *)self layer];
  v18 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v18 setName:@"gaussianBlur"];
  [v18 setValue:&unk_1F1DB5AE0 forKey:*MEMORY[0x1E6979BA8]];
  v43[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [layer setFilters:v19];

  [(SBUISystemApertureLabel *)self _animateLayer:layer andSetValueForKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:&unk_1F1DB5AE0 toValue:&unk_1F1DB5AF0];
  [(SBUISystemApertureLabel *)self _animateLayer:layer andSetValueForKeyPath:@"opacity" fromValue:&unk_1F1DB5B00 toValue:&unk_1F1DB5B10];
  [(SBUISystemApertureLabel *)self _animateLayer:layer andSetValueForKeyPath:@"transform.scale.xy" fromValue:&unk_1F1DB5B00 toValue:&unk_1F1DB5B10];
  [(SBUISystemApertureLabel *)self _sizeOfLabelWithNewText:textCopy fittingSize:width, height];
  v21 = v20;
  v23 = v22;
  blockCopy[2](blockCopy);

  objc_storeStrong(&self->_pendingText, text);
  objc_storeStrong(&self->_pendingTextColor, color);
  v24 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__SBUISystemApertureLabel_performTextSwapAnimationWithText_textColor_fittingSize_sizeWillChangeBlock_didSetPropertiesBlock___block_invoke;
  block[3] = &unk_1E789FA08;
  block[4] = self;
  v31 = textCopy;
  v41 = v21;
  v42 = v23;
  v39 = &unk_1F1DB5B00;
  v40 = propertiesBlockCopy;
  v32 = colorCopy;
  v33 = layer;
  v34 = &unk_1F1DB5AF0;
  v35 = &unk_1F1DB5AE0;
  v36 = &unk_1F1DB5B10;
  v37 = &unk_1F1DB5B00;
  v38 = &unk_1F1DB5B10;
  v25 = layer;
  v26 = propertiesBlockCopy;
  v27 = colorCopy;
  v28 = textCopy;
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

- (void)_animateLayer:(id)layer andSetValueForKeyPath:(id)path fromValue:(id)value toValue:(id)toValue
{
  toValueCopy = toValue;
  pathCopy = path;
  layerCopy = layer;
  v13 = [(SBUISystemApertureLabel *)self _springAnimationForKeyPath:pathCopy fromValue:value toValue:toValueCopy];
  [layerCopy addAnimation:v13 forKey:pathCopy];
  [layerCopy setValue:toValueCopy forKeyPath:pathCopy];
}

- (id)_springAnimationForKeyPath:(id)path fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v10 = [v7 animationWithKeyPath:path];
  [v10 setBeginTime:CACurrentMediaTime()];
  [v10 setFillMode:*MEMORY[0x1E69797D8]];
  [v10 setFromValue:valueCopy];

  [v10 setToValue:toValueCopy];
  [v10 setMass:2.0];
  [v10 setStiffness:300.0];
  [v10 setDamping:30.0];
  [v10 setDuration:0.5];

  return v10;
}

- (CGSize)_sizeOfLabelWithNewText:(id)text fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  textCopy = text;
  [(SBUISystemApertureLabel *)self sizeThatFits:width, height];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  font = [(SBUISystemApertureLabel *)self font];
  [v8 setFont:font];

  text = [(SBUISystemApertureLabel *)self text];
  [v8 setText:text];

  [v8 setNumberOfLines:{-[SBUISystemApertureLabel numberOfLines](self, "numberOfLines")}];
  [v8 sizeThatFits:{width, height}];
  [v8 setText:textCopy];

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