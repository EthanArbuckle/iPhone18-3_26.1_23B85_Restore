@interface PSUICellularDiagnosticsMessageTableCell
- (void)_setupView:(id)a3 Context:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularDiagnosticsMessageTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PSUICellularDiagnosticsMessageTableCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"CellularDiagnosticsMessageTitleKey", v7.receiver, v7.super_class}];
  v6 = [v4 propertyForKey:@"CellularDiagnosticsMessageContextKey"];

  [(PSUICellularDiagnosticsMessageTableCell *)self _setupView:v5 Context:v6];
  [(PSUICellularDiagnosticsMessageTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)a3 Context:(id)a4
{
  if (!self->_title)
  {
    v6 = MEMORY[0x277D756B8];
    v7 = a4;
    v8 = a3;
    v9 = objc_alloc_init(v6);
    title = self->_title;
    self->_title = v9;

    [(UILabel *)self->_title setNumberOfLines:0];
    [(UILabel *)self->_title setText:v8];

    v11 = MEMORY[0x277D74300];
    v12 = [(UILabel *)self->_title font];
    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits:2];
    v15 = [(UILabel *)self->_title font];
    [v15 pointSize];
    v60 = [v11 fontWithDescriptor:v14 size:v16 + 3.0];

    [(UILabel *)self->_title setFont:v60];
    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    [v17 addSubview:self->_title];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = self->_label;
    self->_label = v18;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:v7];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    [v20 addSubview:self->_label];

    v21 = [(UILabel *)self->_title topAnchor];
    v22 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v23 = [v22 topAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:10.0];
    [v24 setActive:1];

    v25 = [(UILabel *)self->_title centerXAnchor];
    v26 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v27 = [v26 centerXAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [(UILabel *)self->_title trailingAnchor];
    v30 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v31 = [v30 layoutMarginsGuide];
    v32 = [v31 trailingAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];
    [v33 setActive:1];

    v34 = [(UILabel *)self->_title leadingAnchor];
    v35 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v36 = [v35 layoutMarginsGuide];
    v37 = [v36 leadingAnchor];
    v38 = [v34 constraintEqualToAnchor:v37];
    [v38 setActive:1];

    v39 = [(UILabel *)self->_label topAnchor];
    v40 = [(UILabel *)self->_title bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:15.0];
    [v41 setActive:1];

    v42 = [(UILabel *)self->_label centerXAnchor];
    v43 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v44 = [v43 centerXAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(UILabel *)self->_label bottomAnchor];
    v47 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v48 = [v47 bottomAnchor];
    v49 = [v46 constraintEqualToAnchor:v48 constant:-8.0];
    [v49 setActive:1];

    v50 = [(UILabel *)self->_label trailingAnchor];
    v51 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v52 = [v51 layoutMarginsGuide];
    v53 = [v52 trailingAnchor];
    v54 = [v50 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(UILabel *)self->_label leadingAnchor];
    v56 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    v57 = [v56 layoutMarginsGuide];
    v58 = [v57 leadingAnchor];
    v59 = [v55 constraintEqualToAnchor:v58];
    [v59 setActive:1];
  }
}

@end