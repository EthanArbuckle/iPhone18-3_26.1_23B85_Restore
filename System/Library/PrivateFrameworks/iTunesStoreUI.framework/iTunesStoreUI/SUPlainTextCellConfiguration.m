@interface SUPlainTextCellConfiguration
+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4;
- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUPlainTextCellConfiguration

+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4
{
  v5 = [a4 humanReadableDescription];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [a3 sizeForString:v5 font:objc_msgSend(MEMORY[0x1E69DB878] constrainedToSize:{"systemFontOfSize:", 15.0), v6 + -20.0, 3.40282347e38}];
  return v7;
}

- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6
{
  *a3 = [MEMORY[0x1E69DC888] whiteColor];
  *a4 = xmmword_1C2339F90;
  return 1;
}

- (void)reloadLayoutInformation
{
  stringFrames = self->super.super.super._stringFrames;
  layoutSize = self->super.super.super.super._layoutSize;
  stringFrames->origin.x = 0.0;
  stringFrames->origin.y = 0.0;
  stringFrames->size = layoutSize;
}

- (void)reloadStrings
{
  v3 = [self->super.super.super.super._representedObject humanReadableDescription];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *self->super.super.super._strings = v4;
}

@end