@interface SUPlainTextCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUPlainTextCellConfiguration

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  humanReadableDescription = [object humanReadableDescription];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [context sizeForString:humanReadableDescription font:objc_msgSend(MEMORY[0x1E69DB878] constrainedToSize:{"systemFontOfSize:", 15.0), v6 + -20.0, 3.40282347e38}];
  return v7;
}

- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  *color = [MEMORY[0x1E69DC888] whiteColor];
  *offset = xmmword_1C2339F90;
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
  humanReadableDescription = [self->super.super.super.super._representedObject humanReadableDescription];

  v4 = [humanReadableDescription length];
  if (v4)
  {
    v4 = humanReadableDescription;
  }

  *self->super.super.super._strings = v4;
}

@end