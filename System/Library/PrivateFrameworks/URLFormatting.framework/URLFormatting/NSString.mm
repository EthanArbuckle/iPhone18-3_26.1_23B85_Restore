@interface NSString
@end

@implementation NSString

void __131__NSString_LPInternal___lp_highLevelDomainFromComponents_indexOfFirstHighLevelDomainComponent_indexOfFirstTopLevelDomainComponent___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [v15 copy];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[6];
  if (v10)
  {
    *v10 = a1[7] + ~a3;
  }

  v11 = a1[8];
  if (v11)
  {
    *v11 = a1[7] - a3;
  }

  v12 = [v15 lowercaseString];
  IsDomainTopLevel = _CFHostIsDomainTopLevel();

  v14 = *(a1[5] + 8);
  if (IsDomainTopLevel)
  {
    *(v14 + 24) = 1;
  }

  else if (*(v14 + 24) == 1)
  {
    *a4 = 1;
  }
}

@end