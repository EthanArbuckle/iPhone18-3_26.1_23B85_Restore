@interface UIDictationSearchButton
+ (id)button;
- (void)configureButtonForActiveInputType;
@end

@implementation UIDictationSearchButton

+ (id)button
{
  v2 = [(UIButton *)UIDictationSearchButton buttonWithType:0];
  [v2 configureButtonForActiveInputType];
  v3 = +[UIColor secondaryLabelColor];
  [v2 setTintColor:v3];

  [v2 setPointerInteractionEnabled:1];

  return v2;
}

- (void)configureButtonForActiveInputType
{
  if (_UISolariumEnabled())
  {
    v3 = @"microphone";
  }

  else
  {
    v3 = @"mic.fill";
  }

  v4 = [UIImage systemImageNamed:v3];
  [(UIButton *)self setImage:v4 forState:0];
}

@end