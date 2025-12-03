@interface PXSharedLibraryAssistantParticipantViewModel
- (PXSharedLibraryAssistantParticipantViewModel)init;
- (void)performChanges:(id)changes;
- (void)setImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PXSharedLibraryAssistantParticipantViewModel

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantParticipantViewModel;
  [(PXSharedLibraryAssistantParticipantViewModel *)&v3 performChanges:changes];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (!subtitleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantParticipantViewModel.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    subtitleCopy = 0;
  }

  subtitle = self->_subtitle;
  if (subtitle != subtitleCopy)
  {
    v11 = subtitleCopy;
    v7 = [(NSString *)subtitle isEqualToString:subtitleCopy];
    subtitleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_subtitle;
      self->_subtitle = v8;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:4];
      subtitleCopy = v11;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantParticipantViewModel.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    titleCopy = 0;
  }

  title = self->_title;
  if (title != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)title isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_title;
      self->_title = v8;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:2];
      titleCopy = v11;
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = self->_image;
  if (image != imageCopy)
  {
    v9 = imageCopy;
    v6 = [(UIImage *)image isEqual:imageCopy];
    imageCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_image;
      self->_image = v7;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:1];
      imageCopy = v9;
    }
  }
}

- (PXSharedLibraryAssistantParticipantViewModel)init
{
  v7.receiver = self;
  v7.super_class = PXSharedLibraryAssistantParticipantViewModel;
  v2 = [(PXSharedLibraryAssistantParticipantViewModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = &stru_1F1741150;

    subtitle = v3->_subtitle;
    v3->_subtitle = &stru_1F1741150;
  }

  return v3;
}

@end