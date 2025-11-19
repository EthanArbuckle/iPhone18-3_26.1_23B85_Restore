@interface PUReviewScrubberSetupHelper
+ (double)heightForTraitCollection:(id)a3;
+ (id)createReviewScrubberWithDataSource:(id)a3 delegate:(id)a4;
+ (void)configureHeightConstraint:(id *)a3 forReviewScrubber:(id)a4 withTraitCollection:(id)a5;
+ (void)setupBaseConstraintsForReviewScrubber:(id)a3 inView:(id)a4;
@end

@implementation PUReviewScrubberSetupHelper

+ (void)configureHeightConstraint:(id *)a3 forReviewScrubber:(id)a4 withTraitCollection:(id)a5
{
  v11 = a4;
  [a1 heightForTraitCollection:a5];
  v9 = v8;
  if (*a3)
  {
    [*a3 setConstant:v8];
  }

  else
  {
    v10 = [v11 heightAnchor];
    *a3 = [v10 constraintEqualToConstant:v9];

    [*a3 setActive:1];
  }
}

+ (double)heightForTraitCollection:(id)a3
{
  v3 = [a3 horizontalSizeClass];
  if (!v3 || v3 == 2)
  {

    +[PUReviewScrubber regularWidthPreferredHeight];
  }

  else if (v3 == 1)
  {

    +[PUReviewScrubber compactWidthPreferredHeight];
  }

  else
  {
    return 0.0;
  }

  return result;
}

+ (void)setupBaseConstraintsForReviewScrubber:(id)a3 inView:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v6];
  v7 = [v5 safeAreaLayoutGuide];

  v17 = MEMORY[0x1E696ACD8];
  v18 = [v6 leadingAnchor];
  v8 = [v7 leadingAnchor];
  v9 = [v18 constraintEqualToAnchor:v8];
  v19[0] = v9;
  v10 = [v6 trailingAnchor];
  v11 = [v7 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v19[1] = v12;
  v13 = [v6 bottomAnchor];

  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v19[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v17 activateConstraints:v16];
}

+ (id)createReviewScrubberWithDataSource:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PUReviewScrubber);
  [(PUReviewScrubber *)v7 setDataSource:v6];

  [(PUReviewScrubber *)v7 setScrubberDelegate:v5];

  return v7;
}

@end