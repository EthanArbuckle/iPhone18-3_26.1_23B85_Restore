@interface TUICandidateSlottedSeparator
- (void)setStyle:(id)a3;
@end

@implementation TUICandidateSlottedSeparator

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateLine *)self style];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = TUICandidateSlottedSeparator;
    [(TUICandidateLine *)&v14 setStyle:v4];
    [(TUICandidateSlottedSeparator *)self setBackgroundColor:0];
    v7 = [(TUICandidateSlottedSeparator *)self imageView];

    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [(TUICandidateSlottedSeparator *)self bounds];
      v9 = [v8 initWithFrame:?];
      [(TUICandidateSlottedSeparator *)self setImageView:v9];

      v10 = [(TUICandidateSlottedSeparator *)self imageView];
      [v10 setAutoresizingMask:18];

      v11 = [(TUICandidateSlottedSeparator *)self imageView];
      [(TUICandidateSlottedSeparator *)self addSubview:v11];
    }

    v12 = [v4 slottedCellSeparatorImage];
    v13 = [(TUICandidateSlottedSeparator *)self imageView];
    [v13 setImage:v12];
  }
}

@end