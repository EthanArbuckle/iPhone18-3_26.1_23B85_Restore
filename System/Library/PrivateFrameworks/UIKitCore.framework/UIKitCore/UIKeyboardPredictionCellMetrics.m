@interface UIKeyboardPredictionCellMetrics
+ (id)secureCandidateEstimatedMetricsDictionary;
+ (id)secureCandidateEstimatedMetricsDictionaryForWidth:(double)a3;
@end

@implementation UIKeyboardPredictionCellMetrics

+ (id)secureCandidateEstimatedMetricsDictionary
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 scene];
  v5 = [v4 _interfaceOrientation];

  v6 = v3;
  v7 = +[UIKeyboardImpl keyboardScreen];
  v8 = [UIKBScreenTraits traitsWithScreen:v7 orientation:v5];

  [v8 keyboardWidth];
  v10 = v9;
  if (_usesiPadStyle())
  {
    if (+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isMinimized], v11, v12) && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
    {
      v10 = dbl_18A679D70[(v5 - 3) < 2];
    }

    else
    {
      v13 = +[UIKeyboardImpl activeInstance];
      v14 = [v13 traitCollection];

      v15 = [v6 systemInputAssistantViewController];
      [v15 _buttonBarWidthForTraitCollection:v14 interfaceOrientation:v5];
      v17 = v16;

      v10 = v10 - (v17 + v17);
    }
  }

  v18 = [a1 secureCandidateEstimatedMetricsDictionaryForWidth:v10];

  return v18;
}

+ (id)secureCandidateEstimatedMetricsDictionaryForWidth:(double)a3
{
  v41[8] = *MEMORY[0x1E69E9840];
  if (_usesiPadStyle())
  {
    v40[0] = *MEMORY[0x1E69D98C0];
    *&v4 = a3;
    v5 = floorf(*&v4);
    *&v4 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    v41[0] = v6;
    v40[1] = *MEMORY[0x1E69D98E8];
    v7 = a3 * 0.5;
    *&v7 = a3 * 0.5;
    *&v7 = floorf(*&v7);
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    v41[1] = v8;
    v40[2] = *MEMORY[0x1E69D98D8];
    v9 = a3 / 3.0;
    *&v9 = a3 / 3.0;
    *&v9 = floorf(*&v9);
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v41[2] = v10;
    v40[3] = *MEMORY[0x1E69D98C8];
    *&v11 = v5;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v41[3] = v12;
    v40[4] = *MEMORY[0x1E69D98F0];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:floor(a3)];
    v41[4] = v13;
    v40[5] = *MEMORY[0x1E69D98B8];
    v14 = a3 + -52.0;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v14)];
    v41[5] = v15;
    v40[6] = *MEMORY[0x1E69D98E0];
    v16 = v14 * 0.5;
    *&v16 = v14 * 0.5;
    *&v16 = floorf(*&v16);
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v41[6] = v17;
    v40[7] = *MEMORY[0x1E69D98D0];
    v18 = v14 / 3.0;
    *&v18 = v14 / 3.0;
    *&v18 = floorf(*&v18);
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v41[7] = v19;
    v20 = MEMORY[0x1E695DF20];
    v21 = v41;
    v22 = v40;
  }

  else
  {
    v38[0] = *MEMORY[0x1E69D98C0];
    v23 = (a3 + -4.0) / 12.0;
    v24 = floorf(v23);
    v25 = a3 - (v24 + v24) + -4.0;
    *&v25 = v25;
    *&v25 = floorf(*&v25);
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v39[0] = v6;
    v38[1] = *MEMORY[0x1E69D98E8];
    v26 = (a3 + -2.0) * 0.5;
    *&v26 = v26;
    *&v26 = floorf(*&v26);
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
    v39[1] = v8;
    v38[2] = *MEMORY[0x1E69D98D8];
    v27 = (a3 + -4.0) / 3.0;
    *&v27 = v27;
    *&v27 = floorf(*&v27);
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
    v39[2] = v10;
    v38[3] = *MEMORY[0x1E69D98C8];
    v28 = a3;
    *&v29 = floorf(v28);
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    v39[3] = v12;
    v38[4] = *MEMORY[0x1E69D98F0];
    v30 = a3 + -52.0;
    v31 = a3 + -52.0 + -2.0;
    *&v31 = v31;
    v32 = floorf(*&v31);
    *&v31 = v32;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
    v39[4] = v13;
    v38[5] = *MEMORY[0x1E69D98B8];
    *&v33 = v32;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
    v39[5] = v15;
    v38[6] = *MEMORY[0x1E69D98E0];
    v34 = (v30 + -4.0) * 0.5;
    *&v34 = v34;
    *&v34 = floorf(*&v34);
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
    v39[6] = v17;
    v38[7] = *MEMORY[0x1E69D98D0];
    v35 = (v30 + -6.0) / 3.0;
    *&v35 = v35;
    *&v35 = floorf(*&v35);
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
    v39[7] = v19;
    v20 = MEMORY[0x1E695DF20];
    v21 = v39;
    v22 = v38;
  }

  v36 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:8];

  return v36;
}

@end