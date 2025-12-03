@interface PLJournalChecksumContext
- (PLJournalChecksumContext)init;
- (id)finalizedChecksum;
- (void)update:(id)update;
@end

@implementation PLJournalChecksumContext

- (id)finalizedChecksum
{
  v10 = *MEMORY[0x1E69E9840];
  finalizedChecksum = self->_finalizedChecksum;
  if (!finalizedChecksum)
  {
    CC_SHA256_Final(md, &self->_context);
    v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v4 appendFormat:@"%02x", md[i]];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];
    v7 = self->_finalizedChecksum;
    self->_finalizedChecksum = v6;

    finalizedChecksum = self->_finalizedChecksum;
  }

  return finalizedChecksum;
}

- (void)update:(id)update
{
  updateCopy = update;
  updateCopy2 = update;
  bytes = [updateCopy2 bytes];
  v8 = [updateCopy2 length];

  CC_SHA256_Update(&self->_context, bytes, v8);
}

- (PLJournalChecksumContext)init
{
  v5.receiver = self;
  v5.super_class = PLJournalChecksumContext;
  v2 = [(PLJournalChecksumContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    CC_SHA256_Init(&v2->_context);
  }

  return v3;
}

@end