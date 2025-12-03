@interface PXSharedLibraryIncludedPeopleTableViewCell
- (PXSharedLibraryIncludedPeopleTableViewCell)initWithDataSourceManager:(id)manager;
- (void)layoutSubviews;
@end

@implementation PXSharedLibraryIncludedPeopleTableViewCell

- (void)layoutSubviews
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PXSharedLibraryIncludedPeopleTableViewCell;
  [(PXSharedLibraryIncludedPeopleTableViewCell *)&v18 layoutSubviews];
  view = [(PXSharedLibraryIncludedPeopleViewController *)self->_includedPeopleViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXSharedLibraryIncludedPeopleTableViewCell *)self addSubview:view];
  v13 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  topAnchor2 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v15;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v5;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[2] = v8;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [(PXSharedLibraryIncludedPeopleTableViewCell *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

- (PXSharedLibraryIncludedPeopleTableViewCell)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = PXSharedLibraryIncludedPeopleTableViewCell;
  v5 = [(PXSharedLibraryIncludedPeopleTableViewCell *)&v10 initWithStyle:0 reuseIdentifier:0];
  if (v5)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryIncludedPeopleTableViewCell *)v5 setBackgroundColor:secondarySystemBackgroundColor];

    v7 = [[PXSharedLibraryIncludedPeopleViewController alloc] initWithDataSourceManager:managerCopy];
    includedPeopleViewController = v5->_includedPeopleViewController;
    v5->_includedPeopleViewController = v7;
  }

  return v5;
}

@end