@interface PXStoryTiltedEdgeInsetsAnimation
- ($0D9E40152377BA30F182AD5EFB16E7FD)currentEdgeInsets;
- ($0D9E40152377BA30F182AD5EFB16E7FD)sourceEdgeInsets;
- ($0D9E40152377BA30F182AD5EFB16E7FD)targetEdgeInsets;
- (PXStoryTiltedEdgeInsetsAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5;
- (PXStoryTiltedEdgeInsetsAnimation)initWithIdentifier:(id)a3 sourceEdgeInsets:(id *)a4 targetEdgeInsets:(id *)a5 duration:(id *)a6 curveInfo:(id)a7;
- (PXStoryTiltedEdgeInsetsAnimation)initWithSourceEdgeInsets:(id *)a3 targetEdgeInsets:(id *)a4 duration:(id *)a5 curveInfo:(id)a6;
- (void)setCurrentEdgeInsets:(id *)a3;
- (void)updateCurrentValueWithProgress:(double)a3;
@end

@implementation PXStoryTiltedEdgeInsetsAnimation

- ($0D9E40152377BA30F182AD5EFB16E7FD)currentEdgeInsets
{
  v3 = *&self[5].var1.var0;
  *&retstr->var1.var1 = *&self[5].var0.var1;
  *&retstr->var2.var0 = v3;
  v4 = *&self[5].var2.var1;
  *&retstr->var2.var2 = *&self[5].var1.var2;
  *&retstr->var3.var1 = v4;
  v5 = *&self[4].var3.var2;
  *&retstr->var0.var0 = *&self[4].var3.var0;
  *&retstr->var0.var2 = v5;
  return self;
}

- ($0D9E40152377BA30F182AD5EFB16E7FD)targetEdgeInsets
{
  v3 = *&self[4].var1.var0;
  *&retstr->var1.var1 = *&self[4].var0.var1;
  *&retstr->var2.var0 = v3;
  v4 = *&self[4].var2.var1;
  *&retstr->var2.var2 = *&self[4].var1.var2;
  *&retstr->var3.var1 = v4;
  v5 = *&self[3].var3.var2;
  *&retstr->var0.var0 = *&self[3].var3.var0;
  *&retstr->var0.var2 = v5;
  return self;
}

- ($0D9E40152377BA30F182AD5EFB16E7FD)sourceEdgeInsets
{
  v3 = *&self[3].var1.var0;
  *&retstr->var1.var1 = *&self[3].var0.var1;
  *&retstr->var2.var0 = v3;
  v4 = *&self[3].var2.var1;
  *&retstr->var2.var2 = *&self[3].var1.var2;
  *&retstr->var3.var1 = v4;
  v5 = *&self[2].var3.var2;
  *&retstr->var0.var0 = *&self[2].var3.var0;
  *&retstr->var0.var2 = v5;
  return self;
}

- (void)setCurrentEdgeInsets:(id *)a3
{
  v4 = a3->var0.var0 == self->_currentEdgeInsets.top.preRotationInset && a3->var0.var1 == self->_currentEdgeInsets.top.rotationAngle && a3->var0.var2 == self->_currentEdgeInsets.top.postRotationInset;
  if (!v4 || (a3->var1.var0 == self->_currentEdgeInsets.left.preRotationInset ? (v5 = a3->var1.var1 == self->_currentEdgeInsets.left.rotationAngle) : (v5 = 0), v5 ? (v6 = a3->var1.var2 == self->_currentEdgeInsets.left.postRotationInset) : (v6 = 0), v6 ? (v7 = a3->var2.var0 == self->_currentEdgeInsets.bottom.preRotationInset) : (v7 = 0), v7 ? (v8 = a3->var2.var1 == self->_currentEdgeInsets.bottom.rotationAngle) : (v8 = 0), v8 ? (v9 = a3->var2.var2 == self->_currentEdgeInsets.bottom.postRotationInset) : (v9 = 0), v9 ? (v10 = a3->var3.var0 == self->_currentEdgeInsets.right.preRotationInset) : (v10 = 0), v10 ? (v11 = a3->var3.var1 == self->_currentEdgeInsets.right.rotationAngle) : (v11 = 0), v11 ? (v12 = a3->var3.var2 == self->_currentEdgeInsets.right.postRotationInset) : (v12 = 0), !v12))
  {
    v13 = *&a3->var0.var2;
    *&self->_currentEdgeInsets.top.preRotationInset = *&a3->var0.var0;
    *&self->_currentEdgeInsets.top.postRotationInset = v13;
    v14 = *&a3->var1.var1;
    v15 = *&a3->var2.var0;
    v16 = *&a3->var3.var1;
    *&self->_currentEdgeInsets.bottom.postRotationInset = *&a3->var2.var2;
    *&self->_currentEdgeInsets.right.rotationAngle = v16;
    *&self->_currentEdgeInsets.left.rotationAngle = v14;
    *&self->_currentEdgeInsets.bottom.preRotationInset = v15;
    [(PXStoryTiltedEdgeInsetsAnimation *)self signalChange:4];
  }
}

- (void)updateCurrentValueWithProgress:(double)a3
{
  [(PXStoryTiltedEdgeInsetsAnimation *)self sourceEdgeInsets];
  [(PXStoryTiltedEdgeInsetsAnimation *)self targetEdgeInsets];
  PXFloatByLinearlyInterpolatingFloats();
}

- (PXStoryTiltedEdgeInsetsAnimation)initWithSourceEdgeInsets:(id *)a3 targetEdgeInsets:(id *)a4 duration:(id *)a5 curveInfo:(id)a6
{
  v6 = *&a3->var2.var0;
  v15[2] = *&a3->var1.var1;
  v15[3] = v6;
  v7 = *&a3->var3.var1;
  v15[4] = *&a3->var2.var2;
  v15[5] = v7;
  v8 = *&a3->var0.var2;
  v15[0] = *&a3->var0.var0;
  v15[1] = v8;
  v9 = *&a4->var2.var0;
  v14[2] = *&a4->var1.var1;
  v14[3] = v9;
  v10 = *&a4->var3.var1;
  v14[4] = *&a4->var2.var2;
  v14[5] = v10;
  v11 = *&a4->var0.var2;
  v14[0] = *&a4->var0.var0;
  v14[1] = v11;
  v13 = *a5;
  return [(PXStoryTiltedEdgeInsetsAnimation *)self initWithIdentifier:0 sourceEdgeInsets:v15 targetEdgeInsets:v14 duration:&v13 curveInfo:a6.var0, *&a6.var1.var0];
}

- (PXStoryTiltedEdgeInsetsAnimation)initWithIdentifier:(id)a3 sourceEdgeInsets:(id *)a4 targetEdgeInsets:(id *)a5 duration:(id *)a6 curveInfo:(id)a7
{
  v19.receiver = self;
  v19.super_class = PXStoryTiltedEdgeInsetsAnimation;
  v18 = *a6;
  result = [(PXStoryValueAnimation *)&v19 initWithIdentifier:a3 duration:&v18 curveInfo:a7.var0, *&a7.var1.var0];
  if (result)
  {
    v10 = *&a4->var0.var2;
    *&result->_sourceEdgeInsets.top.preRotationInset = *&a4->var0.var0;
    *&result->_sourceEdgeInsets.top.postRotationInset = v10;
    v11 = *&a4->var3.var1;
    v13 = *&a4->var1.var1;
    v12 = *&a4->var2.var0;
    *&result->_sourceEdgeInsets.bottom.postRotationInset = *&a4->var2.var2;
    *&result->_sourceEdgeInsets.right.rotationAngle = v11;
    *&result->_sourceEdgeInsets.left.rotationAngle = v13;
    *&result->_sourceEdgeInsets.bottom.preRotationInset = v12;
    v14 = *&a5->var0.var2;
    *&result->_targetEdgeInsets.top.preRotationInset = *&a5->var0.var0;
    *&result->_targetEdgeInsets.top.postRotationInset = v14;
    v15 = *&a5->var3.var1;
    v17 = *&a5->var1.var1;
    v16 = *&a5->var2.var0;
    *&result->_targetEdgeInsets.bottom.postRotationInset = *&a5->var2.var2;
    *&result->_targetEdgeInsets.right.rotationAngle = v15;
    *&result->_targetEdgeInsets.left.rotationAngle = v17;
    *&result->_targetEdgeInsets.bottom.preRotationInset = v16;
    *&result->_currentEdgeInsets.bottom.postRotationInset = xmmword_1A53824C0;
    *&result->_currentEdgeInsets.right.rotationAngle = unk_1A53824D0;
    *&result->_currentEdgeInsets.left.rotationAngle = xmmword_1A53824A0;
    *&result->_currentEdgeInsets.bottom.preRotationInset = unk_1A53824B0;
    *&result->_currentEdgeInsets.top.preRotationInset = PXStoryTiltedEdgeInsetsNull;
    *&result->_currentEdgeInsets.top.postRotationInset = unk_1A5382490;
  }

  return result;
}

- (PXStoryTiltedEdgeInsetsAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PXStoryTiltedEdgeInsetsAnimation.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryTiltedEdgeInsetsAnimation initWithIdentifier:duration:curveInfo:]"}];

  abort();
}

@end