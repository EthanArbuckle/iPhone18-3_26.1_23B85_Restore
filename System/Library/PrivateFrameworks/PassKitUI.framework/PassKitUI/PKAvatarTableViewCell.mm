@interface PKAvatarTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAvatarTableViewCell)initWithContact:(id)contact delegate:(id)delegate style:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
@end

@implementation PKAvatarTableViewCell

- (PKAvatarTableViewCell)initWithContact:(id)contact delegate:(id)delegate style:(int64_t)style reuseIdentifier:(id)identifier
{
  contactCopy = contact;
  v10 = [(PKAvatarTableViewCell *)self initWithStyle:style reuseIdentifier:identifier];
  if (v10)
  {
    v11 = objc_alloc_init(getCNAvatarViewClass_3());
    avatarView = v10->_avatarView;
    v10->_avatarView = v11;

    contentView = [(PKAvatarTableViewCell *)v10 contentView];
    [contentView addSubview:v10->_avatarView];

    [(PKAvatarTableViewCell *)v10 setContact:contactCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKAvatarTableViewCell;
  [(PKAvatarTableViewCell *)&v18 layoutSubviews];
  if ([(PKAvatarTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v3 = CGRectMaxXEdge;
  }

  else
  {
    v3 = CGRectMinXEdge;
  }

  contentView = [(PKAvatarTableViewCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v19.origin.x = v6 + v13;
  v19.size.width = v10 - (v13 + v14);
  v19.size.height = v12 + -16.0;
  remainder.origin.x = v6 + v13;
  remainder.origin.y = v8 + 8.0;
  remainder.size.width = v19.size.width;
  remainder.size.height = v12 + -16.0;
  memset(&v16, 0, sizeof(v16));
  v19.origin.y = v8 + 8.0;
  CGRectDivide(v19, &v16, &remainder, 45.0, v3);
  avatarView = self->_avatarView;
  PKSizeAlignedInRect();
  [(CNAvatarView *)avatarView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = PKAvatarTableViewCell;
  [(PKAvatarTableViewCell *)&v5 sizeThatFits:fits.width, fits.height];
  if (v4 < 61.0)
  {
    v4 = 61.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    [(CNAvatarView *)self->_avatarView setContact:contactCopy];
    objc_storeStrong(&self->_contact, contact);
    contactCopy = v6;
  }
}

@end