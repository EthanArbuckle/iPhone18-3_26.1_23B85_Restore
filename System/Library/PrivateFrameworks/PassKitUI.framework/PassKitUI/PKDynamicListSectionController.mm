@interface PKDynamicListSectionController
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
@end

@implementation PKDynamicListSectionController

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);

  return v4;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DC7E0];
  environmentCopy = environment;
  v7 = [[v5 alloc] initWithAppearance:2];
  headerText = [(PKDynamicListSectionController *)self headerText];
  if (headerText)
  {
  }

  else
  {
    attributedHeaderText = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!attributedHeaderText)
    {
      goto LABEL_5;
    }
  }

  [v7 setHeaderMode:1];
LABEL_5:
  footerText = [(PKDynamicListSectionController *)self footerText];
  if (footerText)
  {
  }

  else
  {
    attributedFooterText = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!attributedFooterText)
    {
      goto LABEL_9;
    }
  }

  [v7 setFooterMode:1];
LABEL_9:
  leadingSwipeActionsConfigurationProvider = [(PKDynamicListSectionController *)self leadingSwipeActionsConfigurationProvider];
  [v7 setLeadingSwipeActionsConfigurationProvider:leadingSwipeActionsConfigurationProvider];

  trailingSwipeActionsConfigurationProvider = [(PKDynamicListSectionController *)self trailingSwipeActionsConfigurationProvider];
  [v7 setTrailingSwipeActionsConfigurationProvider:trailingSwipeActionsConfigurationProvider];

  v14 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];

  return v14;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    groupedHeaderConfiguration = [MEMORY[0x1E69DCC28] groupedHeaderConfiguration];
    if (self->_attributedHeaderText)
    {
LABEL_7:
      [groupedHeaderConfiguration setAttributedText:?];
      goto LABEL_10;
    }

    headerText = self->_headerText;
  }

  else
  {
    if (*MEMORY[0x1E69DDC00] != kindCopy)
    {
      groupedHeaderConfiguration = 0;
      goto LABEL_10;
    }

    groupedHeaderConfiguration = [MEMORY[0x1E69DCC28] groupedFooterConfiguration];
    if (self->_attributedFooterText)
    {
      goto LABEL_7;
    }

    headerText = self->_footerText;
  }

  [groupedHeaderConfiguration setText:headerText];
LABEL_10:
  [registrationCopy setContentConfiguration:groupedHeaderConfiguration];
}

@end