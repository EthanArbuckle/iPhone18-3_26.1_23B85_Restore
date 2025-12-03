@interface SSNFCAssertion
- (SSNFCAssertion)init;
- (void)_assert;
- (void)_deassert;
- (void)dealloc;
@end

@implementation SSNFCAssertion

- (SSNFCAssertion)init
{
  v5.receiver = self;
  v5.super_class = SSNFCAssertion;
  v2 = [(SSNFCAssertion *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSNFCAssertion *)v2 _assert];
  }

  return v3;
}

- (void)dealloc
{
  [(SSNFCAssertion *)self _deassert];
  v3.receiver = self;
  v3.super_class = SSNFCAssertion;
  [(SSNFCAssertion *)&v3 dealloc];
}

- (void)_assert
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2080;
  v6 = "[SSNFCAssertion _assert]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]assertion fail with error: %{public}@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_deassert
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_preventConnectionHandoverAssertion)
  {
    sharedHardwareManagerWithNoUI = [getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
    v4 = [sharedHardwareManagerWithNoUI releaseAssertion:self->_preventConnectionHandoverAssertion];

    preventConnectionHandoverAssertion = self->_preventConnectionHandoverAssertion;
    self->_preventConnectionHandoverAssertion = 0;

    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SSNFCAssertion _deassert]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "assertion released @%s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end