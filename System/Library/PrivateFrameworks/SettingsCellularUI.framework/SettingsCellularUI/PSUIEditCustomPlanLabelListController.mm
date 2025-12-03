@interface PSUIEditCustomPlanLabelListController
- (id)specifiers;
- (void)suspend;
@end

@implementation PSUIEditCustomPlanLabelListController

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = [v6 initWithObjects:{emptyGroupSpecifier, 0}];

    v9 = MEMORY[0x277D3FB40];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    v11 = [v9 preferenceSpecifierNamed:0 target:WeakRetained set:sel_setPlanCustomLabel_forSpecifier_ get:sel_getPlanCustomLabel_ detail:0 cell:8 edit:0];

    v12 = *MEMORY[0x277D3FF20];
    v13 = MEMORY[0x277CBEC38];
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF20]];
    [v11 setProperty:v13 forKey:v12];
    *&v11[*MEMORY[0x277D3FC88]] = 2;
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TYPE_LABEL_HERE" value:&stru_287733598 table:@"Gemini-Gemini"];
    [v11 setPlaceholder:v15];

    [v8 addObject:v11];
    editableTextFieldSpecifier = self->_editableTextFieldSpecifier;
    self->_editableTextFieldSpecifier = v11;
    v17 = v11;

    v18 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v8;
    v19 = v8;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (void)suspend
{
  firstResponder = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = PSUIEditCustomPlanLabelListController;
  [(PSUIEditCustomPlanLabelListController *)&v4 suspend];
}

@end