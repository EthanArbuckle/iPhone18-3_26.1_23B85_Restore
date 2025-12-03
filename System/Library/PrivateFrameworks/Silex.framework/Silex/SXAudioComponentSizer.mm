@interface SXAudioComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXAudioComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component = [(SXComponentSizer *)self component];
  stillImageIdentifier = [component stillImageIdentifier];
  v9 = [dOMObjectProvider imageResourceForIdentifier:stillImageIdentifier];

  [v9 dimensions];
  v12 = 0.0;
  if (v10 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
  {
    v12 = v11 * (width / v10);
  }

  if (v12 >= 48.0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 48.0;
  }

  return v14;
}

@end