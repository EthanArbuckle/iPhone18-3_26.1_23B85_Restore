@interface UIDatePickerCalendarTimeLabel
@end

@implementation UIDatePickerCalendarTimeLabel

void __68___UIDatePickerCalendarTimeLabel_initWithTimeFormat_minuteInterval___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateMachineUpdateFromState:a2 toState:a3];
}

void __59___UIDatePickerCalendarTimeLabel_attributedTextWithRanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a4 != 0;
  if (a2 && a4)
  {
    v8 = a2 - 1;
    do
    {
      [*(a1 + 32) rangeOfComposedCharacterSequenceAtIndex:a3 - 1 + v4];
      v4 -= v9;
      v7 = v4 != 0;
      v10 = v8-- != 0;
    }

    while (v10 && v4);
  }

  if (v7)
  {
    v11 = *(a1 + 40);
    v14 = *off_1E70EC920;
    v12 = +[UIColor clearColor];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v11 setAttributes:v13 range:{a3, v4}];
  }
}

void __59___UIDatePickerCalendarTimeLabel_attributedTextWithRanges___block_invoke_2(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1[4];
  v17 = *off_1E70EC920;
  v35 = *off_1E70EC920;
  v36[0] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  [v16 setAttributes:v18 range:{a1[5], a1[6]}];

  if (v12)
  {
    v19 = a1[4];
    v33 = v17;
    v34 = v12;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v19 setAttributes:v20 range:{a1[7], a1[8]}];
  }

  if (v13)
  {
    v21 = a1[4];
    v31 = v17;
    v32 = v13;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v21 setAttributes:v22 range:{a1[9], a1[10]}];
  }

  if (v15)
  {
    v23 = a1[4];
    v29 = v17;
    v30 = v15;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v23 setAttributes:v24 range:{a1[13], a1[14]}];
  }

  if (v14 && a1[12])
  {
    v25 = a1[4];
    v27 = v17;
    v28 = v14;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v25 setAttributes:v26 range:{a1[11], a1[12]}];
  }
}

@end