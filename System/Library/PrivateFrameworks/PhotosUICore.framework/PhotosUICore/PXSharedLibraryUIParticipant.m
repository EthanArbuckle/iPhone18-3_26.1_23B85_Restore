@interface PXSharedLibraryUIParticipant
+ (int)_fetchImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 resultHandler:(id)a7;
+ (int)_fetchImageForEmailAddress:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 resultHandler:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSPersonNameComponents)nameComponents;
- (NSString)appleIDAddress;
- (NSString)description;
- (NSString)name;
- (PXSharedLibraryUIParticipant)initWithEmailAddress:(id)a3 contact:(id)a4;
- (PXSharedLibraryUIParticipant)initWithPhoneNumber:(id)a3 contact:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int)fetchImageForTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6;
- (unint64_t)hash;
- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6;
@end

@implementation PXSharedLibraryUIParticipant

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = PXSharedLibraryUIParticipant;
  v3 = [(PXSharedLibraryUIParticipant *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PXSharedLibraryUIParticipant *)self contact];
  v7 = [v5 stringWithFormat:@"contact: %@, \n", v6];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  v10 = [v8 stringWithFormat:@"address: %@, \n", v9];
  [v4 appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(PXSharedLibraryUIParticipant *)self addressKind];
  v13 = @"PXSharedLibraryUIParticipantAddressKindInvalid";
  if (v12 == 1)
  {
    v13 = @"PXSharedLibraryUIParticipantAddressKindEmail";
  }

  if (v12 == 2)
  {
    v13 = @"PXSharedLibraryUIParticipantAddressKindPhone";
  }

  v14 = [v11 stringWithFormat:@"addressKind: %@", v13];
  [v4 appendString:v14];

  return v4;
}

- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v11 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__PXSharedLibraryUIParticipant_px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v13[3] = &unk_1E774B680;
  v14 = v11;
  v12 = v11;
  [(PXSharedLibraryUIParticipant *)self fetchImageForTargetSize:v6 displayScale:v13 isRTL:width resultHandler:height, a4];
}

uint64_t __95__PXSharedLibraryUIParticipant_px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PXSharedLibraryUIParticipant allocWithZone:?]];
  objc_storeStrong(&v4->_contact, self->_contact);
  objc_storeStrong(&v4->_appleIDAddress, self->_appleIDAddress);
  v4->_addressKind = self->_addressKind;
  return v4;
}

- (unint64_t)hash
{
  v2 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
    v7 = [v5 appleIDAddress];
    if (v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)fetchImageForTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v12 = a6;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (a4 < 1.0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"displayScale >= 1"}];
  }

  v14 = [(PXSharedLibraryUIParticipant *)self contact];

  if (v14)
  {
    v15 = [(PXSharedLibraryUIParticipant *)self contact];
    v16 = [PXSharedLibraryUIParticipant _fetchImageForContact:v15 targetSize:v6 displayScale:v12 isRTL:width resultHandler:height, a4];
  }

  else
  {
    v17 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];

    if (!v17)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:121 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v15 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
    v16 = [PXSharedLibraryUIParticipant _fetchImageForEmailAddress:v15 targetSize:v6 displayScale:v12 isRTL:width resultHandler:height, a4];
  }

  v18 = v16;

  return v18;
}

- (NSString)appleIDAddress
{
  appleIDAddress = self->_appleIDAddress;
  if (!appleIDAddress)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return appleIDAddress;
}

- (NSPersonNameComponents)nameComponents
{
  v2 = [(PXSharedLibraryUIParticipant *)self contact];
  v3 = [v2 givenName];
  v4 = [v2 familyName];
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v5 setGivenName:v3];
    [v5 setFamilyName:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)name
{
  v4 = [(PXSharedLibraryUIParticipant *)self contact];
  v5 = [v4 givenName];
  v6 = [v4 familyName];
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v7 setGivenName:v5];
    [v7 setFamilyName:v6];
    v8 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v7 style:0 options:0];
  }

  else
  {
    v10 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];

    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:69 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  }

  return v8;
}

- (PXSharedLibraryUIParticipant)initWithPhoneNumber:(id)a3 contact:(id)a4
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PXSharedLibraryUIParticipant;
  v10 = [(PXSharedLibraryUIParticipant *)&v13 init];
  if (v10)
  {
    if (![v8 length])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PXSharedLibraryUIParticipant.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber.length > 0"}];
    }

    objc_storeStrong(&v10->_appleIDAddress, a3);
    v10->_addressKind = 2;
    objc_storeStrong(&v10->_contact, a4);
  }

  return v10;
}

- (PXSharedLibraryUIParticipant)initWithEmailAddress:(id)a3 contact:(id)a4
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PXSharedLibraryUIParticipant;
  v10 = [(PXSharedLibraryUIParticipant *)&v13 init];
  if (v10)
  {
    if (![v8 length])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PXSharedLibraryUIParticipant.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"emailAddress.length > 0"}];
    }

    objc_storeStrong(&v10->_appleIDAddress, a3);
    v10->_addressKind = 1;
    objc_storeStrong(&v10->_contact, a4);
  }

  return v10;
}

+ (int)_fetchImageForEmailAddress:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 resultHandler:(id)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  if (!v14)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryUIParticipant.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PXSharedLibraryUIParticipant__fetchImageForEmailAddress_targetSize_displayScale_isRTL_resultHandler___block_invoke;
  v20[3] = &unk_1E774B658;
  v21 = v15;
  v16 = v15;
  [PXActivityUtilities requestMonogramForEmailAddress:v14 targetSize:v8 displayScale:v20 isRTL:width completion:height, a5];
  v17 = +[PXPeopleFaceCropManager generateUniqueRequestID];

  return v17;
}

void __103__PXSharedLibraryUIParticipant__fetchImageForEmailAddress_targetSize_displayScale_isRTL_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    if (v6)
    {
      v10 = *off_1E7722078;
      v11[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      (*(v8 + 16))(v8, v5, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v5, MEMORY[0x1E695E0F8]);
    }
  }
}

+ (int)_fetchImageForContact:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 isRTL:(BOOL)a6 resultHandler:(id)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  if (!v14)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryUIParticipant.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__PXSharedLibraryUIParticipant__fetchImageForContact_targetSize_displayScale_isRTL_resultHandler___block_invoke;
  v20[3] = &unk_1E774B658;
  v21 = v15;
  v16 = v15;
  [PXActivityUtilities requestImageForContact:v14 targetSize:v8 displayScale:0 isRTL:v20 deliverOnce:width completion:height, a5];
  v17 = +[PXPeopleFaceCropManager generateUniqueRequestID];

  return v17;
}

void __98__PXSharedLibraryUIParticipant__fetchImageForContact_targetSize_displayScale_isRTL_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    if (v6)
    {
      v10 = *off_1E7722078;
      v11[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      (*(v8 + 16))(v8, v5, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v5, MEMORY[0x1E695E0F8]);
    }
  }
}

@end