@interface _UILabelMutableSynthesizedContent
- (_UILabelMutableSynthesizedContent)initWithContent:(id)content;
- (void)_resetSynthesizedResults;
- (void)setContent:(id)content;
- (void)setDisableLinkHypenation:(BOOL)hypenation;
- (void)setOverallWritingDirectionFollowsLayoutDirection:(BOOL)direction;
- (void)setOverrideTextColor:(id)color;
- (void)setTextEncapsulation:(id)encapsulation;
@end

@implementation _UILabelMutableSynthesizedContent

- (_UILabelMutableSynthesizedContent)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = _UILabelMutableSynthesizedContent;
  v6 = [(_UILabelMutableSynthesizedContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._content, content);
  }

  return v7;
}

- (void)setContent:(id)content
{
  objc_storeStrong(&self->super._content, content);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setOverrideTextColor:(id)color
{
  objc_storeStrong(&self->super._overrideTextColor, color);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)setOverallWritingDirectionFollowsLayoutDirection:(BOOL)direction
{
  if (direction)
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

- (void)setDisableLinkHypenation:(BOOL)hypenation
{
  if (hypenation)
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

- (void)setTextEncapsulation:(id)encapsulation
{
  objc_storeStrong(&self->super._textEncapsulation, encapsulation);

  [(_UILabelMutableSynthesizedContent *)self _resetSynthesizedResults];
}

- (void)_resetSynthesizedResults
{
  objc_setAssociatedObject(self, &_MergedGlobals_1406, 0, 0x301);

  objc_setAssociatedObject(self, &unk_1ED4A3138, 0, 0x301);
}

@end