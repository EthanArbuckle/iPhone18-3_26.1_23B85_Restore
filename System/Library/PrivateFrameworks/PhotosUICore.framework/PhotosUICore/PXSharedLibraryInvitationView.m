@interface PXSharedLibraryInvitationView
- (PXSharedLibraryInvitationView)initWithFrame:(CGRect)a3;
- (PXSharedLibraryInvitationViewDelegate)delegate;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)focusEffect;
- (id)traitCollection;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXSharedLibraryInvitationView

- (PXSharedLibraryInvitationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = PXSharedLibraryInvitationView;
  v4 = a3;
  [(PXSharedLibraryInvitationView *)&v9 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryInvitationView *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = [(PXSharedLibraryInvitationView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && v6 != v7)
  {
    [v8 invitationViewSizeThatFitsDidChange:self];
  }
}

- (id)traitCollection
{
  v3 = [(PXSharedLibraryInvitationView *)self overrideTraitCollection];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXSharedLibraryInvitationView;
    v5 = [(PXSharedLibraryInvitationView *)&v8 traitCollection];
  }

  v6 = v5;

  return v6;
}

- (id)focusEffect
{
  v3 = [PXFocusInfo focusInfoWithView:self];
  v4 = [v3 makeHaloEffectForSourceView:self];

  return v4;
}

- (PXSharedLibraryInvitationView)initWithFrame:(CGRect)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PXSharedLibraryInvitationView;
  v3 = [(PXSharedLibraryInvitationView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryInvitationView *)v3 setBackgroundColor:v4];

    [(PXSharedLibraryInvitationView *)v3 _setCornerRadius:10.0];
    v5 = [(PXSharedLibraryInvitationView *)v3 contentView];
    v6 = objc_alloc_init(PXSharedLibraryInvitationContentView);
    invitationContentView = v3->_invitationContentView;
    v3->_invitationContentView = v6;

    [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v3->_invitationContentView];
    v8 = MEMORY[0x1E69DCAD8];
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v44[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v41 = [v8 configurationWithPaletteColors:v10];

    v40 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80]];
    v39 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v11 = [v41 configurationByApplyingConfiguration:v40];
    v38 = [v11 configurationByApplyingConfiguration:v39];

    v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v38];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v37];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v12];
    v28 = MEMORY[0x1E696ACD8];
    v36 = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView topAnchor];
    v35 = [v5 topAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v43[0] = v34;
    [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView leadingAnchor];
    v33 = v32 = v5;
    v13 = v5;
    v31 = [v5 leadingAnchor];
    v30 = [v33 constraintEqualToAnchor:v31];
    v43[1] = v30;
    v29 = [v12 leadingAnchor];
    v27 = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView trailingAnchor];
    v26 = [v29 constraintEqualToAnchor:v27 constant:12.0];
    v43[2] = v26;
    v25 = [v12 centerYAnchor];
    v24 = [v5 centerYAnchor];
    v14 = [v25 constraintEqualToAnchor:v24];
    v43[3] = v14;
    v15 = [v5 bottomAnchor];
    v16 = [(PXSharedLibraryInvitationContentView *)v3->_invitationContentView bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v43[4] = v17;
    v18 = [v13 trailingAnchor];
    v19 = [v12 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:16.0];
    v43[5] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
    [v28 activateConstraints:v21];

    v22 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v3];
    [(PXSharedLibraryInvitationView *)v3 addInteraction:v22];
  }

  return v3;
}

@end