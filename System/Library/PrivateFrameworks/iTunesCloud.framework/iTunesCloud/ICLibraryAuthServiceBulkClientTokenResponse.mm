@interface ICLibraryAuthServiceBulkClientTokenResponse
- (ICLibraryAuthServiceBulkClientTokenResponse)initWithResponseDictionary:(id)a3;
- (NSDictionary)tokenResults;
@end

@implementation ICLibraryAuthServiceBulkClientTokenResponse

- (NSDictionary)tokenResults
{
  v2 = [(NSMutableDictionary *)self->_parsedTokenResults copy];

  return v2;
}

- (ICLibraryAuthServiceBulkClientTokenResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICLibraryAuthServiceBulkClientTokenResponse *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;

    v8 = [(NSDictionary *)v5->_responseDictionary ic_dictionaryValueForKey:@"result"];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    parsedTokenResults = v5->_parsedTokenResults;
    v5->_parsedTokenResults = v9;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__ICLibraryAuthServiceBulkClientTokenResponse_initWithResponseDictionary___block_invoke;
    v12[3] = &unk_1E7BF7900;
    v13 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  return v5;
}

void __74__ICLibraryAuthServiceBulkClientTokenResponse_initWithResponseDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 longLongValue] >= 1 && _NSIsNSDictionary())
  {
    v6 = [v10 longLongValue];
    v7 = [[ICLibraryAuthServiceClientTokenResult alloc] initWithResponseDictionary:v5];
    v8 = *(*(a1 + 32) + 16);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    [v8 setObject:v7 forKey:v9];
  }
}

@end