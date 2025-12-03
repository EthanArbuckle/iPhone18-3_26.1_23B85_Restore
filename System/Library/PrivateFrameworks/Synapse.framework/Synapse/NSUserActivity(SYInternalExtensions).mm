@interface NSUserActivity(SYInternalExtensions)
+ (void)_syFetchCurrentUserActivityWithCompletion:()SYInternalExtensions;
@end

@implementation NSUserActivity(SYInternalExtensions)

+ (void)_syFetchCurrentUserActivityWithCompletion:()SYInternalExtensions
{
  v5 = a3;
  if (!v5)
  {
    [(NSUserActivity(SYInternalExtensions) *)a2 _syFetchCurrentUserActivityWithCompletion:self];
  }

  _currentUserActivityUUID = [MEMORY[0x277CC1EF0] _currentUserActivityUUID];
  if (_currentUserActivityUUID)
  {
    v7 = MEMORY[0x277CC1EF0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke;
    v8[3] = &unk_27856BEC8;
    v9 = v5;
    [v7 _fetchUserActivityWithUUID:_currentUserActivityUUID completionHandler:v8];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

+ (void)_syFetchCurrentUserActivityWithCompletion:()SYInternalExtensions .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYNSUserActivityExtensions.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end