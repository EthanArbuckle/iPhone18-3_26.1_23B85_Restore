@interface SBHIconImageCacheCancellation
- (SBHIconImageCacheCancellation)init;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBHIconImageCacheCancellation

- (SBHIconImageCacheCancellation)init
{
  v6.receiver = self;
  v6.super_class = SBHIconImageCacheCancellation;
  v2 = [(SBHIconImageCacheCancellation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SBHIconImageCacheCancellation_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __59__SBHIconImageCacheCancellation_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"identifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) requestedImageIdentities];
  v7 = [v5 appendObject:v6 withName:@"requestedImageIdentities"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCancelled"), @"cancelled"}];
}

@end