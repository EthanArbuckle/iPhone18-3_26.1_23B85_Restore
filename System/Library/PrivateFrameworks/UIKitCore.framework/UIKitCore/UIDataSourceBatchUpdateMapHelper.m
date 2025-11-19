@interface UIDataSourceBatchUpdateMapHelper
@end

@implementation UIDataSourceBatchUpdateMapHelper

uint64_t __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = [*(a1 + 32) numberOfItemsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [*(a1 + 32) numberOfItemsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_3(uint64_t a1, unsigned int a2)
{
  v2 = [*(a1 + 32) numberOfItemsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_4(uint64_t a1, unsigned int a2)
{
  v2 = [*(a1 + 32) numberOfItemsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

void __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  _UIDataSourceUpdateFromCollectionViewUpdateItem(v4, a3);
}

@end