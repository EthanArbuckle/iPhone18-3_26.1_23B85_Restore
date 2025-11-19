@interface PSSpecifierAction
+ (PSSpecifierAction)actionWithBoolDetailClass:(Class)a3;
+ (PSSpecifierAction)actionWithGetter:(id)a3 setter:(id)a4;
+ (PSSpecifierAction)actionWithTarget:(id)a3 getterSelector:(SEL)a4 setterSelector:(SEL)a5;
@end

@implementation PSSpecifierAction

+ (PSSpecifierAction)actionWithGetter:(id)a3 setter:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setGetter:v6];

  [v7 setSetter:v5];

  return v7;
}

+ (PSSpecifierAction)actionWithTarget:(id)a3 getterSelector:(SEL)a4 setterSelector:(SEL)a5
{
  objc_initWeak(&location, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PSSpecifierAction_actionWithTarget_getterSelector_setterSelector___block_invoke;
  v12[3] = &unk_1E71DE6A8;
  v13[1] = a4;
  objc_copyWeak(v13, &location);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PSSpecifierAction_actionWithTarget_getterSelector_setterSelector___block_invoke_2;
  v10[3] = &unk_1E71DE6D0;
  v11[1] = a5;
  objc_copyWeak(v11, &location);
  v8 = [a1 actionWithGetter:v12 setter:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v8;
}

id __68__PSSpecifierAction_actionWithTarget_getterSelector_setterSelector___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SFPerformSelector();

  return v2;
}

void __68__PSSpecifierAction_actionWithTarget_getterSelector_setterSelector___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = SFPerformSelector2();
}

+ (PSSpecifierAction)actionWithBoolDetailClass:(Class)a3
{
  if ([(objc_class *)a3 conformsToProtocol:&unk_1EFEB4108])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PSSpecifierAction_Convenience__actionWithBoolDetailClass___block_invoke;
    v8[3] = &__block_descriptor_40_e21__16__0__PSSpecifier_8lu32l8;
    v8[4] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PSSpecifierAction_Convenience__actionWithBoolDetailClass___block_invoke_2;
    v7[3] = &__block_descriptor_40_e24_v24__0__PSSpecifier_8_16lu32l8;
    v7[4] = a3;
    v5 = [a1 actionWithGetter:v8 setter:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __60__PSSpecifierAction_Convenience__actionWithBoolDetailClass___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) isEnabled];

  return [v1 numberWithBool:v2];
}

uint64_t __60__PSSpecifierAction_Convenience__actionWithBoolDetailClass___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 BOOLValue];

  return [v3 setEnabled:v4];
}

@end