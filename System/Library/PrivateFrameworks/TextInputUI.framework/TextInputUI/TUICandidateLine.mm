@interface TUICandidateLine
- (void)setStyle:(id)style;
@end

@implementation TUICandidateLine

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    lineColor = [styleCopy lineColor];
    [(TUICandidateLine *)self setBackgroundColor:lineColor];
  }
}

@end