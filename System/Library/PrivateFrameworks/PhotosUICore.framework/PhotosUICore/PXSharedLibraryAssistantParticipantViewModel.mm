@interface PXSharedLibraryAssistantParticipantViewModel
- (PXSharedLibraryAssistantParticipantViewModel)init;
- (void)performChanges:(id)a3;
- (void)setImage:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXSharedLibraryAssistantParticipantViewModel

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantParticipantViewModel;
  [(PXSharedLibraryAssistantParticipantViewModel *)&v3 performChanges:a3];
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantParticipantViewModel.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    v5 = 0;
  }

  subtitle = self->_subtitle;
  if (subtitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)subtitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_subtitle;
      self->_subtitle = v8;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:4];
      v5 = v11;
    }
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantParticipantViewModel.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    v5 = 0;
  }

  title = self->_title;
  if (title != v5)
  {
    v11 = v5;
    v7 = [(NSString *)title isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_title;
      self->_title = v8;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:2];
      v5 = v11;
    }
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  image = self->_image;
  if (image != v4)
  {
    v9 = v4;
    v6 = [(UIImage *)image isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_image;
      self->_image = v7;

      [(PXSharedLibraryAssistantParticipantViewModel *)self signalChange:1];
      v4 = v9;
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