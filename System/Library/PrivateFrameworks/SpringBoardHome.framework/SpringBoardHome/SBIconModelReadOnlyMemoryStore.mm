@interface SBIconModelReadOnlyMemoryStore
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (BOOL)saveDesiredIconState:(id)state error:(id *)error;
@end

@implementation SBIconModelReadOnlyMemoryStore

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)saveDesiredIconState:(id)state error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

@end