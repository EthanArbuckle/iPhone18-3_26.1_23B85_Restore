@interface _PXGenerativeStoryFeatureEligibilityRowCell
- (void)_handleResultsWithTitle:(id)a3 image:(id)a4;
- (void)setBriefImage:(id)a3;
- (void)setBriefTitle:(id)a3;
- (void)updateDisplayedContent;
@end

@implementation _PXGenerativeStoryFeatureEligibilityRowCell

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
    [v11 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:133 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
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
    [v11 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:133 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, v15}];

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
    [v11 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:123 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v13}];
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
    [v11 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:123 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v13, v15}];

    goto LABEL_12;
  }

LABEL_5:
  v9 = [v7 settings];
  v10 = [v7 titleKeyPath];
  [v9 setValue:v16 forKeyPath:v10];

LABEL_6:
LABEL_7:
}

- (void)_handleResultsWithTitle:(id)a3 image:(id)a4
{
  v6 = a4;
  [(_PXGenerativeStoryFeatureEligibilityRowCell *)self setBriefTitle:a3];
  [(_PXGenerativeStoryFeatureEligibilityRowCell *)self setBriefImage:v6];
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
        v5 = [v4 photoLibrary];

        v6 = [objc_alloc(MEMORY[0x1E69789D0]) initWithPhotoLibrary:v5];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __69___PXGenerativeStoryFeatureEligibilityRowCell_updateDisplayedContent__block_invoke;
        v12[3] = &unk_1E772F4D8;
        objc_copyWeak(&v13, &location);
        [PXGenerativeStoryFeatureEligibilityDataSource generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:v6 photoLibrary:v5 completionHandler:v12];
        objc_destroyWeak(&v13);

        objc_destroyWeak(&location);
        return;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = [v4 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.row", v9, v11}];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.row", v9}];
    }

    goto LABEL_4;
  }
}

@end