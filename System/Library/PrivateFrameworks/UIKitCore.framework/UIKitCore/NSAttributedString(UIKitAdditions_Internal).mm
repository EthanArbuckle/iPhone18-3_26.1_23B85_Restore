@interface NSAttributedString(UIKitAdditions_Internal)
- (id)_ui_attributedStringAdjustedToTraitCollection:()UIKitAdditions_Internal;
- (id)_ui_rtfDataError:()UIKitAdditions_Internal;
- (id)_ui_rtfdFileWrapperError:()UIKitAdditions_Internal;
- (uint64_t)_ui_containsTables;
@end

@implementation NSAttributedString(UIKitAdditions_Internal)

- (id)_ui_rtfdFileWrapperError:()UIKitAdditions_Internal
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [self length];
  v9 = *off_1E70EC8F0;
  v10[0] = *off_1E70EC998;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [self fileWrapperFromRange:0 documentAttributes:v5 error:{v6, a3}];

  return v7;
}

- (id)_ui_rtfDataError:()UIKitAdditions_Internal
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [self length];
  v9 = *off_1E70EC8F0;
  v10[0] = *off_1E70EC9A0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [self dataFromRange:0 documentAttributes:v5 error:{v6, a3}];

  return v7;
}

- (id)_ui_attributedStringAdjustedToTraitCollection:()UIKitAdditions_Internal
{
  v4 = a3;
  v5 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:self];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (v4)
  {
    v6 = [self length];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__NSAttributedString_UIKitAdditions_Internal___ui_attributedStringAdjustedToTraitCollection___block_invoke;
    v13[3] = &unk_1E70F3078;
    v14 = v4;
    v16 = &v17;
    v15 = v5;
    [v15 enumerateAttributesInRange:0 options:v6 usingBlock:{0x100000, v13}];

    v7 = v18[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 copy];
  v9 = v8;
  if (v8)
  {
    selfCopy = v8;
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (uint64_t)_ui_containsTables
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [self length];
  v3 = NSClassFromString(&cfstr_Nstexttableblo.isa);
  v4 = *off_1E70EC988;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSAttributedString_UIKitAdditions_Internal___ui_containsTables__block_invoke;
  v7[3] = &unk_1E70F30A0;
  v7[4] = &v8;
  v7[5] = v3;
  [self enumerateAttribute:v4 inRange:0 options:v2 usingBlock:{0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end