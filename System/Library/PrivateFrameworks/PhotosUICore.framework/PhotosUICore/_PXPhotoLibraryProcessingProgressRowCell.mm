@interface _PXPhotoLibraryProcessingProgressRowCell
- (void)_handleBriefDescriptionResultsWithTitle:(id)title image:(id)image;
- (void)setBriefImage:(id)image;
- (void)setBriefTitle:(id)title;
- (void)updateDisplayedContent;
@end

@implementation _PXPhotoLibraryProcessingProgressRowCell

- (void)setBriefImage:(id)image
{
  imageCopy = image;
  v6 = self->_briefImage;
  v7 = v6;
  if (v6 == imageCopy)
  {
    goto LABEL_6;
  }

  v8 = [(UIImage *)v6 isEqual:?];

  if (v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_briefImage, image);
  v7 = [(PTUIRowTableViewCell *)self row];
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:121 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
LABEL_12:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:121 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_5:
  settings = [v7 settings];
  imageKeyPath = [v7 imageKeyPath];
  [settings setValue:imageCopy forKeyPath:imageKeyPath];

LABEL_6:
LABEL_7:
}

- (void)setBriefTitle:(id)title
{
  titleCopy = title;
  v6 = self->_briefTitle;
  v7 = v6;
  if (v6 == titleCopy)
  {
    goto LABEL_6;
  }

  v8 = [(NSString *)v6 isEqual:?];

  if (v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_briefTitle, title);
  v7 = [(PTUIRowTableViewCell *)self row];
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
LABEL_12:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_5:
  settings = [v7 settings];
  titleKeyPath = [v7 titleKeyPath];
  [settings setValue:titleCopy forKeyPath:titleKeyPath];

LABEL_6:
LABEL_7:
}

- (void)_handleBriefDescriptionResultsWithTitle:(id)title image:(id)image
{
  imageCopy = image;
  [(_PXPhotoLibraryProcessingProgressRowCell *)self setBriefTitle:title];
  [(_PXPhotoLibraryProcessingProgressRowCell *)self setBriefImage:imageCopy];
}

- (void)updateDisplayedContent
{
  v14.receiver = self;
  v14.super_class = _PXPhotoLibraryProcessingProgressRowCell;
  [(PTUIRowTableViewCell *)&v14 updateDisplayedContent];
  if (!self->_hasRequestedBriefDescription)
  {
    self->_hasRequestedBriefDescription = 1;
    objc_initWeak(&location, self);
    v4 = [(PTUIRowTableViewCell *)self row];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        photoLibrary = [v4 photoLibrary];

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __66___PXPhotoLibraryProcessingProgressRowCell_updateDisplayedContent__block_invoke;
        v11[3] = &unk_1E7747078;
        objc_copyWeak(&v12, &location);
        [PXPhotoLibraryProcessingProgressReport requestBriefDescriptionForLibrary:photoLibrary resultBlock:v11];
        objc_destroyWeak(&v12);

        objc_destroyWeak(&location);
        return;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v8 = NSStringFromClass(v9);
      px_descriptionForAssertionMessage = [v4 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:93 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v8, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:93 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v8}];
    }

    goto LABEL_4;
  }
}

@end