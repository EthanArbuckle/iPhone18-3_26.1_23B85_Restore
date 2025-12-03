@interface _PXGenerativeStoryFeatureEligibilityRowCell
- (void)_handleResultsWithTitle:(id)title image:(id)image;
- (void)setBriefImage:(id)image;
- (void)setBriefTitle:(id)title;
- (void)updateDisplayedContent;
@end

@implementation _PXGenerativeStoryFeatureEligibilityRowCell

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:133 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:133 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, px_descriptionForAssertionMessage}];

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:123 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:123 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_5:
  settings = [v7 settings];
  titleKeyPath = [v7 titleKeyPath];
  [settings setValue:titleCopy forKeyPath:titleKeyPath];

LABEL_6:
LABEL_7:
}

- (void)_handleResultsWithTitle:(id)title image:(id)image
{
  imageCopy = image;
  [(_PXGenerativeStoryFeatureEligibilityRowCell *)self setBriefTitle:title];
  [(_PXGenerativeStoryFeatureEligibilityRowCell *)self setBriefImage:imageCopy];
}

- (void)updateDisplayedContent
{
  v15.receiver = self;
  v15.super_class = _PXGenerativeStoryFeatureEligibilityRowCell;
  [(PTUIRowTableViewCell *)&v15 updateDisplayedContent];
  if (!self->_hasRequestedMCAvailability)
  {
    self->_hasRequestedMCAvailability = 1;
    objc_initWeak(&location, self);
    v4 = [(PTUIRowTableViewCell *)self row];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        photoLibrary = [v4 photoLibrary];

        v6 = [objc_alloc(MEMORY[0x1E69789D0]) initWithPhotoLibrary:photoLibrary];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __69___PXGenerativeStoryFeatureEligibilityRowCell_updateDisplayedContent__block_invoke;
        v12[3] = &unk_1E772F4D8;
        objc_copyWeak(&v13, &location);
        [PXGenerativeStoryFeatureEligibilityDataSource generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:v6 photoLibrary:photoLibrary completionHandler:v12];
        objc_destroyWeak(&v13);

        objc_destroyWeak(&location);
        return;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [v4 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v9, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v9}];
    }

    goto LABEL_4;
  }
}

@end