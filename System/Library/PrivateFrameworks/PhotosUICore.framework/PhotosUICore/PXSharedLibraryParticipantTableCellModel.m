@interface PXSharedLibraryParticipantTableCellModel
- (PXSharedLibraryParticipantTableCellModel)init;
- (void)configureForParticipant:(id)a3 displayScale:(double)a4 isRTL:(BOOL)a5;
- (void)setAddress:(id)a3;
- (void)setEllipsisButtonAllowed:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setName:(id)a3;
- (void)setRequestID:(int64_t)a3;
@end

@implementation PXSharedLibraryParticipantTableCellModel

- (void)configureForParticipant:(id)a3 displayScale:(double)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
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
  v9 = [v8 fetchImageForTargetSize:v5 displayScale:v18 isRTL:37.0 resultHandler:{37.0, a4}];
  v20[3] = v9;
  v10 = [v8 name];
  v11 = [v8 appleIDAddress];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PXSharedLibraryParticipantTableCellModel_configureForParticipant_displayScale_isRTL___block_invoke_4;
  v14[3] = &unk_1E7735138;
  v17 = &v19;
  v12 = v10;
  v15 = v12;
  v13 = v11;
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

- (void)setEllipsisButtonAllowed:(BOOL)a3
{
  if (self->_ellipsisButtonAllowed != a3)
  {
    self->_ellipsisButtonAllowed = a3;
    [(PXSharedLibraryParticipantTableCellModel *)self signalChange:16];
  }
}

- (void)setAddress:(id)a3
{
  v4 = a3;
  address = self->_address;
  if (address != v4)
  {
    v9 = v4;
    v6 = [(NSString *)address isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_address;
      self->_address = v7;

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:8];
      v4 = v9;
    }
  }
}

- (void)setName:(id)a3
{
  v4 = a3;
  name = self->_name;
  if (name != v4)
  {
    v9 = v4;
    v6 = [(NSString *)name isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_name;
      self->_name = v7;

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:4];
      v4 = v9;
    }
  }
}

- (void)setRequestID:(int64_t)a3
{
  if (self->_requestID != a3)
  {
    self->_requestID = a3;
    [(PXSharedLibraryParticipantTableCellModel *)self signalChange:2];
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

      [(PXSharedLibraryParticipantTableCellModel *)self signalChange:1];
      v4 = v9;
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