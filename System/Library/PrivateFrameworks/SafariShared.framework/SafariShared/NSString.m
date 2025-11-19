@interface NSString
@end

@implementation NSString

void __54__NSString_SafariSharedExtras__safari_bestLanguageTag__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v10 = v9;
  if (v9)
  {
    v13 = v9;
    v11 = [v9 isEqualToString:@"und"];
    v10 = v13;
    if ((v11 & 1) == 0)
    {
      [*(a1 + 32) addObject:v13];
      v12 = [*(a1 + 32) countForObject:v13];
      v10 = v13;
      if (v12 >= 0x64)
      {
        *a7 = 1;
      }
    }
  }
}

void __54__NSString_SafariSharedExtras__safari_bestLanguageTag__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [*(a1 + 32) countForObject:?];
  if (v4 > *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }
}

void __67__NSString_SafariSharedExtras__safari_saltForURLHashesOfComponents__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  -[NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::salt = [v0 integerForKey:@"safari_urlHashesOfComponents_salt"];

  if (![NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::salt)
  {
    [NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::salt = arc4random();
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v1 setInteger:-[NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::salt forKey:@"safari_urlHashesOfComponents_salt"];
  }
}

id __52__NSString_SafariSharedExtras__safari_containedURLs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((WBSUnifiedFieldInputTypeForString(v2) - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v3 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __60__NSString_ParsecExtras__safari_normalizedParsecInputString__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([a2 characterIsMember:*(a1 + 48)])
  {
    [*(a1 + 32) appendString:v7];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end