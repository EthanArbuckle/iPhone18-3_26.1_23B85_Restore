@interface UIViewFloatAnimatableProperty(UserNotificationsUIKit)
+ (id)unui_animatablePropertyWithProgressMilestones:()UserNotificationsUIKit block:;
@end

@implementation UIViewFloatAnimatableProperty(UserNotificationsUIKit)

+ (id)unui_animatablePropertyWithProgressMilestones:()UserNotificationsUIKit block:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = 0;
  if (v6 && v7)
  {
    v9 = [v5 mutableCopy];
    v8 = objc_alloc_init(MEMORY[0x277D75D38]);
    [v8 setVelocityUsableForVFD:1];
    [v8 setValue:0.0];
    objc_initWeak(&location, v8);
    v10 = MEMORY[0x277D75D18];
    v23[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __109__UIViewFloatAnimatableProperty_UserNotificationsUIKit__unui_animatablePropertyWithProgressMilestones_block___block_invoke;
    v18 = &unk_278372598;
    objc_copyWeak(&v21, &location);
    v12 = v9;
    v19 = v12;
    v13 = v6;
    v20 = v13;
    [v10 _createTransformerWithInputAnimatableProperties:v11 presentationValueChangedCallback:&v15];

    if ([v12 containsObject:{&unk_2830158B0, v15, v16, v17, v18}])
    {
      (*(v13 + 2))(v13, v8, 0.0, 0.0);
      [v12 removeObject:&unk_2830158B0];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

@end