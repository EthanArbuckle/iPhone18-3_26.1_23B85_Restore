@interface PUFilmstripIndicatorTileController
- (id)loadView;
- (void)applyLayoutInfo:(id)info;
@end

@implementation PUFilmstripIndicatorTileController

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PUFilmstripIndicatorTileController;
  [(PUTileViewController *)&v14 applyLayoutInfo:infoCopy];
  v6 = infoCopy;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:764 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layoutInfo", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:764 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layoutInfo", v11, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  highlightColor = [v6 highlightColor];
  view = [(PUTileViewController *)self view];
  [view setPreferredHighlightColor:highlightColor];
}

- (id)loadView
{
  v2 = [PUPlayheadView alloc];
  v3 = [(PUPlayheadView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

@end