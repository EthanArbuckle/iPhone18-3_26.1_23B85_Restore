@interface _WBSBiomeStream
- (_WBSBiomeStream)initWithIdentifier:(id)a3;
- (void)_fetchStream;
@end

@implementation _WBSBiomeStream

- (_WBSBiomeStream)initWithIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _WBSBiomeStream;
  v6 = [(_WBSBiomeStream *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    [(_WBSBiomeStream *)v7 _fetchStream];
    v8 = v7;
  }

  return v7;
}

- (void)_fetchStream
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch stream with identifier: %{public}@", &v3, 0xCu);
}

@end