@interface UIAlertControllerPresentationController
@end

@implementation UIAlertControllerPresentationController

uint64_t __74___UIAlertControllerPresentationController__prepareConstraintsIfNecessary__block_invoke(uint64_t a1)
{
  [objc_opt_class() positionContentsOfAlertController:*(a1 + 40) alertContentView:*(a1 + 48) availableSpaceView:*(a1 + 56) visualStyle:*(a1 + 32) updatableConstraints:*(*(a1 + 64) + 408)];
  [*(a1 + 40) _setShouldReverseActions:{objc_msgSend(*(a1 + 32), "_shouldReverseActions")}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 64) containerView];
  [v2 contentInsetsForContainerView:v3];
  v5 = v4;
  v7 = v6;

  v8 = [*(a1 + 48) topAnchor];
  v9 = [*(a1 + 56) topAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:v5];
  v11 = *(a1 + 64);
  v12 = *(v11 + 416);
  *(v11 + 416) = v10;

  v13 = [*(a1 + 48) bottomAnchor];
  v14 = [*(a1 + 56) bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-v7];
  v16 = *(a1 + 64);
  v17 = *(v16 + 424);
  *(v16 + 424) = v15;

  [*(a1 + 72) addObject:*(*(a1 + 64) + 416)];
  [*(a1 + 72) addObject:*(*(a1 + 64) + 424)];
  v19 = *(a1 + 72);
  v18 = *(a1 + 80);

  return [v18 addConstraints:v19];
}

@end