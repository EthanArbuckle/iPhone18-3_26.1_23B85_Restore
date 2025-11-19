@interface PXSharedLibraryIncludedPeopleTableViewCell
- (PXSharedLibraryIncludedPeopleTableViewCell)initWithDataSourceManager:(id)a3;
- (void)layoutSubviews;
@end

@implementation PXSharedLibraryIncludedPeopleTableViewCell

- (void)layoutSubviews
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PXSharedLibraryIncludedPeopleTableViewCell;
  [(PXSharedLibraryIncludedPeopleTableViewCell *)&v18 layoutSubviews];
  v3 = [(PXSharedLibraryIncludedPeopleViewController *)self->_includedPeopleViewController view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXSharedLibraryIncludedPeopleTableViewCell *)self addSubview:v3];
  v13 = MEMORY[0x1E696ACD8];
  v17 = [v3 topAnchor];
  v16 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self topAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v19[0] = v15;
  v14 = [v3 trailingAnchor];
  v4 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self trailingAnchor];
  v5 = [v14 constraintEqualToAnchor:v4];
  v19[1] = v5;
  v6 = [v3 bottomAnchor];
  v7 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v19[2] = v8;
  v9 = [v3 leadingAnchor];
  v10 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

- (PXSharedLibraryIncludedPeopleTableViewCell)initWithDataSourceManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleTableViewCell;
  v5 = [(PXSharedLibraryIncludedPeopleTableViewCell *)&v10 initWithStyle:0 reuseIdentifier:0];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryIncludedPeopleTableViewCell *)v5 setBackgroundColor:v6];

    v7 = [[PXSharedLibraryIncludedPeopleViewController alloc] initWithDataSourceManager:v4];
    includedPeopleViewController = v5->_includedPeopleViewController;
    v5->_includedPeopleViewController = v7;
  }

  return v5;
}

@end