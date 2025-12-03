@interface _UIImmutablePasteControlConfiguration
- (void)setBaseBackgroundColor:(id)color;
- (void)setBaseForegroundColor:(id)color;
- (void)setCornerRadius:(double)radius;
- (void)setCornerStyle:(int64_t)style;
- (void)setDisplayMode:(unint64_t)mode;
@end

@implementation _UIImmutablePasteControlConfiguration

- (void)setDisplayMode:(unint64_t)mode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteControl.m" lineNumber:103 description:@"Configuration is immutable because it is a property of a paste control"];
}

- (void)setCornerStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteControl.m" lineNumber:107 description:@"Configuration is immutable because it is a property of a paste control"];
}

- (void)setCornerRadius:(double)radius
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteControl.m" lineNumber:111 description:@"Configuration is immutable because it is a property of a paste control"];
}

- (void)setBaseForegroundColor:(id)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteControl.m" lineNumber:115 description:@"Configuration is immutable because it is a property of a paste control"];
}

- (void)setBaseBackgroundColor:(id)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteControl.m" lineNumber:119 description:@"Configuration is immutable because it is a property of a paste control"];
}

@end