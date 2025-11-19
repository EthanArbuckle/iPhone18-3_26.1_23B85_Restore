@interface SXAudioComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXAudioComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = [(SXComponentSizer *)self DOMObjectProvider];
  v7 = [(SXComponentSizer *)self component];
  v8 = [v7 stillImageIdentifier];
  v9 = [v6 imageResourceForIdentifier:v8];

  [v9 dimensions];
  v12 = 0.0;
  if (v10 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
  {
    v12 = v11 * (a3 / v10);
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