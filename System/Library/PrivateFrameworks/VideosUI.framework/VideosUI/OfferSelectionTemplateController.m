@interface OfferSelectionTemplateController
- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation OfferSelectionTemplateController

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E41401E0();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1E414032C(a3);
}

- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_2_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4205F14();
  sub_1E41FE804();
  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_1E4140458(v14, v15);

  (*(v10 + 8))(v13);
}

@end