@interface SSSDismissalContext
- (id)animationStyleString;
- (id)description;
- (id)dismissalString;
@end

@implementation SSSDismissalContext

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  dismissalString = [(SSSDismissalContext *)self dismissalString];
  [v3 appendFormat:@"\n\tdismissalType: %@", dismissalString];

  animationStyleString = [(SSSDismissalContext *)self animationStyleString];
  [v3 appendFormat:@"\n\tanimationStyle: %@", animationStyleString];

  [v3 appendFormat:@"\n\tcropUsed: %d", -[SSSDismissalContext cropUsed](self, "cropUsed")];
  [v3 appendFormat:@"\n\tmarkupUsed: %d", -[SSSDismissalContext markupUsed](self, "markupUsed")];
  [v3 appendFormat:@"\n\tVIUsed: %d", -[SSSDismissalContext viUsed](self, "viUsed")];
  [v3 appendFormat:@"\n\tVIAvailable: %d", -[SSSDismissalContext viAvailable](self, "viAvailable")];
  [v3 appendFormat:@"\n\tdidShare: %d", -[SSSDismissalContext didShare](self, "didShare")];
  [v3 appendFormat:@"\n\tappearedFullscreen: %d", -[SSSDismissalContext appearedFullScreen](self, "appearedFullScreen")];
  [v3 appendFormat:@"\n\tnumberOfScreenshots: %ld", -[SSSDismissalContext numberOfScreenshots](self, "numberOfScreenshots")];

  return v3;
}

- (id)animationStyleString
{
  dismissAnimationStyle = [(SSSDismissalContext *)self dismissAnimationStyle];
  if (dismissAnimationStyle > 2)
  {
    return @"UnknownValue";
  }

  else
  {
    return off_1E8590770[dismissAnimationStyle];
  }
}

- (id)dismissalString
{
  dismissalType = [(SSSDismissalContext *)self dismissalType];
  if (dismissalType > 0xA)
  {
    return @"UnknownValue";
  }

  else
  {
    return off_1E8590788[dismissalType];
  }
}

@end