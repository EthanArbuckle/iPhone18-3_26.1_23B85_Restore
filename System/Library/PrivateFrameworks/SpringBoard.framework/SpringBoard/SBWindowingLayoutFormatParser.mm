@interface SBWindowingLayoutFormatParser
+ (id)createLayoutRequestForArrangement:(id)arrangement bundleIdentifiersToLaunch:(id)launch error:(id *)error;
+ (id)createLayoutRequestForFormat:(id)format bundleIdentifiersToLaunch:(id)launch error:(id *)error;
- (_NSRange)_findValidSubStringRangeForComponent:(id)component startIndex:(unint64_t)index currentIndex:(unint64_t)currentIndex error:(id *)error;
- (id)_createItemRequestWithArrangement:(id)arrangement bundleIdentifiers:(id)identifiers error:(id *)error;
- (id)_createItemRequestWithFormat:(id)format bundleIdentifiers:(id)identifiers error:(id *)error;
- (id)_parse:(id)_parse withBlock:(id)block;
- (int64_t)_applyLayoutRole:(int64_t)role;
@end

@implementation SBWindowingLayoutFormatParser

+ (id)createLayoutRequestForFormat:(id)format bundleIdentifiersToLaunch:(id)launch error:(id *)error
{
  formatCopy = format;
  launchCopy = launch;
  if (![formatCopy length])
  {
    v14 = 2;
LABEL_8:
    _SBWindowingLayoutFormatErrorWithCode(v14);
    *error = v10 = 0;
    goto LABEL_9;
  }

  if (![launchCopy count])
  {
    v14 = 5;
    goto LABEL_8;
  }

  v9 = objc_alloc_init(SBWindowingLayoutFormatParser);
  v16 = 0;
  v10 = [(SBWindowingLayoutFormatParser *)v9 _createItemRequestWithFormat:formatCopy bundleIdentifiers:launchCopy error:&v16];
  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    *error = v12;
  }

LABEL_9:

  return v10;
}

- (id)_createItemRequestWithFormat:(id)format bundleIdentifiers:(id)identifiers error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  identifiersCopy = identifiers;
  v25 = objc_opt_new();
  v8 = objc_opt_new();
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = formatCopy;
  v9 = [formatCopy componentsSeparatedByString:@"|"];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v37;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = objc_alloc_init(SBWindowingLayoutItemRequest);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __86__SBWindowingLayoutFormatParser__createItemRequestWithFormat_bundleIdentifiers_error___block_invoke;
        v29[3] = &unk_2783B0438;
        v30 = v8;
        v16 = v15;
        v31 = v16;
        v35 = v11;
        v17 = identifiersCopy;
        selfCopy = self;
        v34 = v40;
        v32 = v17;
        v18 = [(SBWindowingLayoutFormatParser *)self _parse:v14 withBlock:v29];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          *error = v19;
        }

        else
        {
          if ([(SBWindowingLayoutItemRequest *)v16 size]== 3)
          {
            [(SBWindowingLayoutItemRequest *)v16 setSize:0];
          }

          if ([(SBWindowingLayoutItemRequest *)v16 position]== 6)
          {
            [(SBWindowingLayoutItemRequest *)v16 setPosition:0];
          }

          [v25 addObject:v16];
          ++v11;
        }

        if (v19)
        {

          v22 = 0;
          goto LABEL_20;
        }
      }

      v9 = obj;
      v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v21 = [identifiersCopy count];
  if (v21 == [v25 count])
  {
    v22 = v25;
  }

  else
  {
    _SBWindowingLayoutFormatErrorWithCode(4uLL);
    *error = v22 = 0;
  }

LABEL_20:
  _Block_object_dispose(v40, 8);

  return v22;
}

id __86__SBWindowingLayoutFormatParser__createItemRequestWithFormat_bundleIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 6;
LABEL_3:
    v5 = _SBWindowingLayoutFormatErrorWithCode(v4);
    goto LABEL_60;
  }

  if (![*(a1 + 40) layoutRole])
  {
    v6 = *(a1 + 72);
    if (v6 >= [*(a1 + 48) count])
    {
      v4 = 4;
      goto LABEL_3;
    }

    v7 = [*(a1 + 48) objectAtIndex:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 56) _applyLayoutRole:*(*(*(a1 + 64) + 8) + 24) + 1];
    [*(a1 + 40) setLayoutRole:*(*(*(a1 + 64) + 8) + 24)];
    [*(a1 + 40) setBundleID:v7];
    [*(a1 + 32) addObject:v3];
  }

  if (![*(a1 + 40) tileRole])
  {
    v8 = *(a1 + 40);
    v9 = [v3 lowercaseString];
    if ([v9 isEqualToString:@"left"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"right"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"top"])
    {
      v10 = 5;
    }

    else if ([v9 isEqualToString:@"bottom"])
    {
      v10 = 6;
    }

    else if ([v9 isEqualToString:@"topleading"])
    {
      v10 = 7;
    }

    else if ([v9 isEqualToString:@"toptrailing"])
    {
      v10 = 8;
    }

    else if ([v9 isEqualToString:@"bottomleading"])
    {
      v10 = 9;
    }

    else if ([v9 isEqualToString:@"bottomtrailing"])
    {
      v10 = 10;
    }

    else if ([v9 isEqualToString:@"leftthird"])
    {
      v10 = 11;
    }

    else if ([v9 isEqualToString:@"middlethird"])
    {
      v10 = 12;
    }

    else if ([v9 isEqualToString:@"rightthird"])
    {
      v10 = 13;
    }

    else if ([v9 isEqualToString:@"lefttwothird"])
    {
      v10 = 14;
    }

    else if ([v9 isEqualToString:@"righttwothird"])
    {
      v10 = 15;
    }

    else
    {
      v10 = 0;
    }

    [v8 setTileRole:v10];
  }

  if ([*(a1 + 40) size] == 3)
  {
    v11 = *(a1 + 40);
    v12 = [v3 lowercaseString];
    if ([v12 isEqualToString:@"maximized"])
    {
      v13 = 1;
    }

    else if ([v12 isEqualToString:@"inset"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    [v11 setSize:v13];
  }

  if ([*(a1 + 40) position] == 6)
  {
    v14 = *(a1 + 40);
    v15 = [v3 lowercaseString];
    if ([v15 isEqualToString:@"topright"])
    {
      v16 = 2;
    }

    else if ([v15 isEqualToString:@"topleft"])
    {
      v16 = 3;
    }

    else if ([v15 isEqualToString:@"bottomleft"])
    {
      v16 = 4;
    }

    else if ([v15 isEqualToString:@"bottomright"])
    {
      v16 = 5;
    }

    else if ([v15 isEqualToString:@"center"])
    {
      v16 = 1;
    }

    else
    {
      v16 = 6;
    }

    [v14 setPosition:v16];
  }

  v17 = [v3 lowercaseString];
  v18 = [v17 isEqualToString:@"keyfocus"];

  if (v18)
  {
    [*(a1 + 40) setWantsFocus:1];
  }

  v5 = 0;
LABEL_60:

  return v5;
}

+ (id)createLayoutRequestForArrangement:(id)arrangement bundleIdentifiersToLaunch:(id)launch error:(id *)error
{
  arrangementCopy = arrangement;
  launchCopy = launch;
  if (![arrangementCopy length])
  {
    v14 = 2;
LABEL_8:
    _SBWindowingLayoutFormatErrorWithCode(v14);
    *error = v10 = 0;
    goto LABEL_9;
  }

  if (![launchCopy count])
  {
    v14 = 5;
    goto LABEL_8;
  }

  v9 = objc_alloc_init(SBWindowingLayoutFormatParser);
  v16 = 0;
  v10 = [(SBWindowingLayoutFormatParser *)v9 _createItemRequestWithArrangement:arrangementCopy bundleIdentifiers:launchCopy error:&v16];
  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    *error = v12;
  }

LABEL_9:

  return v10;
}

- (id)_createItemRequestWithArrangement:(id)arrangement bundleIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __91__SBWindowingLayoutFormatParser__createItemRequestWithArrangement_bundleIdentifiers_error___block_invoke;
  v19 = &unk_2783B0460;
  v20 = identifiersCopy;
  selfCopy = self;
  v9 = identifiersCopy;
  arrangementCopy = arrangement;
  v11 = MEMORY[0x223D6F7F0](&v16);
  lowercaseString = [arrangementCopy lowercaseString];

  if ([lowercaseString isEqualToString:@"split"])
  {

    (v11)[2](v11, &unk_28336DFB0);
    v14 = LABEL_7:;
    goto LABEL_8;
  }

  if ([lowercaseString isEqualToString:@"thirds"])
  {

    (v11)[2](v11, &unk_28336DFC8);
    goto LABEL_7;
  }

  v13 = [lowercaseString isEqualToString:@"grid"];

  if (v13)
  {
    (v11)[2](v11, &unk_28336DFE0);
    goto LABEL_7;
  }

  _SBWindowingLayoutFormatErrorWithCode(7uLL);
  *error = v14 = 0;
LABEL_8:

  return v14;
}

id __91__SBWindowingLayoutFormatParser__createItemRequestWithArrangement_bundleIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 count];
  v6 = [*(a1 + 32) count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = objc_alloc_init(SBWindowingLayoutItemRequest);
      v11 = [*(a1 + 32) objectAtIndex:v8];
      v12 = [v3 objectAtIndex:v8];
      v13 = [v12 integerValue];

      v9 = [*(a1 + 40) _applyLayoutRole:v9 + 1];
      [(SBWindowingLayoutItemRequest *)v10 setBundleID:v11];
      [(SBWindowingLayoutItemRequest *)v10 setLayoutRole:v9];
      [(SBWindowingLayoutItemRequest *)v10 setTileRole:v13];
      [v4 addObject:v10];

      ++v8;
      v14 = [v3 count];
      v15 = [*(a1 + 32) count];
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }
    }

    while (v8 < v16);
  }

  return v4;
}

- (id)_parse:(id)_parse withBlock:(id)block
{
  _parseCopy = _parse;
  blockCopy = block;
  if ([_parseCopy length])
  {
    v8 = 0;
    while (1)
    {
      v18 = 0;
      v9 = [(SBWindowingLayoutFormatParser *)self _findValidSubStringRangeForComponent:_parseCopy startIndex:v8 currentIndex:v8 error:&v18];
      v11 = v10;
      v12 = v18;
      v13 = v12;
      if (v12)
      {
        v16 = v12;
        goto LABEL_10;
      }

      v14 = [_parseCopy substringWithRange:{v9, v11}];
      if ([v14 length])
      {
        v15 = blockCopy[2](blockCopy, v14);
        if (v15)
        {
          break;
        }
      }

      v8 = v9 + v11 + 1;
      if (v8 >= [_parseCopy length])
      {
        goto LABEL_7;
      }
    }

    v16 = v15;

LABEL_10:
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

- (_NSRange)_findValidSubStringRangeForComponent:(id)component startIndex:(unint64_t)index currentIndex:(unint64_t)currentIndex error:(id *)error
{
  componentCopy = component;
  if ([componentCopy length] <= currentIndex)
  {
    goto LABEL_8;
  }

  v11 = [componentCopy characterAtIndex:currentIndex];
  if (v11 == 124 || v11 == 93)
  {
    goto LABEL_8;
  }

  if (v11 != 91)
  {
    v18 = v11;
    v19 = v11;
    if (!isValidSymbol(v11))
    {
      valid = isValidSymbol(v19);
      if (((v18 & 0xDF) - 65) >= 0x1Au && (valid & 1) == 0)
      {
        *error = _SBWindowingLayoutFormatErrorWithCode(1uLL);
        index = 0x7FFFFFFFFFFFFFFFLL;
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_9;
      }

      v13 = currentIndex + 1;
      selfCopy2 = self;
      v15 = componentCopy;
      indexCopy = index;
      goto LABEL_6;
    }

LABEL_8:
    v17 = currentIndex - index;
    goto LABEL_9;
  }

  indexCopy = index + 1;
  v13 = currentIndex + 1;
  selfCopy2 = self;
  v15 = componentCopy;
LABEL_6:
  index = [(SBWindowingLayoutFormatParser *)selfCopy2 _findValidSubStringRangeForComponent:v15 startIndex:indexCopy currentIndex:v13 error:error];
  v17 = v16;
LABEL_9:

  indexCopy2 = index;
  v21 = v17;
  result.length = v21;
  result.location = indexCopy2;
  return result;
}

- (int64_t)_applyLayoutRole:(int64_t)role
{
  if (SBLayoutRoleAdditionalSideRangeMax() <= role || SBLayoutRoleIsValidForSplitView(role) && SBLayoutRoleAdditionalSideRangeMax() > role)
  {
    return role;
  }

  return [(SBWindowingLayoutFormatParser *)self _applyLayoutRole:role + 1];
}

@end