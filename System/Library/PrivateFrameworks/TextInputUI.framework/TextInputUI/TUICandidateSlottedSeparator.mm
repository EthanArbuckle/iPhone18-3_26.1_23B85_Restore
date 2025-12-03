@interface TUICandidateSlottedSeparator
- (void)setStyle:(id)style;
@end

@implementation TUICandidateSlottedSeparator

- (void)setStyle:(id)style
{
  styleCopy = style;
  style = [(TUICandidateLine *)self style];
  v6 = [style isEqual:styleCopy];

  if ((v6 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = TUICandidateSlottedSeparator;
    [(TUICandidateLine *)&v14 setStyle:styleCopy];
    [(TUICandidateSlottedSeparator *)self setBackgroundColor:0];
    imageView = [(TUICandidateSlottedSeparator *)self imageView];

    if (!imageView)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [(TUICandidateSlottedSeparator *)self bounds];
      v9 = [v8 initWithFrame:?];
      [(TUICandidateSlottedSeparator *)self setImageView:v9];

      imageView2 = [(TUICandidateSlottedSeparator *)self imageView];
      [imageView2 setAutoresizingMask:18];

      imageView3 = [(TUICandidateSlottedSeparator *)self imageView];
      [(TUICandidateSlottedSeparator *)self addSubview:imageView3];
    }

    slottedCellSeparatorImage = [styleCopy slottedCellSeparatorImage];
    imageView4 = [(TUICandidateSlottedSeparator *)self imageView];
    [imageView4 setImage:slottedCellSeparatorImage];
  }
}

@end