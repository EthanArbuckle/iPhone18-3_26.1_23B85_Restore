@interface SBIconModelReadOnlyMemoryStore
- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4;
- (BOOL)saveDesiredIconState:(id)a3 error:(id *)a4;
@end

@implementation SBIconModelReadOnlyMemoryStore

- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)saveDesiredIconState:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)deleteCurrentIconStateWithOptions:(unint64_t)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

@end