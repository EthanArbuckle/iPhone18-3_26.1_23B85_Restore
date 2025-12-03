@interface PUReviewScrubberSetupHelper
+ (double)heightForTraitCollection:(id)collection;
+ (id)createReviewScrubberWithDataSource:(id)source delegate:(id)delegate;
+ (void)configureHeightConstraint:(id *)constraint forReviewScrubber:(id)scrubber withTraitCollection:(id)collection;
+ (void)setupBaseConstraintsForReviewScrubber:(id)scrubber inView:(id)view;
@end

@implementation PUReviewScrubberSetupHelper

+ (void)configureHeightConstraint:(id *)constraint forReviewScrubber:(id)scrubber withTraitCollection:(id)collection
{
  scrubberCopy = scrubber;
  [self heightForTraitCollection:collection];
  v9 = v8;
  if (*constraint)
  {
    [*constraint setConstant:v8];
  }

  else
  {
    heightAnchor = [scrubberCopy heightAnchor];
    *constraint = [heightAnchor constraintEqualToConstant:v9];

    [*constraint setActive:1];
  }
}

+ (double)heightForTraitCollection:(id)collection
{
  horizontalSizeClass = [collection horizontalSizeClass];
  if (!horizontalSizeClass || horizontalSizeClass == 2)
  {

    +[PUReviewScrubber regularWidthPreferredHeight];
  }

  else if (horizontalSizeClass == 1)
  {

    +[PUReviewScrubber compactWidthPreferredHeight];
  }

  else
  {
    return 0.0;
  }

  return result;
}

+ (void)setupBaseConstraintsForReviewScrubber:(id)scrubber inView:(id)view
{
  v19[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  scrubberCopy = scrubber;
  [scrubberCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:scrubberCopy];
  safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];

  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [scrubberCopy leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v9;
  trailingAnchor = [scrubberCopy trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v12;
  bottomAnchor = [scrubberCopy bottomAnchor];

  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v17 activateConstraints:v16];
}

+ (id)createReviewScrubberWithDataSource:(id)source delegate:(id)delegate
{
  delegateCopy = delegate;
  sourceCopy = source;
  v7 = objc_alloc_init(PUReviewScrubber);
  [(PUReviewScrubber *)v7 setDataSource:sourceCopy];

  [(PUReviewScrubber *)v7 setScrubberDelegate:delegateCopy];

  return v7;
}

@end