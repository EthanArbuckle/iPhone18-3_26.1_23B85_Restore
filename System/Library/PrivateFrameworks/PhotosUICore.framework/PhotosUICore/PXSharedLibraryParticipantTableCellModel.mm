@interface PXSharedLibraryParticipantTableCellModel
- (PXSharedLibraryParticipantTableCellModel)init;
- (void)configureForParticipant:(id)participant displayScale:(double)scale isRTL:(BOOL)l;
- (void)setAddress:(id)address;
- (void)setEllipsisButtonAllowed:(BOOL)allowed;
- (void)setImage:(id)image;
- (void)setName:(id)name;
- (void)setRequestID:(int64_t)d;
@end

@implementation PXSharedLibraryParticipantTableCellModel

- (void)configureForParticipant:(id)participant displayScale:(double)scale isRTL:(BOOL)l
{
  lCopy = l;
  participantCopy = participant;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke;
  v18[3] = &unk_1E7735110;
  v18[4] = self;
  v18[5] = &v19;
  v9 = [participantCopy fetchImageForTargetSize:lCopy displayScale:v18 isRTL:37.0 resultHandler:{37.0, scale}];
  v20[3] = v9;
  name = [participantCopy name];
  appleIDAddress = [participantCopy appleIDAddress];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke_4;
  v14[3] = &unk_1E7735138;
  v17 = &v19;
  v12 = name;
  v15 = v12;
  v13 = appleIDAddress;
  v16 = v13;
  [(PXSharedLibraryParticipantTableCellModel *)self performChanges:v14];

  _Block_object_dispose(&v19, 8);
}

void __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRequestID:*(*(*(a1 + 48) + 8) + 24)];
  [v4 setName:*(a1 + 32)];
  if ([*(a1 + 32) isEqualToString:*(a1 + 40)])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  [v4 setAddress:v3];
  [v4 setEllipsisButtonAllowed:1];
}

void __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) requestID] == *(*(*(a1 + 48) + 8) + 24))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke_3;
    v3[3] = &unk_1E77350E8;
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    [v2 performChanges:v3];
  }
}

- (void)setEllipsisButtonAllowed:(BOOL)allowed
{
  if (self->_ellipsisButtonAllowed != allowed)
  {
    self->_ellipsisButtonAllowed = allowed;
    [(PXSharedLibraryParticipantTableCellModel *)self signalChange:16];
  }
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  address = self->_address;
  if (address != addressCopy)
  {
    v9 = addressCopy;
    v6 = [(NSString *)address isEqualToString:addressCopy];
    addressCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_address;
      self->_address = v7;

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:8];
      addressCopy = v9;
    }
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = self->_name;
  if (name != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)name isEqualToString:nameCopy];
    nameCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_name;
      self->_name = v7;

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:4];
      nameCopy = v9;
    }
  }
}

- (void)setRequestID:(int64_t)d
{
  if (self->_requestID != d)
  {
    self->_requestID = d;
    [(PXSharedLibraryParticipantTableCellModel *)self signalChange:2];
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

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:1];
      imageCopy = v9;
    }
  }
}

- (PXSharedLibraryParticipantTableCellModel)init
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryParticipantTableCellModel;
  result = [(PXSharedLibraryParticipantTableCellModel *)&v3 init];
  if (result)
  {
    result->_removeButtonVisible = 0;
    result->_ellipsisButtonAllowed = 0;
  }

  return result;
}

@end