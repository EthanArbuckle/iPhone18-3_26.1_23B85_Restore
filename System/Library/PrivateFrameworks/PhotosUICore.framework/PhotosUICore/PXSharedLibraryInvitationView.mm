@interface PXSharedLibraryInvitationView
- (PXSharedLibraryInvitationView)initWithFrame:(CGRect)frame;
- (PXSharedLibraryInvitationViewDelegate)delegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)focusEffect;
- (id)traitCollection;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSharedLibraryInvitationView

- (PXSharedLibraryInvitationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__PXSharedLibraryInvitationView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E7739018;
  v6[4] = self;
  v6[5] = a2;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __87__PXSharedLibraryInvitationView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (!v2)
  {
    PXAssertGetLog();
  }

  v3 = [v2 contextMenuActionsForInvitationView:*(a1 + 32)];
  v4 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v3];

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PXSharedLibraryInvitationView;
  changeCopy = change;
  [(PXSharedLibraryInvitationView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryInvitationView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  delegate = [(PXSharedLibraryInvitationView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [delegate invitationViewSizeThatFitsDidChange:self];
  }
}

- (id)traitCollection
{
  overrideTraitCollection = [(PXSharedLibraryInvitationView *)self overrideTraitCollection];
  v4 = overrideTraitCollection;
  if (overrideTraitCollection)
  {
    traitCollection = overrideTraitCollection;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXSharedLibraryInvitationView;
    traitCollection = [(PXSharedLibraryInvitationView *)&v8 traitCollection];
  }

  v6 = traitCollection;

  return v6;
}

- (id)focusEffect
{
  v3 = [PXFocusInfo focusInfoWithView:self];
  v4 = [v3 makeHaloEffectForSourceView:self];

  return v4;
}

- (PXSharedLibraryInvitationView)initWithFrame:(CGRect)frame
{
  v44[1] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PXSharedLibraryInvitationView;
  v3 = [(PXSharedLibraryInvitationView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryInvitationView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    [(PXSharedLibraryInvitationView *)v3 _setCornerRadius:10.0];
    contentView = [(PXSharedLibraryInvitationView *)v3 contentView];
    v6 = objc_alloc_init(PXSharedLibraryInvitationContentView);
    invitationContentView = v3->_invitationContentView;
    v3->_invitationContentView = v6;

    [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_invitationContentView];
    v8 = MEMORY[0x1E69DCAD8];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v44[0] = tertiaryLabelColor;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v41 = [v8 configurationWithPaletteColors:v10];

    v40 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80]];
    v39 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v11 = [v41 configurationByApplyingConfiguration:v40];
    v38 = [v11 configurationByApplyingConfiguration:v39];

    v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v38];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v37];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v12];
    v28 = MEMORY[0x1E696ACD8];
    topAnchor = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[0] = v34;
    [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView leadingAnchor];
    v33 = v32 = contentView;
    v13 = contentView;
    leadingAnchor = [contentView leadingAnchor];
    v30 = [v33 constraintEqualToAnchor:leadingAnchor];
    v43[1] = v30;
    leadingAnchor2 = [v12 leadingAnchor];
    trailingAnchor = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView trailingAnchor];
    v26 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor constant:12.0];
    v43[2] = v26;
    centerYAnchor = [v12 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[3] = v14;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[4] = v17;
    trailingAnchor2 = [v13 trailingAnchor];
    trailingAnchor3 = [v12 trailingAnchor];
    v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
    v43[5] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
    [v28 activateConstraints:v21];

    v22 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v3];
    [(PXSharedLibraryInvitationView *)v3 addInteraction:v22];
  }

  return v3;
}

@end