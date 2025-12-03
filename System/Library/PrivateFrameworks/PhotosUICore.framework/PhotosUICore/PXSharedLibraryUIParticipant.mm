@interface PXSharedLibraryUIParticipant
+ (int)_fetchImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler;
+ (int)_fetchImageForEmailAddress:(id)address targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (NSPersonNameComponents)nameComponents;
- (NSString)appleIDAddress;
- (NSString)description;
- (NSString)name;
- (PXSharedLibraryUIParticipant)initWithEmailAddress:(id)address contact:(id)contact;
- (PXSharedLibraryUIParticipant)initWithPhoneNumber:(id)number contact:(id)contact;
- (id)copyWithZone:(_NSZone *)zone;
- (int)fetchImageForTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler;
- (unint64_t)hash;
- (void)px_requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler;
@end

@implementation PXSharedLibraryUIParticipant

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = PXSharedLibraryUIParticipant;
  v3 = [(PXSharedLibraryUIParticipant *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  contact = [(PXSharedLibraryUIParticipant *)self contact];
  v7 = [v5 stringWithFormat:@"contact: %@, \n", contact];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  appleIDAddress = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  v10 = [v8 stringWithFormat:@"address: %@, \n", appleIDAddress];
  [v4 appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  addressKind = [(PXSharedLibraryUIParticipant *)self addressKind];
  v13 = @"PXSharedLibraryUIParticipantAddressKindInvalid";
  if (addressKind == 1)
  {
    v13 = @"PXSharedLibraryUIParticipantAddressKindEmail";
  }

  if (addressKind == 2)
  {
    v13 = @"PXSharedLibraryUIParticipantAddressKindPhone";
  }

  v14 = [v11 stringWithFormat:@"addressKind: %@", v13];
  [v4 appendString:v14];

  return v4;
}

- (void)px_requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__PXSharedLibraryUIParticipant_px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v13[3] = &unk_1E774B680;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(PXSharedLibraryUIParticipant *)self fetchImageForTargetSize:lCopy displayScale:v13 isRTL:width resultHandler:height, scale];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PXSharedLibraryUIParticipant allocWithZone:?]];
  objc_storeStrong(&v4->_contact, self->_contact);
  objc_storeStrong(&v4->_appleIDAddress, self->_appleIDAddress);
  v4->_addressKind = self->_addressKind;
  return v4;
}

- (unint64_t)hash
{
  appleIDAddress = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  v3 = [appleIDAddress hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    appleIDAddress = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
    appleIDAddress2 = [v5 appleIDAddress];
    if (appleIDAddress == appleIDAddress2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [appleIDAddress isEqualToString:appleIDAddress2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)fetchImageForTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (scale < 1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"displayScale >= 1"}];
  }

  contact = [(PXSharedLibraryUIParticipant *)self contact];

  if (contact)
  {
    contact2 = [(PXSharedLibraryUIParticipant *)self contact];
    scale = [PXSharedLibraryUIParticipant _fetchImageForContact:contact2 targetSize:lCopy displayScale:handlerCopy isRTL:width resultHandler:height, scale];
  }

  else
  {
    appleIDAddress = [(PXSharedLibraryUIParticipant *)self appleIDAddress];

    if (!appleIDAddress)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:121 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    contact2 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
    scale = [PXSharedLibraryUIParticipant _fetchImageForEmailAddress:contact2 targetSize:lCopy displayScale:handlerCopy isRTL:width resultHandler:height, scale];
  }

  v18 = scale;

  return v18;
}

- (NSString)appleIDAddress
{
  appleIDAddress = self->_appleIDAddress;
  if (!appleIDAddress)
  {
    v13 = v3;
    v14 = v2;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return appleIDAddress;
}

- (NSPersonNameComponents)nameComponents
{
  contact = [(PXSharedLibraryUIParticipant *)self contact];
  givenName = [contact givenName];
  familyName = [contact familyName];
  if ([givenName length] || objc_msgSend(familyName, "length"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v5 setGivenName:givenName];
    [v5 setFamilyName:familyName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)name
{
  contact = [(PXSharedLibraryUIParticipant *)self contact];
  givenName = [contact givenName];
  familyName = [contact familyName];
  if ([givenName length] || objc_msgSend(familyName, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v7 setGivenName:givenName];
    [v7 setFamilyName:familyName];
    appleIDAddress2 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v7 style:0 options:0];
  }

  else
  {
    appleIDAddress = [(PXSharedLibraryUIParticipant *)self appleIDAddress];

    if (!appleIDAddress)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:69 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    appleIDAddress2 = [(PXSharedLibraryUIParticipant *)self appleIDAddress];
  }

  return appleIDAddress2;
}

- (PXSharedLibraryUIParticipant)initWithPhoneNumber:(id)number contact:(id)contact
{
  numberCopy = number;
  contactCopy = contact;
  v13.receiver = self;
  v13.super_class = PXSharedLibraryUIParticipant;
  v10 = [(PXSharedLibraryUIParticipant *)&v13 init];
  if (v10)
  {
    if (![numberCopy length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXSharedLibraryUIParticipant.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber.length > 0"}];
    }

    objc_storeStrong(&v10->_appleIDAddress, number);
    v10->_addressKind = 2;
    objc_storeStrong(&v10->_contact, contact);
  }

  return v10;
}

- (PXSharedLibraryUIParticipant)initWithEmailAddress:(id)address contact:(id)contact
{
  addressCopy = address;
  contactCopy = contact;
  v13.receiver = self;
  v13.super_class = PXSharedLibraryUIParticipant;
  v10 = [(PXSharedLibraryUIParticipant *)&v13 init];
  if (v10)
  {
    if (![addressCopy length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXSharedLibraryUIParticipant.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"emailAddress.length > 0"}];
    }

    objc_storeStrong(&v10->_appleIDAddress, address);
    v10->_addressKind = 1;
    objc_storeStrong(&v10->_contact, contact);
  }

  return v10;
}

+ (int)_fetchImageForEmailAddress:(id)address targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  addressCopy = address;
  handlerCopy = handler;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PXSharedLibraryUIParticipant__fetchImageForEmailAddress_targetSize_displayScale_isRTL_resultHandler___block_invoke;
  v20[3] = &unk_1E774B658;
  v21 = handlerCopy;
  v16 = handlerCopy;
  [PXActivityUtilities requestMonogramForEmailAddress:addressCopy targetSize:lCopy displayScale:v20 isRTL:width completion:height, scale];
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

+ (int)_fetchImageForContact:(id)contact targetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  contactCopy = contact;
  handlerCopy = handler;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryUIParticipant.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__PXSharedLibraryUIParticipant__fetchImageForContact_targetSize_displayScale_isRTL_resultHandler___block_invoke;
  v20[3] = &unk_1E774B658;
  v21 = handlerCopy;
  v16 = handlerCopy;
  [PXActivityUtilities requestImageForContact:contactCopy targetSize:lCopy displayScale:0 isRTL:v20 deliverOnce:width completion:height, scale];
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