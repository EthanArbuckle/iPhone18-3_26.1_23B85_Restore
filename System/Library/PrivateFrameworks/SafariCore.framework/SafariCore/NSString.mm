@interface NSString
@end

@implementation NSString

void *__69__NSString_SafariCoreExtras__safari_stringByRemovingExcessWhitespace__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringByTrimmingCharactersInSet:*(a1 + 32)];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void __79__NSString_SafariCoreExtras__safari_stringByReplacingCharacterSetsInContainer___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  if ([*(a1 + 32) rangeOfCharacterFromSet:a2 options:0 range:{*(a1 + 56), *(a1 + 64)}] == *(a1 + 56))
  {
    *a4 = 1;
    v7 = [v14 length];
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v7)
    {
      [v8 replaceCharactersInRange:v9 withString:{v10, v14}];
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v7 - *(a1 + 64);
      v11 = *(a1 + 56) + v7;
    }

    else
    {
      [v8 deleteCharactersInRange:{v9, v10}];
      *(*(*(a1 + 40) + 8) + 24) -= *(a1 + 64);
      v11 = *(a1 + 56);
    }

    v12 = *(*(*(a1 + 40) + 8) + 24) - v11;
    v13 = *(*(a1 + 48) + 8);
    *(v13 + 48) = v11;
    *(v13 + 56) = v12;
  }
}

void __65__NSString_SafariCoreExtras__safari_containsDotOrHomoglyphForDot__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".٠۰܁܂․ꓸ꘎࠰．‧。｡·•∘𑂻○◦⁃⁎⋅∙◯⚬●◉⭘ᵒ༌ᵜ°࠾॰৽૰་᛫᠂⸰⸱・︒﹒･𐄁𐤟𐩑𐫴𐬹𑅴𑇇𑑏𑓆𑗄𑙃"];
  v1 = [NSString(SafariCoreExtras) safari_containsDotOrHomoglyphForDot]::dotAndHomoglyphsForDot;
  [NSString(SafariCoreExtras) safari_containsDotOrHomoglyphForDot]::dotAndHomoglyphsForDot = v0;
}

void __78__NSString_SafariCoreExtras__safari_firstLocationOfPeriodOrHomoglyphForPeriod__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".٠۰܁܂․ꓸ꘎．‧。｡"];
  v1 = [NSString(SafariCoreExtras) safari_firstLocationOfPeriodOrHomoglyphForPeriod]::periodAndHomoglyphsForPeriod;
  [NSString(SafariCoreExtras) safari_firstLocationOfPeriodOrHomoglyphForPeriod]::periodAndHomoglyphsForPeriod = v0;
}

void __80__NSString_SafariCoreExtras__safari_stringByReplacingHomoglyphForSpaceWithSpace__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v1 = [NSString(SafariCoreExtras) safari_stringByReplacingHomoglyphForSpaceWithSpace]::homoglyphsForSpace;
  [NSString(SafariCoreExtras) safari_stringByReplacingHomoglyphForSpaceWithSpace]::homoglyphsForSpace = v0;
}

void __105__NSString_SafariCoreExtras__safari_comparableSafariVersionNumberForAnalyticsFromNormalizedVersionString__block_invoke(uint64_t a1, void *a2, __int16 a3)
{
  v10 = a2;
  v5 = [MEMORY[0x1E696AB90] decimalNumberWithString:?];
  v6 = [v5 decimalNumberByMultiplyingByPowerOf10:(-3 * a3)];

  v7 = [*(*(*(a1 + 32) + 8) + 40) decimalNumberByAdding:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __107__NSString_SafariCoreExtras___safari_looksLikeWillRedirectToURLStringAfterAuthentication_orHostAfterLogin___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(log.{0 options:2}(in|on|out))|(sign.{0 error:{2}(in|on|up|out))|account|auth|authentication|federate|setsid", 1024, 0}];
  v1 = [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern;
  [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern = v0;

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"continue|after|next|later|return|sequent|succeed|success|result|resume|sso|then|follow.{0 options:2}(up|on|ing)|proceed|back.{0 error:{2}(to|in|on)|done", 1024, 0}];
  v3 = [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::redirectQueryNamePattern;
  [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::redirectQueryNamePattern = v2;

  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"accountname|appidkey|certversion|securityupgrade|relaystate|rememberme|samlrequest|sigalg|signature|widgetkey" options:1024 error:0];
  v5 = [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::samlQueryNamePattern;
  [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::samlQueryNamePattern = v4;
}

void __107__NSString_SafariCoreExtras___safari_looksLikeWillRedirectToURLStringAfterAuthentication_orHostAfterLogin___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 range];
  if (v6 / [*(a1 + 32) length] > 0.8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

BOOL __107__NSString_SafariCoreExtras___safari_looksLikeWillRedirectToURLStringAfterAuthentication_orHostAfterLogin___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 stringByRemovingPercentEncoding];
  v6 = [v5 lowercaseString];

  if (v6)
  {
    if (*(a1 + 48) == 1 && [-[NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::samlQueryNamePattern numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 value];
      v9 = [v8 stringByRemovingPercentEncoding];
      v10 = [v9 lowercaseString];

      if (*(a1 + 32) && ([v10 safari_hasPrefix:?] & 1) == 0 || *(a1 + 40) && !objc_msgSend(v10, "containsString:"))
      {
        v7 = 0;
      }

      else
      {
        v7 = (*(a1 + 48) & 1) != 0 || [-[NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::redirectQueryNamePattern numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] != 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __70__NSString_SafariCoreExtras__safari_stringByRemovingParenthesizedText__block_invoke()
{
  v0 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"([{<（［｛＜");
  v1 = [NSString(SafariCoreExtras) safari_stringByRemovingParenthesizedText]::openingsSet;
  [NSString(SafariCoreExtras) safari_stringByRemovingParenthesizedText]::openingsSet = v0;
}

@end