@interface WBSCreditCardFormatter
+ (id)_formattedStringForNormalizedNumber:(id)number showCreditCardNumber:(BOOL)cardNumber showLastFourDigits:(BOOL)digits isVirtualCard:(BOOL)card;
+ (id)formattedStringForNormalizedNumber:(id)number showCreditCardNumber:(BOOL)cardNumber;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
- (_NSRange)_normalizedSelectionRangeForFormattedCreditCardNumber:(id)number withOriginalSelectionRange:(_NSRange)range;
- (_NSRange)_selectionRangeInFormattedCreditCardNumber:(id)number forNormalizedSelectionRange:(_NSRange)range inNormalizedCreditCardNumber:(id)cardNumber;
- (id)stringForObjectValue:(id)value;
@end

@implementation WBSCreditCardFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [WBSCreditCardFormatter _formattedStringForNormalizedNumber:valueCopy showCreditCardNumber:[(WBSCreditCardFormatter *)self showCreditCardNumber] showLastFourDigits:[(WBSCreditCardFormatter *)self showLastFourDigits] isVirtualCard:[(WBSCreditCardFormatter *)self isVirtualCard]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v8 = WBSNormalizedCreditCardNumber();
    if (v8 && ([(WBSCreditCardFormatter *)self allowsUnknownCardTypes]|| WBSCreditCardTypeFromNumber()))
    {
      if (value)
      {
        v9 = v8;
        *value = v8;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  validCopy = valid;
  v8 = [validCopy length];
  if (v8)
  {
    v9 = WBSNormalizedCreditCardNumber();
    if (v9)
    {
      if (string)
      {
        v10 = [WBSCreditCardFormatter _formattedStringForNormalizedNumber:v9 showCreditCardNumber:1 showLastFourDigits:[(WBSCreditCardFormatter *)self showLastFourDigits] isVirtualCard:[(WBSCreditCardFormatter *)self isVirtualCard]];
LABEL_7:
        *string = v10;
      }
    }

    else if (string)
    {
      v10 = 0;
      goto LABEL_7;
    }
  }

  return v8 == 0;
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  length = selectedRange.length;
  location = selectedRange.location;
  stringCopy = string;
  v13 = [*valid length];
  if (v13)
  {
    v14 = WBSNormalizedCreditCardNumber();
    if (v14)
    {
      v15 = [(WBSCreditCardFormatter *)self _normalizedSelectionRangeForFormattedCreditCardNumber:*valid withOriginalSelectionRange:range->location, range->length];
      v17 = v16;
      v18 = [WBSCreditCardFormatter _formattedStringForNormalizedNumber:v14 showCreditCardNumber:1 showLastFourDigits:[(WBSCreditCardFormatter *)self showLastFourDigits] isVirtualCard:[(WBSCreditCardFormatter *)self isVirtualCard]];
      *valid = v18;
      range->location = [(WBSCreditCardFormatter *)self _selectionRangeInFormattedCreditCardNumber:v18 forNormalizedSelectionRange:v15 inNormalizedCreditCardNumber:v17, v14];
      range->length = v19;
    }

    else
    {
      *valid = [stringCopy copy];
      range->location = location;
      range->length = length;
    }
  }

  return v13 == 0;
}

+ (id)formattedStringForNormalizedNumber:(id)number showCreditCardNumber:(BOOL)cardNumber
{
  v4 = [WBSCreditCardFormatter _formattedStringForNormalizedNumber:number showCreditCardNumber:cardNumber showLastFourDigits:0 isVirtualCard:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F3A5E418;
  }

  v7 = v6;

  return v6;
}

+ (id)_formattedStringForNormalizedNumber:(id)number showCreditCardNumber:(BOOL)cardNumber showLastFourDigits:(BOOL)digits isVirtualCard:(BOOL)card
{
  cardCopy = card;
  digitsCopy = digits;
  numberCopy = number;
  v10 = [numberCopy length];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v11 = v10 - 4;
  if (v10 <= 4 && cardCopy && !cardNumber)
  {
    v12 = [@"•••• •••• •••• ••••" substringToIndex:{objc_msgSend(@"•••• •••• •••• ••••", "length") - v10}];
    v13 = [v12 stringByAppendingString:numberCopy];

    goto LABEL_24;
  }

  if (digitsCopy)
  {
    if (v10 > 3)
    {
      v14 = 4;
    }

    else
    {
      v11 = 0;
      v14 = v10;
    }
  }

  else
  {
    v14 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __116__WBSCreditCardFormatter__formattedStringForNormalizedNumber_showCreditCardNumber_showLastFourDigits_isVirtualCard___block_invoke;
  v32 = &unk_1E7FC4F40;
  cardNumberCopy = cardNumber;
  v34 = v10;
  v35 = v11;
  v36 = v14;
  v15 = numberCopy;
  v33 = v15;
  v16 = MEMORY[0x1BFB13CE0](&v29);
  v17 = WBSCreditCardTypeFromNumberAllowingPartialMatch();
  if (v17 == 4)
  {
    if ([v15 length] == 14)
    {
      v18 = MEMORY[0x1E695DEC8];
      array = v16[2](v16, 0, 4);
      v20 = v16[2](v16, 4, 6);
      v16[2](v16, 10, 4);
      goto LABEL_17;
    }

LABEL_18:
    array = [MEMORY[0x1E695DF70] array];
    v23 = [v15 length];
    if (v23)
    {
      v24 = v23;
      for (i = 0; i < v24; i += 4)
      {
        v26 = v16[2](v16, i, 4);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        [array addObject:v26];
      }
    }

    v13 = [array componentsJoinedByString:@" "];
    goto LABEL_23;
  }

  if (v17 != 3)
  {
    goto LABEL_18;
  }

  v18 = MEMORY[0x1E695DEC8];
  array = v16[2](v16, 0, 4);
  v20 = v16[2](v16, 4, 6);
  v16[2](v16, 10, 5);
  v21 = LABEL_17:;
  v22 = [v18 arrayWithObjects:{array, v20, v21, 0, v29, v30, v31, v32}];
  v13 = [v22 componentsJoinedByString:@" "];

LABEL_23:
LABEL_24:

  return v13;
}

id __116__WBSCreditCardFormatter__formattedStringForNormalizedNumber_showCreditCardNumber_showLastFourDigits_isVirtualCard___block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
  {
    v8 = 0;
  }

  else
  {
    if (a2 + a3 <= v3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v3 - a2;
    }

    if ((*(a1 + 64) & 1) != 0 || (v7 = *(a1 + 48), v7 < a2))
    {
      v8 = [*(a1 + 32) substringWithRange:{a2, v6}];
    }

    else
    {
      if (v7 >= v6 + a2)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7 - a2;
      }

      v11 = [&stru_1F3A5E418 stringByPaddingToLength:v10 withString:@"•" startingAtIndex:0];
      v15.location = a2;
      v15.length = v6;
      v12 = NSIntersectionRange(v15, *(a1 + 48));
      if (v12.length)
      {
        v13 = [*(a1 + 32) substringWithRange:{v12.location, v12.length}];
        v8 = [v11 stringByAppendingString:v13];
      }

      else
      {
        v8 = v11;
      }
    }
  }

  return v8;
}

- (_NSRange)_normalizedSelectionRangeForFormattedCreditCardNumber:(id)number withOriginalSelectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  numberCopy = number;
  v7 = location + length;
  v8 = WBSAllowedCreditCardNumberSeparatorCharacters();
  if (location + length)
  {
    v9 = 0;
    v10 = location;
    do
    {
      v11 = [v8 characterIsMember:{objc_msgSend(numberCopy, "characterAtIndex:", v9)}];
      v12 = length - 1;
      v13 = v10 - 1;
      if (v9 > location)
      {
        v13 = v10;
      }

      else
      {
        v12 = length;
      }

      if (v11)
      {
        length = v12;
        v10 = v13;
      }

      ++v9;
    }

    while (v7 != v9);
  }

  else
  {
    v10 = location;
  }

  v14 = v10;
  v15 = length;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)_selectionRangeInFormattedCreditCardNumber:(id)number forNormalizedSelectionRange:(_NSRange)range inNormalizedCreditCardNumber:(id)cardNumber
{
  length = range.length;
  location = range.location;
  numberCopy = number;
  cardNumberCopy = cardNumber;
  if (location == [cardNumberCopy length])
  {
    v10 = [numberCopy length];
    v11 = 0;
  }

  else
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3010000000;
    v19 = "";
    v20 = xmmword_1BB9145A0;
    v12 = [numberCopy length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __126__WBSCreditCardFormatter__selectionRangeInFormattedCreditCardNumber_forNormalizedSelectionRange_inNormalizedCreditCardNumber___block_invoke;
    v15[3] = &unk_1E7FC4F68;
    v15[4] = v21;
    v15[5] = &v16;
    v15[6] = location;
    v15[7] = length;
    [numberCopy enumerateSubstringsInRange:0 options:v12 usingBlock:{515, v15}];
    v10 = v17[4];
    v11 = v17[5];
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(v21, 8);
  }

  v13 = v10;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

void *__126__WBSCreditCardFormatter__selectionRangeInFormattedCreditCardNumber_forNormalizedSelectionRange_inNormalizedCreditCardNumber___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(result[4] + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v8 + a4;
  v9 = *(result[5] + 8);
  if (*(v9 + 32) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = result[6];
    if (v10 > *(*(result[4] + 8) + 24))
    {
      return result;
    }

    *(v9 + 32) = a3 - v8 + v10;
  }

  v11 = result[7] + result[6];
  if (v11 <= *(*(result[4] + 8) + 24))
  {
    *(*(result[5] + 8) + 40) = a3 + v11 - (v8 + *(*(result[5] + 8) + 32));
    *a7 = 1;
  }

  return result;
}

@end