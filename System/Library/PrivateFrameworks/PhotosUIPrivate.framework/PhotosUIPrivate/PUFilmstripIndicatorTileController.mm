@interface PUFilmstripIndicatorTileController
- (id)loadView;
- (void)applyLayoutInfo:(id)a3;
@end

@implementation PUFilmstripIndicatorTileController

- (void)applyLayoutInfo:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PUFilmstripIndicatorTileController;
  [(PUTileViewController *)&v14 applyLayoutInfo:v5];
  v6 = v5;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:764 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layoutInfo", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:764 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layoutInfo", v11, v13}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = [v6 highlightColor];
  v8 = [(PUTileViewController *)self view];
  [v8 setPreferredHighlightColor:v7];
}

- (id)loadView
{
  v2 = [PUPlayheadView alloc];
  v3 = [(PUPlayheadView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

@end