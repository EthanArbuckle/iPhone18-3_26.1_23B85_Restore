@interface UIDatePickerCalendarTimeView
@end

@implementation UIDatePickerCalendarTimeView

void __52___UIDatePickerCalendarTimeView__setupViewHierarchy__block_invoke(id *a1, void *a2)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 topAnchor];
  v6 = [a1[5] topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  LODWORD(v8) = 1148829696;
  v9 = v7;
  v28 = v7;
  [v7 setPriority:v8];
  v27 = [a1[4] centerYAnchor];
  v26 = [a1[5] centerYAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:-1.0];
  v30[0] = v25;
  v24 = [a1[4] topAnchor];
  v23 = [a1[5] topAnchor];
  v10 = [v24 constraintGreaterThanOrEqualToAnchor:v23];
  v30[1] = v10;
  v11 = [a1[6] centerYAnchor];
  v12 = [a1[5] centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-1.0];
  v30[2] = v13;
  v14 = [a1[6] topAnchor];
  v15 = [a1[5] topAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  v30[3] = v16;
  v30[4] = v9;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5];
  [v4 addObjectsFromArray:v17];

  v18 = [a1[6] leadingAnchor];
  v19 = [a1[5] layoutMarginsGuide];
  v20 = [v19 leadingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v29 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  [v4 addObjectsFromArray:v22];
}

id __51___UIDatePickerCalendarTimeView__updateClockLayout__block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v4 leadingAnchor];
  if (v3 == 1)
  {
    v6 = [*(a1 + 32) trailingAnchor];
    v7 = [v5 constraintEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];

    v8 = [v4 leadingAnchor];

    v9 = [*(a1 + 32) trailingAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v9 multiplier:1.0];
  }

  else
  {
    v11 = [*(a1 + 40) layoutMarginsGuide];
    v12 = [v11 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v12];

    v8 = [v4 leadingAnchor];

    v9 = [*(a1 + 40) layoutMarginsGuide];
    v13 = [v9 leadingAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToAnchor:v13];
  }

  LODWORD(v14) = 1132068864;
  [v7 setPriority:v14];
  v17[0] = v7;
  v17[1] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  return v15;
}

@end