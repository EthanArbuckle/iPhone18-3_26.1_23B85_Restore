@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __102__NSMutableAttributedString_WBSNSMutableAttributedExtras__safari_replaceCharactersWithStringBindings___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(a1 + 32) rangeOfString:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = v6;
    v9 = [WBSPair alloc];
    v10 = [MEMORY[0x1E696B098] valueWithRange:{v7, v8}];
    v11 = [(WBSPair *)v9 initWithFirst:v12 second:v10];

    [*(a1 + 40) insertObject:v11 atIndex:{objc_msgSend(*(a1 + 40), "indexOfObject:inSortedRange:options:usingComparator:", v11, 0, objc_msgSend(*(a1 + 40), "count"), 1024, &__block_literal_global_27)}];
  }
}

uint64_t __102__NSMutableAttributedString_WBSNSMutableAttributedExtras__safari_replaceCharactersWithStringBindings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 second];
  v6 = [v5 rangeValue];

  v7 = [v4 second];

  v8 = [v7 rangeValue];
  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end