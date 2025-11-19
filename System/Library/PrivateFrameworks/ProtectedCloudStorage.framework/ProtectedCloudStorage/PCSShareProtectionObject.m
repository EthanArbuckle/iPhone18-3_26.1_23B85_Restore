@interface PCSShareProtectionObject
- (PCSShareProtectionObject)initWithShareProtectionRef:(_OpaquePCSShareProtection *)a3;
- (PCSShareProtectionObject)initWithSharingRequestData:(id)a3 identitySet:(_PCSIdentitySetData *)a4 error:(id *)a5;
- (id)exportAcceptedSharingRequestWithError:(id *)a3;
- (void)dealloc;
@end

@implementation PCSShareProtectionObject

- (PCSShareProtectionObject)initWithShareProtectionRef:(_OpaquePCSShareProtection *)a3
{
  v6.receiver = self;
  v6.super_class = PCSShareProtectionObject;
  v4 = [(PCSShareProtectionObject *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v4->_shareProtection = a3;
  }

  return v4;
}

- (PCSShareProtectionObject)initWithSharingRequestData:(id)a3 identitySet:(_PCSIdentitySetData *)a4 error:(id *)a5
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = PCSShareProtectionObject;
  v9 = [(PCSShareProtectionObject *)&v25 init];
  if (v9)
  {
    v10 = v9;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = [[PCSManateeShareInvitation alloc] initWithData:v8];
    v12 = v11;
    if (v11 && [(PCSManateeShareInvitation *)v11 hasExportedPCSData])
    {
      v13 = PCSIdentitySetCopyIdentities(a4, 0);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke;
      context[3] = &unk_1E7B18FD0;
      v14 = v10;
      v18 = v14;
      v20 = &v21;
      v19 = v12;
      CFDictionaryApplyFunction(v13, apply_block_2_1, context);
      if (v13)
      {
        CFRelease(v13);
      }

      if (!v14->_shareProtection)
      {

        v14 = 0;
      }

      v10 = v18;
    }

    else
    {
      _PCSError(v22 + 3, 139, @"Failed to deserialize PCSManateeShareInvitation");
      v14 = 0;
    }

    v15 = v22[3];
    if (a5)
    {
      *a5 = v15;
      v22[3] = 0;
    }

    else if (v15)
    {
      v22[3] = 0;
      CFRelease(v15);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(*(a1 + 32) + 8))
  {
    __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke_cold_1(a1, a3, (a1 + 32));
  }
}

- (void)dealloc
{
  shareProtection = self->_shareProtection;
  if (shareProtection)
  {
    self->_shareProtection = 0;
    CFRelease(shareProtection);
  }

  identity = self->_identity;
  if (identity)
  {
    self->_identity = 0;
    CFRelease(identity);
  }

  v5.receiver = self;
  v5.super_class = PCSShareProtectionObject;
  [(PCSShareProtectionObject *)&v5 dealloc];
}

- (id)exportAcceptedSharingRequestWithError:(id *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  SigningIdentity = _PCSIdentityGetSigningIdentity(self->_identity);
  v6 = PCSIdentityCopyPublicIdentity(SigningIdentity);
  if (v6)
  {
    v10 = v6;
    v18 = 0;
    v11 = _PCSFPCopyExportedWithOptions(self->_shareProtection, 1, 1, v6, &v18, v7, v8, v9);
    v12 = v18;
    if (a3)
    {
      *a3 = v18;
      v18 = 0;
    }

    else if (v18)
    {
      v18 = 0;
      CFRelease(v12);
    }

    CFRelease(v10);
  }

  else
  {
    if (a3)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = kPCSErrorDomain;
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"missing signing identity";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a3 = [v13 errorWithDomain:v14 code:144 userInfo:v15];
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

void __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke_cold_1(uint64_t a1, const void *a2, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    *(v6 + 24) = 0;
    CFRelease(v7);
  }

  v8 = [*(a1 + 40) exportedPCSData];
  v9 = *(*(a1 + 48) + 8);
  if (!a2)
  {
    _PCSError((v9 + 24), 27, @"PCSFPCreateWithExportedManateeSharingInvitation need an identity");
    goto LABEL_14;
  }

  Mutable = PCSIdentitySetCreateMutable((v9 + 24));
  if (!Mutable)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = Mutable;
  if (PCSIdentitySetAddIdentity(Mutable, a2))
  {
    v12 = CreateWithExportedInternal(v8, v11, 0, 0, 1, 0, 0, (v9 + 24));
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v11);
LABEL_8:
  *(*a3 + 8) = v12;

  v13 = *a3;
  if (*(*a3 + 8))
  {
    if (a2)
    {
      CFRetain(a2);
      v13 = *a3;
    }

    *(v13 + 16) = a2;
  }
}

@end