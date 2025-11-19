@interface PKDynamicListSectionController
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKDynamicListSectionController

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);

  return v4;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69DC7E0];
  v6 = a3;
  v7 = [[v5 alloc] initWithAppearance:2];
  v8 = [(PKDynamicListSectionController *)self headerText];
  if (v8)
  {
  }

  else
  {
    v9 = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [v7 setHeaderMode:1];
LABEL_5:
  v10 = [(PKDynamicListSectionController *)self footerText];
  if (v10)
  {
  }

  else
  {
    v11 = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [v7 setFooterMode:1];
LABEL_9:
  v12 = [(PKDynamicListSectionController *)self leadingSwipeActionsConfigurationProvider];
  [v7 setLeadingSwipeActionsConfigurationProvider:v12];

  v13 = [(PKDynamicListSectionController *)self trailingSwipeActionsConfigurationProvider];
  [v7 setTrailingSwipeActionsConfigurationProvider:v13];

  v14 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v6];

  return v14;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v10 = [MEMORY[0x1E69DCC28] groupedHeaderConfiguration];
    if (self->_attributedHeaderText)
    {
LABEL_7:
      [v10 setAttributedText:?];
      goto LABEL_10;
    }

    headerText = self->_headerText;
  }

  else
  {
    if (*MEMORY[0x1E69DDC00] != v8)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x1E69DCC28] groupedFooterConfiguration];
    if (self->_attributedFooterText)
    {
      goto LABEL_7;
    }

    headerText = self->_footerText;
  }

  [v10 setText:headerText];
LABEL_10:
  [v12 setContentConfiguration:v10];
}

@end