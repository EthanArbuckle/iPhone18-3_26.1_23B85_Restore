@interface _PXPhotoLibraryProcessingProgressRowCell
- (void)_handleBriefDescriptionResultsWithTitle:(id)a3 image:(id)a4;
- (void)setBriefImage:(id)a3;
- (void)setBriefTitle:(id)a3;
- (void)updateDisplayedContent;
@end

@implementation _PXPhotoLibraryProcessingProgressRowCell

- (void)setBriefImage:(id)a3
{
  v16 = a3;
  v6 = self->_briefImage;
  v7 = v6;
  if (v6 == v16)
  {
    goto LABEL_6;
  }

  v8 = [(UIImage *)v6 isEqual:?];

  if (v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_briefImage, a3);
  v7 = [(PTUIRowTableViewCell *)self row];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:121 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
LABEL_12:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:121 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, v15}];

    goto LABEL_12;
  }

LABEL_5:
  v9 = [v7 settings];
  v10 = [v7 imageKeyPath];
  [v9 setValue:v16 forKeyPath:v10];

LABEL_6:
LABEL_7:
}

- (void)setBriefTitle:(id)a3
{
  v16 = a3;
  v6 = self->_briefTitle;
  v7 = v6;
  if (v6 == v16)
  {
    goto LABEL_6;
  }

  v8 = [(NSString *)v6 isEqual:?];

  if (v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_briefTitle, a3);
  v7 = [(PTUIRowTableViewCell *)self row];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
LABEL_12:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:111 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, v15}];

    goto LABEL_12;
  }

LABEL_5:
  v9 = [v7 settings];
  v10 = [v7 titleKeyPath];
  [v9 setValue:v16 forKeyPath:v10];

LABEL_6:
LABEL_7:
}

- (void)_handleBriefDescriptionResultsWithTitle:(id)a3 image:(id)a4
{
  v6 = a4;
  [(_PXPhotoLibraryProcessingProgressRowCell *)self setBriefTitle:a3];
  [(_PXPhotoLibraryProcessingProgressRowCell *)self setBriefImage:v6];
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
        v5 = [v4 photoLibrary];

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __66___PXPhotoLibraryProcessingProgressRowCell_updateDisplayedContent__block_invoke;
        v11[3] = &unk_1E7747078;
        objc_copyWeak(&v12, &location);
        [PXPhotoLibraryProcessingProgressReport requestBriefDescriptionForLibrary:v5 resultBlock:v11];
        objc_destroyWeak(&v12);

        objc_destroyWeak(&location);
        return;
      }

      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v8 = NSStringFromClass(v9);
      v10 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:93 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v8, v10}];
    }

    else
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:93 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v8}];
    }

    goto LABEL_4;
  }
}

@end