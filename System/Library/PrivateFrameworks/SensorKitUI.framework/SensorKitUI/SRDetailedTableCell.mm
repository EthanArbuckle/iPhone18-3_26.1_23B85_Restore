@interface SRDetailedTableCell
- (SRDetailedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation SRDetailedTableCell

- (SRDetailedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SRDetailedTableCell;
  v4 = [(SRDetailedTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v4->_titleLabel = objc_opt_new();
    -[UILabel setTextColor:](v4->_titleLabel, "setTextColor:", [MEMORY[0x277D75348] labelColor]);
    v5 = *MEMORY[0x277D76918];
    -[UILabel setFont:](v4->_titleLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]]);
    LODWORD(v6) = 1132068864;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v6];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[SRDetailedTableCell contentView](v4 "contentView")];
    v4->_detailLabel = objc_opt_new();
    -[UILabel setTextColor:](v4->_detailLabel, "setTextColor:", [MEMORY[0x277D75348] secondaryLabelColor]);
    -[UILabel setFont:](v4->_detailLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:v5]);
    LODWORD(v7) = 1144750080;
    [(UILabel *)v4->_detailLabel setContentCompressionResistancePriority:0 forAxis:v7];
    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[SRDetailedTableCell contentView](v4 "contentView")];
    v8 = MEMORY[0x277CCAAD0];
    v12[0] = [-[UILabel topAnchor](v4->_titleLabel "topAnchor")];
    v12[1] = [-[UILabel leadingAnchor](v4->_titleLabel "leadingAnchor")];
    v12[2] = [-[UILabel bottomAnchor](v4->_titleLabel "bottomAnchor")];
    v12[3] = [-[UILabel leadingAnchor](v4->_detailLabel "leadingAnchor")];
    v12[4] = [-[UILabel trailingAnchor](v4->_detailLabel "trailingAnchor")];
    v12[5] = [-[UILabel centerYAnchor](v4->_detailLabel "centerYAnchor")];
    [v8 activateConstraints:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 6)}];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  self->_titleLabel = 0;

  self->_detailLabel = 0;
  v3.receiver = self;
  v3.super_class = SRDetailedTableCell;
  [(SRDetailedTableCell *)&v3 dealloc];
}

@end