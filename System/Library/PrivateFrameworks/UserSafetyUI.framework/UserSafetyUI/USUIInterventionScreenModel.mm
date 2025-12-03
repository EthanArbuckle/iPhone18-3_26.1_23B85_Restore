@interface USUIInterventionScreenModel
+ (id)actionsForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options;
+ (id)actionsForScreenOne:(int64_t)one type:(int64_t)type options:(int64_t)options;
+ (id)actionsForScreenTwo:(int64_t)two type:(int64_t)type;
+ (id)bulletsForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type;
+ (id)bulletsForScreenOneOver13:(int64_t)over13;
+ (id)bulletsForScreenOneUnder13:(int64_t)under13;
+ (id)bulletsForScreenTwoOver13:(int64_t)over13;
+ (id)bulletsForScreenTwoUnder13:(int64_t)under13;
+ (id)emojiForScreen:(int64_t)screen;
+ (id)imageNameForScreen:(int64_t)screen;
+ (id)modelForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options;
+ (id)titleForScreen:(int64_t)screen workflow:(int64_t)workflow;
@end

@implementation USUIInterventionScreenModel

+ (id)modelForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options
{
  v11 = objc_opt_new();
  v12 = [self titleForScreen:screen workflow:workflow];
  [v11 setTitle:v12];

  v13 = [self imageNameForScreen:screen];
  [v11 setImageName:v13];

  v14 = [self emojiForScreen:screen];
  [v11 setEmoji:v14];

  v15 = [self bulletsForScreen:screen workflow:workflow type:type];
  [v11 setBullets:v15];

  v16 = [self actionsForScreen:screen workflow:workflow type:type options:options];
  [v11 setActions:v16];

  return v11;
}

+ (id)titleForScreen:(int64_t)screen workflow:(int64_t)workflow
{
  if (screen == 1)
  {
    v4 = MEMORY[0x277D4D390];
    v5 = @"RECEIVE_SECOND_EDU_SCREEN_TITLE";
    v6 = @"SEND_SECOND_EDU_SCREEN_TITLE";
    goto LABEL_5;
  }

  if (!screen)
  {
    v4 = MEMORY[0x277D4D390];
    v5 = @"RECEIVE_FIRST_EDU_SCREEN_TITLE";
    v6 = @"SEND_FIRST_EDU_SCREEN_TITLE";
LABEL_5:
    if (workflow == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    self = [v4 localizedStringForKey:v7];
  }

  return self;
}

+ (id)imageNameForScreen:(int64_t)screen
{
  if (screen)
  {
    return @"header-monocle";
  }

  else
  {
    return @"header-thinking";
  }
}

+ (id)emojiForScreen:(int64_t)screen
{
  if (screen)
  {
    return @"🧐";
  }

  else
  {
    return @"🤔";
  }
}

+ (id)bulletsForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type
{
  if (screen == 1)
  {
    if (type == 1)
    {
      v6 = [self bulletsForScreenTwoOver13:workflow];
      goto LABEL_12;
    }

    if (!type)
    {
      v6 = [self bulletsForScreenTwoUnder13:workflow];
      goto LABEL_12;
    }

LABEL_9:
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  if (screen)
  {
    goto LABEL_13;
  }

  if (type == 1)
  {
    v6 = [self bulletsForScreenOneOver13:workflow];
    goto LABEL_12;
  }

  if (type)
  {
    goto LABEL_9;
  }

  v6 = [self bulletsForScreenOneUnder13:workflow];
LABEL_12:
  v5 = v6;
LABEL_13:

  return v5;
}

+ (id)bulletsForScreenOneUnder13:(int64_t)under13
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = under13 == 1;
  if (under13 == 1)
  {
    v4 = @"SEND_FIRST_EDU_SCREEN_POINT_1";
  }

  else
  {
    v4 = @"RECEIVE_FIRST_EDU_SCREEN_POINT_1";
  }

  if (v3)
  {
    v5 = @"SEND_FIRST_EDU_SCREEN_POINT_2";
  }

  else
  {
    v5 = @"RECEIVE_FIRST_EDU_SCREEN_POINT_2";
  }

  if (v3)
  {
    v6 = @"SEND_FIRST_EDU_SCREEN_POINT_3";
  }

  else
  {
    v6 = @"RECEIVE_FIRST_EDU_SCREEN_POINT_3";
  }

  v7 = [MEMORY[0x277D4D390] localizedStringForKey:v4];
  v8 = [USUIInterventionScreenBullet bullet:v7 imageName:@"bullet-bathing-suit" emoji:0];
  v9 = [MEMORY[0x277D4D390] localizedStringForKey:{v5, v8}];
  v10 = [USUIInterventionScreenBullet bullet:v9 imageName:@"bullet-sad" emoji:@"😔"];
  v16[1] = v10;
  v11 = [MEMORY[0x277D4D390] localizedStringForKey:v6];
  v12 = [USUIInterventionScreenBullet bullet:v11 imageName:@"bullet-window-shocked" emoji:0];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)bulletsForScreenOneOver13:(int64_t)over13
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = over13 == 1;
  if (over13 == 1)
  {
    v4 = @"SEND_FIRST_EDU_SCREEN_POINT_1_OVER_13";
  }

  else
  {
    v4 = @"RECEIVE_FIRST_EDU_SCREEN_POINT_1_OVER_13";
  }

  if (v3)
  {
    v5 = @"SEND_FIRST_EDU_SCREEN_POINT_2_OVER_13";
  }

  else
  {
    v5 = @"RECEIVE_FIRST_EDU_SCREEN_POINT_2_OVER_13";
  }

  v6 = [MEMORY[0x277D4D390] localizedStringForKey:v4];
  v7 = [USUIInterventionScreenBullet bullet:v6 imageName:@"bullet-monkey-hiding" emoji:@"🙈"];
  v13[0] = v7;
  v8 = [MEMORY[0x277D4D390] localizedStringForKey:v5];
  v9 = [USUIInterventionScreenBullet bullet:v8 imageName:@"bullet-window-shocked" emoji:0];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)bulletsForScreenTwoUnder13:(int64_t)under13
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = under13 == 1;
  if (under13 == 1)
  {
    v4 = @"SEND_SECOND_EDU_SCREEN_POINT_1";
  }

  else
  {
    v4 = @"RECEIVE_SECOND_EDU_SCREEN_POINT_1";
  }

  if (v3)
  {
    v5 = @"SEND_SECOND_EDU_SCREEN_POINT_2";
  }

  else
  {
    v5 = @"RECEIVE_SECOND_EDU_SCREEN_POINT_2";
  }

  v6 = [MEMORY[0x277D4D390] localizedStringForKey:v4];
  v7 = [USUIInterventionScreenBullet bullet:v6 imageName:@"bullet-family" emoji:@"👨‍👩‍👧‍👦"];
  v13[0] = v7;
  v8 = [MEMORY[0x277D4D390] localizedStringForKey:v5];
  v9 = [USUIInterventionScreenBullet bullet:v8 imageName:@"bullet-teacher" emoji:0];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)bulletsForScreenTwoOver13:(int64_t)over13
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = over13 == 1;
  if (over13 == 1)
  {
    v4 = @"SEND_SECOND_EDU_SCREEN_POINT_1_OVER_13";
  }

  else
  {
    v4 = @"RECEIVE_SECOND_EDU_SCREEN_POINT_1_OVER_13";
  }

  if (v3)
  {
    v5 = @"SEND_SECOND_EDU_SCREEN_POINT_2_OVER_13";
  }

  else
  {
    v5 = @"RECEIVE_SECOND_EDU_SCREEN_POINT_2_OVER_13";
  }

  v6 = [MEMORY[0x277D4D390] localizedStringForKey:v4];
  v7 = [USUIInterventionScreenBullet bullet:v6 imageName:@"bullet-dancers" emoji:@"👯"];
  v13[0] = v7;
  v8 = [MEMORY[0x277D4D390] localizedStringForKey:v5];
  v9 = [USUIInterventionScreenBullet bullet:v8 imageName:@"bullet-monkey-covering-mouth" emoji:@"🙊"];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)actionsForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options
{
  if (screen == 1)
  {
    v6 = [self actionsForScreenTwo:workflow type:type];
  }

  else
  {
    if (screen)
    {
      goto LABEL_6;
    }

    v6 = [self actionsForScreenOne:workflow type:type options:options];
  }

  a2 = v6;
LABEL_6:

  return a2;
}

+ (id)actionsForScreenOne:(int64_t)one type:(int64_t)type options:(int64_t)options
{
  optionsCopy = options;
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D4D390] localizedStringForKey:{@"NOT_NOW", type}];
  v7 = [USUIInterventionScreenAction action:v6 primary:1 actionID:1];

  v8 = [MEMORY[0x277D4D390] localizedStringForKey:@"IM_SURE"];
  v9 = [USUIInterventionScreenAction action:v8 primary:0 actionID:3];

  if (optionsCopy)
  {
    v11 = [MEMORY[0x277D4D390] localizedStringForKey:@"MORE_HELP"];
    v12 = [USUIInterventionScreenAction action:v11 primary:0 actionID:2];

    v16[0] = v7;
    v16[1] = v12;
    v16[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  }

  else
  {
    v15[0] = v7;
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)actionsForScreenTwo:(int64_t)two type:(int64_t)type
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = two == 1;
  if (two == 1)
  {
    v6 = @"CANCEL";
  }

  else
  {
    v6 = @"DONT_VIEW_PHOTO_EDU";
  }

  if (v5)
  {
    v7 = @"CONTINUE";
  }

  else
  {
    v7 = @"VIEW_PHOTO_EDU";
  }

  v8 = [MEMORY[0x277D4D390] localizedStringForKey:v6];
  v9 = [USUIInterventionScreenAction action:v8 primary:1 actionID:4];

  if (type)
  {
    v10 = @"MESSAGE_SOMEONE";
  }

  else
  {
    v10 = @"MESSAGE_GROWNUP";
  }

  v11 = [MEMORY[0x277D4D390] localizedStringForKey:v10];
  v12 = [USUIInterventionScreenAction action:v11 primary:0 actionID:5];

  v13 = [MEMORY[0x277D4D390] localizedStringForKey:v7];
  v14 = [USUIInterventionScreenAction action:v13 primary:0 actionID:6];

  v18[0] = v9;
  v18[1] = v12;
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end