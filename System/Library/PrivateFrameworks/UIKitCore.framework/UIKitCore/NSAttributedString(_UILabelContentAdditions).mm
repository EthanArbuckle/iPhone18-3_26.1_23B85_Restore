@interface NSAttributedString(_UILabelContentAdditions)
- (uint64_t)containsAttributes:()_UILabelContentAdditions;
- (uint64_t)supportedMonochromaticTreatment:()_UILabelContentAdditions;
@end

@implementation NSAttributedString(_UILabelContentAdditions)

- (uint64_t)containsAttributes:()_UILabelContentAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [a1 length];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__NSAttributedString__UILabelContentAdditions__containsAttributes___block_invoke;
      v13[3] = &unk_1E70F8050;
      v13[4] = &v18;
      [a1 enumerateAttribute:v10 inRange:0 options:v5 usingBlock:{0x100000, v13}];
      if (v19[3])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11 & 1;
}

- (uint64_t)supportedMonochromaticTreatment:()_UILabelContentAdditions
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24[0] = *off_1E70EC8D0;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v6 = [a1 containsAttributes:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1 string];
    if ([v8 _containsEmoji])
    {

      v7 = 1;
    }

    else
    {
      v23 = *off_1E70EC8C0;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      v10 = [a1 containsAttributes:v9];

      v7 = 1;
      if ((v10 & 1) == 0)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 1;
        v11 = [a1 length];
        v12 = *off_1E70EC920;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __80__NSAttributedString__UILabelContentAdditions__supportedMonochromaticTreatment___block_invoke;
        v14[3] = &unk_1E712A1E0;
        v17 = 0;
        v18 = v11;
        v16 = &v19;
        v15 = v4;
        [a1 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v14}];
        if (*(v20 + 24))
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }

        _Block_object_dispose(&v19, 8);
      }
    }
  }

  return v7;
}

@end