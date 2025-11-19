@interface VUIFamilyMember
- (VUIFamilyMemberDelegate)delegate;
- (unint64_t)hash;
- (void)setMemberIdentifier:(id)a3;
@end

@implementation VUIFamilyMember

- (void)setMemberIdentifier:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_memberIdentifier, a3);
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __39__VUIFamilyMember_setMemberIdentifier___block_invoke;
  v10 = &unk_1E872E4B8;
  objc_copyWeak(&v11, &location);
  v6 = &v7;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__VUIFamilyMember_setMemberIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_alloc(MEMORY[0x1E699C078]);
  v4 = [WeakRetained memberIdentifier];
  v5 = [v3 initWithFamilyMemberDSID:v4 size:1 localFallback:0];

  [v5 setUseMonogramAsLastResort:0];
  +[VUIFamilyMemberCell maxMonogramHeight];
  [v5 setMonogramDiameter:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__VUIFamilyMember_setMemberIdentifier___block_invoke_2;
  v6[3] = &unk_1E87337C0;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 startRequestWithCompletionHandler:v6];
  objc_destroyWeak(&v7);
}

void __39__VUIFamilyMember_setMemberIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];

  [WeakRetained setMemberImage:v4];
  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 familyMember:WeakRetained photoRequestDidCompleteWithImage:v4];
  }
}

- (unint64_t)hash
{
  v3 = [(VUIFamilyMember *)self memberIdentifier];
  v4 = [v3 hash];

  v5 = [(VUIFamilyMember *)self firstName];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIFamilyMember *)self lastName];
  v8 = [v7 hash];

  v9 = [(VUIFamilyMember *)self accountName];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (VUIFamilyMemberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end