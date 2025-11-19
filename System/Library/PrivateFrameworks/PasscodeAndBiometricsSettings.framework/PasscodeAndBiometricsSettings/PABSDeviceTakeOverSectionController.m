@interface PABSDeviceTakeOverSectionController
- (BOOL)shouldIgnoreSecurityOptionsGroupRowSelectionFor:(id)a3;
- (BOOL)shouldIgnoreToggleGroupRowSelectionFor:(id)a3;
- (PABSDeviceTakeOverSectionController)init;
- (id)getSpecifiersForSecurityOptionsGroup:(id)a3;
- (id)getSpecifiersForToggleGroup:(id)a3;
- (id)getStatus;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)addSpecifiers:(id)a3 toExistingSpecifiers:(id)a4 atIndex:(unint64_t)a5;
- (void)disableDTO;
- (void)enableDTO;
- (void)ensureAccountSecurityIsSufficientWithCompletion:(id)a3;
- (void)openLearnMoreLink;
- (void)performPreEnableDTOChecksWithCompletion:(id)a3;
- (void)printSpecifiersDescription:(id)a3;
- (void)proceedToDisableDTO;
- (void)proceedToEnableDTO;
- (void)reloadEntirePane;
- (void)setUpFindMyEnablementStatus;
- (void)showAlertForFailedToUpdateSecurityDelay;
- (void)showAlertForFindMyIsDisabledWithCompletion:(id)a3;
- (void)showDTOAlertForFailureToToggleToState:(BOOL)a3 withRatchetError:(unint64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleStatusTo:(id)a3;
- (void)updateFooterForSecurityOptionsGroupSpecifier:(id)a3;
- (void)updateFooterForToggleGroupSpecifier:(id)a3;
- (void)updateSpecifiersWithPreCheckResults;
- (void)userUpdatedSecurityOptionTo:(id)a3;
- (void)viewDidLoad;
@end

@implementation PABSDeviceTakeOverSectionController

- (PABSDeviceTakeOverSectionController)init
{
  v6.receiver = self;
  v6.super_class = PABSDeviceTakeOverSectionController;
  v2 = [(PABSDeviceTakeOverSectionController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dtoController = v2->_dtoController;
    v2->_dtoController = v3;

    [(PABSDeviceTakeOverSectionController *)v2 setUpFindMyEnablementStatus];
    [(PABSDeviceTakeOverSectionController *)v2 updateSpecifiersWithPreCheckResults];
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PABSDeviceTakeOverSectionController;
  [(PABSDeviceTakeOverSectionController *)&v4 viewDidLoad];
  v3 = PABS_LocalizedStringForPasscodeLock(@"DTO_STATUS_LABEL_DESCRIPTION");
  [(PABSDeviceTakeOverSectionController *)self setTitle:v3];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(PABSDeviceTakeOverSectionController *)self getSpecifiersForToggleGroup:@"DTO_TOGGLE_GROUP_ID"];
    [(PABSDeviceTakeOverSectionController *)self addSpecifiers:v6 toExistingSpecifiers:v5 atIndex:0];
    v7 = [(PABSDeviceTakeOverSectionController *)self dtoToggleMustBeDisabledReason];
    if (!v7)
    {
      v8 = [(PABSDeviceTakeOverSectionController *)self getStatus];
      v9 = [v8 BOOLValue];

      if (!v9)
      {
LABEL_6:
        v10 = *(&self->super.super.super.super.super.isa + v3);
        *(&self->super.super.super.super.super.isa + v3) = v5;
        v11 = v5;

        [(PABSDeviceTakeOverSectionController *)self printSpecifiersDescription:v11];
        v4 = *(&self->super.super.super.super.super.isa + v3);
        goto LABEL_7;
      }

      v7 = [(PABSDeviceTakeOverSectionController *)self getSpecifiersForSecurityOptionsGroup:@"DTO_SECURITY_OPTIONS_GROUP_ID"];
      -[PABSDeviceTakeOverSectionController addSpecifiers:toExistingSpecifiers:atIndex:](self, "addSpecifiers:toExistingSpecifiers:atIndex:", v7, v5, [v6 count]);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

- (void)reloadEntirePane
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: - Reloading Pane -", v4, 2u);
  }

  [(PABSDeviceTakeOverSectionController *)self reloadSpecifiers];
}

- (void)printSpecifiersDescription:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"DTO Summary: "];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_29;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v35;
  v32 = *MEMORY[0x277D40090];
  do
  {
    v10 = 0;
    do
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v34 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:@"DTO_TOGGLE_GROUP_ID"];

      if (v13)
      {
        v14 = v4;
        v15 = @"| Group 1: Toggle";
LABEL_8:
        [v14 appendString:v15];
        goto LABEL_13;
      }

      v16 = [v11 identifier];
      v17 = [v16 isEqualToString:@"DTO_TOGGLE_ID"];

      if (v17)
      {
        v18 = [(PABSDeviceTakeOverSectionController *)self getStatus];
        [v4 appendFormat:@" -> Toggled [%@]", v18];
      }

      else
      {
        v19 = [v11 identifier];
        v20 = [v19 isEqualToString:@"DTO_SECURITY_OPTIONS_GROUP_ID"];

        if (!v20)
        {
          v25 = [v11 identifier];
          v26 = [v25 isEqualToString:@"DTO_SECURITY_OPTION_ALWAYS_FAMILIAR_ID"];

          if (v26)
          {
            if (v8 && [v8 isEqualToSpecifier:v11])
            {
              v14 = v4;
              v15 = @" -> i. Familiar only [Checked]";
            }

            else
            {
              v14 = v4;
              v15 = @" -> i. Familiar only";
            }
          }

          else
          {
            v27 = [v11 identifier];
            v28 = [v27 isEqualToString:@"DTO_SECURITY_OPTION_ALWAYS_ID"];

            if (v28)
            {
              if (v8 && [v8 isEqualToSpecifier:v11])
              {
                v14 = v4;
                v15 = @" -> ii. Always [Checked]";
              }

              else
              {
                v14 = v4;
                v15 = @" -> ii. Always";
              }
            }

            else
            {
              v14 = v4;
              v15 = @" *** Unknown ***";
            }
          }

          goto LABEL_8;
        }

        v21 = MEMORY[0x277CCABB0];
        v22 = [(PABSDeviceTakeOverSectionController *)self dtoController];
        v23 = [v21 numberWithBool:{objc_msgSend(v22, "isStrictModeEnabled")}];
        [v4 appendFormat:@"| Group 2: Options (Strict Mode = %@)", v23];

        v24 = [v11 objectForKeyedSubscript:v32];

        v8 = v24;
      }

LABEL_13:
      ++v10;
    }

    while (v7 != v10);
    v29 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    v7 = v29;
  }

  while (v29);
LABEL_29:

  v30 = PABSLogForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_25E0E9000, v30, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addSpecifiers:(id)a3 toExistingSpecifiers:(id)a4 atIndex:(unint64_t)a5
{
  v10 = a3;
  v7 = a4;
  v8 = [v10 count];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{a5, v8}];
    [v7 insertObjects:v10 atIndexes:v9];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(PABSDeviceTakeOverSectionController *)self indexForIndexPath:a4];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  [(PABSDeviceTakeOverSectionController *)self userUpdatedSecurityOptionTo:v6];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PABSDeviceTakeOverSectionController *)self specifierAtIndex:[(PABSDeviceTakeOverSectionController *)self indexForIndexPath:v5]];
  if ([(PABSDeviceTakeOverSectionController *)self shouldIgnoreToggleGroupRowSelectionFor:v6])
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "DTO: User tapped on Toggle row, ignoring";
      v9 = &v13;
LABEL_7:
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(PABSDeviceTakeOverSectionController *)self shouldIgnoreSecurityOptionsGroupRowSelectionFor:v6])
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v8 = "DTO: User tapped on already currently check marked security option, ignoring";
      v9 = &v12;
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_10;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = PABSDeviceTakeOverSectionController;
  v4 = [(PABSDeviceTakeOverSectionController *)&v6 tableView:a3 cellForRowAtIndexPath:a4];
  [v4 setSelectionStyle:0];

  return v4;
}

- (id)getSpecifiersForToggleGroup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286FD1EF8 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v6 setIdentifier:v4];

  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  [(PABSDeviceTakeOverSectionController *)self updateFooterForToggleGroupSpecifier:v6];
  [v5 addObject:v6];
  v7 = MEMORY[0x277D3FAD8];
  v8 = PABS_LocalizedStringForPasscodeLock(@"DTO_STATUS_LABEL_DESCRIPTION");
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_toggleStatusTo_ get:sel_getStatus detail:0 cell:6 edit:0];

  [v9 setIdentifier:@"DTO_TOGGLE_ID"];
  v10 = [(PABSDeviceTakeOverSectionController *)self dtoToggleMustBeDisabledReason];

  if (v10)
  {
    [v9 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [v5 addObject:v9];

  return v5;
}

- (void)updateFooterForToggleGroupSpecifier:(id)a3
{
  v4 = a3;
  v14 = PABS_LocalizedStringForPasscodeLock(@"DTO_GROUP_FOOTER_DESCRIPTION");
  v5 = PABS_LocalizedStringForPasscodeLock(@"DTO_GROUP_FOOTER_DESCRIPTION_SUFFIX_LINK");
  v6 = [(PABSDeviceTakeOverSectionController *)self dtoToggleMustBeDisabledReason];

  v7 = MEMORY[0x277CCACA8];
  if (v6)
  {
    v8 = [(PABSDeviceTakeOverSectionController *)self dtoToggleMustBeDisabledReason];
    v9 = [v7 stringWithFormat:@"%@ %@\n\n%@", v14, v5, v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v14, v5];
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v4 setProperty:v11 forKey:*MEMORY[0x277D3FF48]];

  [v4 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
  v16.location = [v9 rangeOfString:v5];
  v12 = NSStringFromRange(v16);
  [v4 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

  v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v4 setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

  [v4 setProperty:@"openLearnMoreLink" forKey:*MEMORY[0x277D3FF50]];
}

- (id)getStatus
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isRatchetEnabled")}];

  return v4;
}

- (void)toggleStatusTo:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "DTO: User toggled to state [%@]", &v11, 0xCu);
  }

  v6 = [(PABSDeviceTakeOverSectionController *)self getStatus];
  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "DTO toggle: Set: %@ , current is %@", &v11, 0x16u);
  }

  v8 = [v4 BOOLValue];
  if (v8 == [v6 BOOLValue])
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "DTO toggle:: Set: ignoring", &v11, 2u);
    }
  }

  else if ([v4 BOOLValue])
  {
    [(PABSDeviceTakeOverSectionController *)self proceedToEnableDTO];
  }

  else
  {
    [(PABSDeviceTakeOverSectionController *)self proceedToDisableDTO];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)proceedToEnableDTO
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke;
  v2[3] = &unk_279A03990;
  v2[4] = self;
  [(PABSDeviceTakeOverSectionController *)self performPreEnableDTOChecksWithCompletion:v2];
}

void __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Turn On Protection [Prechecks: %@]", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke_95;
  v7[3] = &unk_279A033A8;
  objc_copyWeak(&v8, buf);
  v9 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      [WeakRetained enableDTO];
    }

    else
    {
      [WeakRetained reloadSpecifiersPostStatusToggle];
    }
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke_95_cold_1();
    }
  }
}

- (void)enableDTO
{
  v3 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PABSDeviceTakeOverSectionController_enableDTO__block_invoke;
  v4[3] = &unk_279A039E0;
  v4[4] = self;
  [v3 enableRatchetWithCompletion:v4];
}

void __48__PABSDeviceTakeOverSectionController_enableDTO__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Turn On Protection [%@]", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PABSDeviceTakeOverSectionController_enableDTO__block_invoke_98;
  v7[3] = &unk_279A039B8;
  objc_copyWeak(v8, buf);
  v8[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__PABSDeviceTakeOverSectionController_enableDTO__block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) != 1)
    {
      [WeakRetained showDTOAlertForFailureToToggleToState:1 withRatchetError:?];
    }

    [v3 reloadSpecifiersPostStatusToggle];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__PABSDeviceTakeOverSectionController_proceedToEnableDTO__block_invoke_95_cold_1();
    }
  }
}

- (void)proceedToDisableDTO
{
  v3 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v4 = [v3 isRatchetEnabled];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(PABSDeviceTakeOverSectionController *)self dtoController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke;
    v7[3] = &unk_279A03A08;
    objc_copyWeak(&v8, &location);
    [v5 gateWithRatchetForOperation:6 forPresentingVC:self completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSDeviceTakeOverSectionController proceedToDisableDTO];
    }
  }
}

void __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke_2;
  v3[3] = &unk_279A039B8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(v4);
}

void __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = PABSLogForCategory(0);
    v5 = v4;
    if (v3 == 2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke_2_cold_1();
      }

      [WeakRetained reloadSpecifiersPostStatusToggle];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "DTO: Turn Off Protection [Proceeding]", v7, 2u);
      }

      [WeakRetained disableDTO];
    }
  }

  else
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke_2_cold_2();
    }
  }
}

- (void)disableDTO
{
  v3 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__PABSDeviceTakeOverSectionController_disableDTO__block_invoke;
  v4[3] = &unk_279A039E0;
  v4[4] = self;
  [v3 disableRatchetWithCompletion:v4];
}

void __49__PABSDeviceTakeOverSectionController_disableDTO__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Turn Off Protection [%@]", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PABSDeviceTakeOverSectionController_disableDTO__block_invoke_100;
  v7[3] = &unk_279A039B8;
  objc_copyWeak(v8, buf);
  v8[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PABSDeviceTakeOverSectionController_disableDTO__block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) != 1)
    {
      [WeakRetained showDTOAlertForFailureToToggleToState:0 withRatchetError:?];
    }

    [v3 reloadSpecifiersPostStatusToggle];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__PABSDeviceTakeOverSectionController_proceedToDisableDTO__block_invoke_2_cold_2();
    }
  }
}

- (BOOL)shouldIgnoreToggleGroupRowSelectionFor:(id)a3
{
  v3 = [(PABSDeviceTakeOverSectionController *)self getGroupSpecifierForSpecifier:a3];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"DTO_TOGGLE_GROUP_ID"];

  return v5;
}

- (void)openLearnMoreLink
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "DTO: User clicked on support link.", v7, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = MEMORY[0x277CBEBC0];
  v5 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_COULD_NOT_TOGGLE_LEARN_MORE_LINK");
  v6 = [v4 URLWithString:v5];
  [v3 openURL:v6 withCompletionHandler:&__block_literal_global_3];
}

void __56__PABSDeviceTakeOverSectionController_openLearnMoreLink__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __56__PABSDeviceTakeOverSectionController_openLearnMoreLink__block_invoke_cold_1();
    }
  }
}

- (void)updateSpecifiersWithPreCheckResults
{
  objc_initWeak(&location, self);
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: Will perform preliminary checks", buf, 2u);
  }

  v4 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__PABSDeviceTakeOverSectionController_updateSpecifiersWithPreCheckResults__block_invoke;
  v5[3] = &unk_279A03A50;
  objc_copyWeak(&v6, &location);
  [v4 performPreliminaryPreEnableDTOChecksWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __74__PABSDeviceTakeOverSectionController_updateSpecifiersWithPreCheckResults__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PABSDeviceTakeOverSectionController_updateSpecifiersWithPreCheckResults__block_invoke_2;
  block[3] = &unk_279A036D0;
  v10 = a2;
  block[4] = WeakRetained;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__PABSDeviceTakeOverSectionController_updateSpecifiersWithPreCheckResults__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
      v6 = v5;
      v7 = *(a1 + 40);
      if (!v7)
      {
        v7 = &stru_286FD1EF8;
      }

      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: preliminary checks [%@] %@", &v9, 0x16u);
    }

    [*(a1 + 32) setDtoToggleMustBeDisabledReason:*(a1 + 40)];
    [*(a1 + 32) reloadEntirePane];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__PABSDeviceTakeOverSectionController_updateSpecifiersWithPreCheckResults__block_invoke_2_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpFindMyEnablementStatus
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D08F78] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__PABSDeviceTakeOverSectionController_setUpFindMyEnablementStatus__block_invoke;
  v3[3] = &unk_279A03A78;
  objc_copyWeak(&v4, &location);
  [v2 fmipStateWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __66__PABSDeviceTakeOverSectionController_setUpFindMyEnablementStatus__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__PABSDeviceTakeOverSectionController_setUpFindMyEnablementStatus__block_invoke_cold_1(v5, v6);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsFindMyEnabled:a2 == 1];
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isFindMyEnabled")}];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Find My Device: %@", &v12, 0xCu);
    }
  }

  else
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__PABSDeviceTakeOverSectionController_setUpFindMyEnablementStatus__block_invoke_cold_2();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ensureAccountSecurityIsSufficientWithCompletion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PSUsedByHSA2Account();
  v6 = PSJoinedCDPCircleAccount();
  v7 = PABSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 && (v6 & 1) != 0)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Account security: No need to Upgrade", buf, 2u);
    }

    v4[2](v4, 1);
  }

  else
  {
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Account security: Upgrading since HSA2 [%@] CDPCircle [%@]", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 aa_primaryAppleAccount];
    v13 = [v12 aa_altDSID];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CFDAE8]) initWithAltDSID:v13];
      [v14 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
      [v14 setDeviceToDeviceEncryptionUpgradeType:0];
      v15 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_MUST_UPGRADE_ACCOUNT_SECURITY");
      [v14 setFeatureName:v15];

      [v14 setPresentingViewController:self];
      v16 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v14];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__PABSDeviceTakeOverSectionController_ensureAccountSecurityIsSufficientWithCompletion___block_invoke;
      v19[3] = &unk_279A03300;
      v20 = v4;
      [v16 performDeviceToDeviceEncryptionStateRepairWithCompletion:v19];
    }

    else
    {
      v17 = PABSLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PABSDeviceTakeOverSectionController ensureAccountSecurityIsSufficientWithCompletion:v17];
      }

      [(PABSDeviceTakeOverSectionController *)self showDTOAlertForFailureToToggleToState:1 withRatchetError:2];
      v4[2](v4, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __87__PABSDeviceTakeOverSectionController_ensureAccountSecurityIsSufficientWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PSUsedByHSA2Account();
  v7 = PSJoinedCDPCircleAccount();
  v8 = PABSLogForCategory(0);
  v9 = v8;
  if (v6 & v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Account security: Upgrading [Success] - Repaired: %@", &v16, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v15 = [v5 description];
    v16 = 138413058;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_ERROR, "Account security: Upgrading [Failed] since HSA2 [%@] CDPCircle [%@] - Repaired: %@ Error: %@", &v16, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)performPreEnableDTOChecksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "DTO: Turn On Protection [Performing prechecks]", buf, 2u);
  }

  if ([(PABSDeviceTakeOverSectionController *)self isFindMyEnabled])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__PABSDeviceTakeOverSectionController_performPreEnableDTOChecksWithCompletion___block_invoke;
    v6[3] = &unk_279A03AA0;
    v7 = v4;
    [(PABSDeviceTakeOverSectionController *)self ensureAccountSecurityIsSufficientWithCompletion:v6];
  }

  else
  {
    [(PABSDeviceTakeOverSectionController *)self showAlertForFindMyIsDisabledWithCompletion:v4];
  }
}

- (void)showAlertForFindMyIsDisabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_MUST_TURN_ON_FIND_MY_TITLE");
  v7 = [v5 alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_OK_BUTTON");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__PABSDeviceTakeOverSectionController_showAlertForFindMyIsDisabledWithCompletion___block_invoke;
  v14[3] = &unk_279A03120;
  v15 = v4;
  v10 = v4;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v14];
  [v7 addAction:v11];

  v12 = PABSLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "Find My: Alert [Shown]", v13, 2u);
  }

  [(PABSDeviceTakeOverSectionController *)self presentViewController:v7 animated:1 completion:0];
}

uint64_t __82__PABSDeviceTakeOverSectionController_showAlertForFindMyIsDisabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Find My: Alert [Dismissed]", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)showDTOAlertForFailureToToggleToState:(BOOL)a3 withRatchetError:(unint64_t)a4
{
  v4 = a3;
  location[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75110];
  if (a4 == 3)
  {
    if (PSSupportsMesa())
    {
      v7 = @"DTO_ALERT_TOUCH_ID_REQUIRED_TO_ENABLE";
    }

    else
    {
      v7 = @"DTO_ALERT_FACE_ID_REQUIRED_TO_ENABLE";
    }

    v8 = PABS_LocalizedStringForPasscodeLock(v7);
    v9 = [v6 alertControllerWithTitle:0 message:v8 preferredStyle:1];

    objc_initWeak(location, self);
    v10 = MEMORY[0x277D750F8];
    v11 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_COULD_NOT_TOGGLE_LEARN_MORE_BUTTON");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__PABSDeviceTakeOverSectionController_showDTOAlertForFailureToToggleToState_withRatchetError___block_invoke;
    v22[3] = &unk_279A03AC8;
    v24 = v4;
    objc_copyWeak(&v23, location);
    v12 = [v10 actionWithTitle:v11 style:0 handler:v22];
    [v9 addAction:v12];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    if (a3)
    {
      PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_COULD_NOT_TOGGLE_TO_ON_TITLE");
    }

    else
    {
      PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_COULD_NOT_TOGGLE_TO_OFF_TITLE");
    }
    v13 = ;
    v9 = [v6 alertControllerWithTitle:0 message:v13 preferredStyle:1];
  }

  v14 = MEMORY[0x277D750F8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_OK_BUTTON");
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__PABSDeviceTakeOverSectionController_showDTOAlertForFailureToToggleToState_withRatchetError___block_invoke_146;
  v20[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
  v21 = v4;
  v16 = [v14 actionWithTitle:v15 style:0 handler:v20];
  [v9 addAction:v16];

  v17 = PABSLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"Off";
    if (v4)
    {
      v18 = @"On";
    }

    LODWORD(location[0]) = 138412290;
    *(location + 4) = v18;
    _os_log_impl(&dword_25E0E9000, v17, OS_LOG_TYPE_DEFAULT, "DTO: Turn %@ Protection [Failed] - Alert [Shown]", location, 0xCu);
  }

  [(PABSDeviceTakeOverSectionController *)self presentViewController:v9 animated:1 completion:0];
  v19 = *MEMORY[0x277D85DE8];
}

void __94__PABSDeviceTakeOverSectionController_showDTOAlertForFailureToToggleToState_withRatchetError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"On";
    }

    else
    {
      v3 = @"Off";
    }

    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "DTO: Turn %@ Protection [Failed] - Alert [Dismissed - Learn More]", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained openLearnMoreLink];
  }

  else
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__PABSDeviceTakeOverSectionController_showDTOAlertForFailureToToggleToState_withRatchetError___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __94__PABSDeviceTakeOverSectionController_showDTOAlertForFailureToToggleToState_withRatchetError___block_invoke_146(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"On";
    }

    else
    {
      v3 = @"Off";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "DTO: Turn %@ Protection [Failed] - Alert [Dismissed]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)getSpecifiersForSecurityOptionsGroup:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277D3FAD8];
  v7 = PABS_LocalizedStringForPasscodeLock(@"DTO_SECURITY_DELAY_OPTIONS_GROUP_HEADER_DESCRIPTION");
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v8 setIdentifier:v4];
  [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  [(PABSDeviceTakeOverSectionController *)self updateFooterForSecurityOptionsGroupSpecifier:v8];
  [v5 addObject:v8];
  v9 = MEMORY[0x277D3FAD8];
  v10 = PABS_LocalizedStringForPasscodeLock(@"DTO_SECURITY_DELAY_OPTION_AWAY_FAMILIAR_LOCATIONS_ONLY");
  v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v11 setIdentifier:@"DTO_SECURITY_OPTION_ALWAYS_FAMILIAR_ID"];
  [v5 addObject:v11];
  v12 = MEMORY[0x277D3FAD8];
  v13 = PABS_LocalizedStringForPasscodeLock(@"DTO_SECURITY_DELAY_OPTION_AWAY_ALWAYS");
  v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setIdentifier:@"DTO_SECURITY_OPTION_ALWAYS_ID"];
  [v5 addObject:v14];
  v15 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v16 = [v15 isStrictModeEnabled];

  v17 = PABSLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    *buf = 138412290;
    v23 = v18;
    _os_log_impl(&dword_25E0E9000, v17, OS_LOG_TYPE_DEFAULT, "DTO: Strict Mode [%@]", buf, 0xCu);
  }

  if (v16)
  {
    v19 = v14;
  }

  else
  {
    v19 = v11;
  }

  [v8 setProperty:v19 forKey:*MEMORY[0x277D40090]];

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateFooterForSecurityOptionsGroupSpecifier:(id)a3
{
  v8 = a3;
  v4 = PABS_LocalizedStringForPasscodeLock(@"DTO_SECURITY_DELAY_OPTIONS_GROUP_FOOTER_DESCRIPTION_FAMILIAR_LOCATIONS_ONLY");
  v5 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v6 = [v5 isStrictModeEnabled];

  if (v6)
  {
    v7 = PABS_LocalizedStringForPasscodeLock(@"DTO_SECURITY_DELAY_OPTIONS_GROUP_FOOTER_DESCRIPTION_ALWAYS");

    v4 = v7;
  }

  [v8 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];
}

void __58__PABSDeviceTakeOverSectionController_toggleToStrictMode___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__PABSDeviceTakeOverSectionController_toggleToStrictMode___block_invoke_2;
  v3[3] = &unk_279A033A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __58__PABSDeviceTakeOverSectionController_toggleToStrictMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      [WeakRetained reloadEntirePane];
    }

    else
    {
      [WeakRetained showAlertForFailedToUpdateSecurityDelay];
    }
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__PABSDeviceTakeOverSectionController_toggleToStrictMode___block_invoke_2_cold_1();
    }
  }
}

- (void)userUpdatedSecurityOptionTo:(id)a3
{
  v4 = a3;
  v5 = [(PABSDeviceTakeOverSectionController *)self dtoController];
  v6 = [v5 isRatchetEnabled];

  if (v6)
  {
    v7 = [v4 identifier];
    v8 = [v7 isEqualToString:@"DTO_SECURITY_OPTION_ALWAYS_ID"];

    if (v8)
    {
      v9 = PABSLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "DTO: User upgraded security option to Always", buf, 2u);
      }

      [(PABSDeviceTakeOverSectionController *)self toggleToStrictMode:1];
    }

    else
    {
      v11 = [v4 identifier];
      v12 = [v11 isEqualToString:@"DTO_SECURITY_OPTION_ALWAYS_FAMILIAR_ID"];

      if (v12)
      {
        v13 = PABSLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "DTO: User downgraded security option to Familiar Locations only", buf, 2u);
        }

        objc_initWeak(buf, self);
        v14 = [(PABSDeviceTakeOverSectionController *)self dtoController];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke;
        v15[3] = &unk_279A03A08;
        objc_copyWeak(&v16, buf);
        [v14 gateWithRatchetForOperation:10 forPresentingVC:self completion:v15];

        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v10 = PABSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PABSDeviceTakeOverSectionController userUpdatedSecurityOptionTo:];
    }
  }
}

void __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke_cold_2();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke_162;
    block[3] = &unk_279A031D0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained toggleToStrictMode:0];
    }

    else
    {
      v6 = PABSLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke_cold_1();
      }
    }
  }
}

void __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadEntirePane];
  }

  else
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__PABSDeviceTakeOverSectionController_userUpdatedSecurityOptionTo___block_invoke_162_cold_1();
    }
  }
}

- (BOOL)shouldIgnoreSecurityOptionsGroupRowSelectionFor:(id)a3
{
  v4 = a3;
  v5 = [(PABSDeviceTakeOverSectionController *)self getGroupSpecifierForSpecifier:v4];
  v6 = [v5 identifier];
  if ([v6 isEqualToString:@"DTO_SECURITY_OPTIONS_GROUP_ID"])
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D40090]];
    v8 = [v7 isEqualToSpecifier:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)showAlertForFailedToUpdateSecurityDelay
{
  v3 = MEMORY[0x277D75110];
  v4 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_COULD_NOT_UPDATE_SECURITY_DELAY");
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = PABS_LocalizedStringForPasscodeLock(@"DTO_ALERT_OK_BUTTON");
  v8 = [v6 actionWithTitle:v7 style:0 handler:&__block_literal_global_167];
  [v5 addAction:v8];

  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Security options: Alert [Shown]", v10, 2u);
  }

  [(PABSDeviceTakeOverSectionController *)self presentViewController:v5 animated:1 completion:0];
}

void __78__PABSDeviceTakeOverSectionController_showAlertForFailedToUpdateSecurityDelay__block_invoke()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "Security options: Alert [Dismissed]", v1, 2u);
  }
}

void __66__PABSDeviceTakeOverSectionController_setUpFindMyEnablementStatus__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25E0E9000, a2, OS_LOG_TYPE_ERROR, "Find My Device: Failed to retrieve state: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)ensureAccountSecurityIsSufficientWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_25E0E9000, log, OS_LOG_TYPE_ERROR, "Account security: Upgrading [Failed] - %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end