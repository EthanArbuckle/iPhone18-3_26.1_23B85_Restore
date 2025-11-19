@interface _SBDisplayIdentityRecord
- (_SBDisplayIdentityRecord)initWithIdentity:(id)a3 connectedAtInit:(BOOL)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)dealloc;
@end

@implementation _SBDisplayIdentityRecord

- (_SBDisplayIdentityRecord)initWithIdentity:(id)a3 connectedAtInit:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _SBDisplayIdentityRecord;
  v8 = [(_SBDisplayIdentityRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayIdentity, a3);
    v9->_connectedAtInit = a4;
    v10 = objc_alloc_init(MEMORY[0x277CF0B80]);
    invalidationSignal = v9->_invalidationSignal;
    v9->_invalidationSignal = v10;
  }

  return v9;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57___SBDisplayIdentityRecord_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

@end