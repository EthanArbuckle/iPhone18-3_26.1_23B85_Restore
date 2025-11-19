@interface UIFont
@end

@implementation UIFont

void __47__UIFont_VideosUI__uifontWeightFromFontWeight___block_invoke()
{
  v12[9] = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F5E5CA08;
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB998]];
  v12[0] = v0;
  v11[1] = &unk_1F5E5CA20;
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB988]];
  v12[1] = v1;
  v11[2] = &unk_1F5E5CA38;
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB968]];
  v12[2] = v2;
  v11[3] = &unk_1F5E5CA50;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v12[3] = v3;
  v11[4] = &unk_1F5E5CA68;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v12[4] = v4;
  v11[5] = &unk_1F5E5CA80;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v12[5] = v5;
  v11[6] = &unk_1F5E5CA98;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v12[6] = v6;
  v11[7] = &unk_1F5E5CAB0;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
  v12[7] = v7;
  v11[8] = &unk_1F5E5CAC8;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB950]];
  v12[8] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v10 = uifontWeightFromFontWeight__sFontWeightMap;
  uifontWeightFromFontWeight__sFontWeightMap = v9;
}

void __45__UIFont_VideosUI__uifontWidthFromFontWidth___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5E5CA08;
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB9A8]];
  v7[0] = v0;
  v6[1] = &unk_1F5E5CA20;
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB9B8]];
  v7[1] = v1;
  v6[2] = &unk_1F5E5CA38;
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB9B0]];
  v7[2] = v2;
  v6[3] = &unk_1F5E5CA50;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB9A0]];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = uifontWidthFromFontWidth__sFontWeightMap;
  uifontWidthFromFontWidth__sFontWeightMap = v4;
}

void __49__UIFont_VideosUI__uiFontTextStyleFromTextStyle___block_invoke()
{
  v26[25] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDDB0];
  v25[0] = &unk_1F5E5CB10;
  v25[1] = &unk_1F5E5CA08;
  v1 = *MEMORY[0x1E69DDDB8];
  v26[0] = v0;
  v26[1] = v1;
  v2 = *MEMORY[0x1E69DDDC0];
  v25[2] = &unk_1F5E5CA20;
  v25[3] = &unk_1F5E5CA38;
  v3 = *MEMORY[0x1E69DDDC8];
  v26[2] = v2;
  v26[3] = v3;
  v4 = *MEMORY[0x1E6965B40];
  v25[4] = &unk_1F5E5CA50;
  v25[5] = &unk_1F5E5CA68;
  v5 = *MEMORY[0x1E69DDD58];
  v26[4] = v4;
  v26[5] = v5;
  v6 = *MEMORY[0x1E69DDD40];
  v25[6] = &unk_1F5E5CA80;
  v25[7] = &unk_1F5E5CA98;
  v7 = *MEMORY[0x1E69DDD50];
  v26[6] = v6;
  v26[7] = v7;
  v8 = *MEMORY[0x1E6965AE8];
  v25[8] = &unk_1F5E5CAB0;
  v25[9] = &unk_1F5E5CAC8;
  v9 = *MEMORY[0x1E69DDD98];
  v26[8] = v8;
  v26[9] = v9;
  v10 = *MEMORY[0x1E69DDDA0];
  v25[10] = &unk_1F5E5CB28;
  v25[11] = &unk_1F5E5CB40;
  v11 = *MEMORY[0x1E69DDDA8];
  v26[10] = v10;
  v26[11] = v11;
  v12 = *MEMORY[0x1E69DDD00];
  v25[12] = &unk_1F5E5CB58;
  v25[13] = &unk_1F5E5CB70;
  v13 = *MEMORY[0x1E69DDCF8];
  v26[12] = v12;
  v26[13] = v13;
  v14 = *MEMORY[0x1E69DDD78];
  v25[14] = &unk_1F5E5CB88;
  v25[15] = &unk_1F5E5CBA0;
  v15 = *MEMORY[0x1E69DDD28];
  v26[14] = v14;
  v26[15] = v15;
  v16 = *MEMORY[0x1E69DDD08];
  v25[16] = &unk_1F5E5CBB8;
  v25[17] = &unk_1F5E5CBD0;
  v17 = *MEMORY[0x1E69DDD10];
  v26[16] = v16;
  v26[17] = v17;
  v25[18] = &unk_1F5E5CBE8;
  v25[19] = &unk_1F5E5CC00;
  v18 = *MEMORY[0x1E6965B08];
  v26[18] = v2;
  v26[19] = v18;
  v19 = *MEMORY[0x1E6965AF0];
  v25[20] = &unk_1F5E5CC18;
  v25[21] = &unk_1F5E5CC30;
  v20 = *MEMORY[0x1E6965B10];
  v26[20] = v19;
  v26[21] = v20;
  v21 = *MEMORY[0x1E6965B00];
  v25[22] = &unk_1F5E5CC48;
  v25[23] = &unk_1F5E5CC60;
  v22 = *MEMORY[0x1E6965AF8];
  v26[22] = v21;
  v26[23] = v22;
  v25[24] = &unk_1F5E5CC78;
  v26[24] = v17;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:25];
  v24 = uiFontTextStyleFromTextStyle__sTextStyleMap;
  uiFontTextStyleFromTextStyle__sTextStyleMap = v23;
}

@end