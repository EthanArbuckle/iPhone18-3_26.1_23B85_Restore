@interface _UILabelMutableSynthesizedContent
- (_UILabelMutableSynthesizedContent)initWithContent:(id)a3;
- (void)_resetSynthesizedResults;
- (void)setContent:(id)a3;
- (void)setDisableLinkHypenation:(BOOL)a3;
- (void)setOverallWritingDirectionFollowsLayoutDirection:(BOOL)a3;
- (void)setOverrideTextColor:(id)a3;
- (void)setTextEncapsulation:(id)a3;
@end

@implementation _UILabelMutableSynthesizedContent

- (_UILabelMutableSynthesizedContent)initWithContent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UILabelMutableSynthesizedContent;
  v6 = [(_UILabelMutableSynthesizedContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._content, a3);
  }

  return v7;
}

- (void)setContent:(id)a3
{
  objc_storeStrong(&self->super._content, a3);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setOverrideTextColor:(id)a3
{
  objc_storeStrong(&self->super._overrideTextColor, a3);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setOverallWritingDirectionFollowsLayoutDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFD | v3;
  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setDisableLinkHypenation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFB | v3;
  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setTextEncapsulation:(id)a3
{
  objc_storeStrong(&self->super._textEncapsulation, a3);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)_resetSynthesizedResults
{
  objc_setAssociatedObject(self, &_MergedGlobals_1406, 0, 0x301);

  objc_setAssociatedObject(self, &unk_1ED4A3138, 0, 0x301);
}

@end