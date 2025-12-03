@interface OfferSelectionTemplateController
- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation OfferSelectionTemplateController

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E41401E0();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E414032C(appear);
}

- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_2_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4205F14();
  sub_1E41FE804();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_1E4140458(viewCopy, supplementaryViewCopy);

  (*(v10 + 8))(v13);
}

@end