@interface SSSDismissalContext
- (id)animationStyleString;
- (id)description;
- (id)dismissalString;
@end

@implementation SSSDismissalContext

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(SSSDismissalContext *)self dismissalString];
  [v3 appendFormat:@"\n\tdismissalType: %@", v4];

  v5 = [(SSSDismissalContext *)self animationStyleString];
  [v3 appendFormat:@"\n\tanimationStyle: %@", v5];

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
  v2 = [(SSSDismissalContext *)self dismissAnimationStyle];
  if (v2 > 2)
  {
    return @"UnknownValue";
  }

  else
  {
    return off_1E8590770[v2];
  }
}

- (id)dismissalString
{
  v2 = [(SSSDismissalContext *)self dismissalType];
  if (v2 > 0xA)
  {
    return @"UnknownValue";
  }

  else
  {
    return off_1E8590788[v2];
  }
}

@end