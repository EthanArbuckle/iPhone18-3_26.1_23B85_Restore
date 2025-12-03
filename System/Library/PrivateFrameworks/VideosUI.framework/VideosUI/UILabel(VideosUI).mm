@interface UILabel(VideosUI)
- (double)vui_alignmentInsetsForExpectedWidth:()VideosUI;
- (double)vui_heightToBaseline;
- (double)vui_textSizeForSize:()VideosUI;
@end

@implementation UILabel(VideosUI)

- (double)vui_heightToBaseline
{
  font = [self font];
  [font lineHeight];
  v3 = v2;
  [font descender];
  v5 = v3 + v4;

  return v5;
}

- (double)vui_textSizeForSize:()VideosUI
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__UILabel_VideosUI__vui_textSizeForSize___block_invoke;
  aBlock[3] = &unk_1E872EB88;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  [self tv_sizeThatFits:v6 withSizeCalculation:{a2, a3}];
  v8 = v7;

  return v8;
}

- (double)vui_alignmentInsetsForExpectedWidth:()VideosUI
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_1E44FDE95;
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = v2;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__UILabel_VideosUI__vui_alignmentInsetsForExpectedWidth___block_invoke;
  aBlock[3] = &unk_1E8732668;
  aBlock[4] = v15;
  aBlock[5] = &v16;
  v3 = _Block_copy(aBlock);
  attributedText = [self attributedText];
  if ([attributedText length])
  {
    v5 = [attributedText length];
    v6 = *MEMORY[0x1E69DB648];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__UILabel_VideosUI__vui_alignmentInsetsForExpectedWidth___block_invoke_2;
    v12[3] = &unk_1E8732690;
    v13 = v3;
    [attributedText enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v12}];
    _defaultAttributes = v13;
  }

  else
  {
    _defaultAttributes = [self _defaultAttributes];
    v8 = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    (*(v3 + 2))(v3, v8);
  }

  v9 = v17;
  v10 = floor(v17[4]);
  v17[4] = v10;
  v9[6] = floor(v9[6]);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  return v10;
}

@end