@interface TUICandidateLine
- (void)setStyle:(id)a3;
@end

@implementation TUICandidateLine

- (void)setStyle:(id)a3
{
  v6 = a3;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
    v5 = [v6 lineColor];
    [(TUICandidateLine *)self setBackgroundColor:v5];
  }
}

@end