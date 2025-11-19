@interface WFWalletTransactionTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (BOOL)isEqual:(id)a3;
- (WFWalletTransactionTrigger)init;
- (WFWalletTransactionTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWalletTransactionTrigger

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  v7 = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  v8 = [(WFWalletTransactionTrigger *)self selectedMerchants];
  v9 = [v3 stringWithFormat:@"<%@: %p, selectedPassUniqueIDs: %@, selectedMerchantTypes: %@, selectedMerchants: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B4D0 serializedParameterArray:0];
  v4 = [v3 if_objectsPassingTest:&__block_literal_global_23125];

  return v4;
}

BOOL __46__WFWalletTransactionTrigger_suggestedActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
    v8 = [(WFWalletTransactionTrigger *)v6 selectedPassUniqueIDs];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
    v17 = [(WFWalletTransactionTrigger *)v6 selectedMerchantTypes];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(WFWalletTransactionTrigger *)self selectedMerchants];
    v22 = [(WFWalletTransactionTrigger *)v6 selectedMerchants];
    v20 = v21;
    v23 = v22;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = WFWalletTransactionTrigger;
  v4 = [(WFTrigger *)&v10 copyWithZone:a3];
  v5 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  v6 = [v5 copy];
  [v4 setSelectedPassUniqueIDs:v6];

  v7 = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  [v4 setSelectedMerchantTypes:v7];

  v8 = [(WFWalletTransactionTrigger *)self selectedMerchants];
  [v4 setSelectedMerchants:v8];

  return v4;
}

- (WFWalletTransactionTrigger)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFWalletTransactionTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"selectedPassUniqueIDs"];
    selectedPassUniqueIDs = v5->_selectedPassUniqueIDs;
    v5->_selectedPassUniqueIDs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"selectedMerchantTypes"];
    selectedMerchantTypes = v5->_selectedMerchantTypes;
    v5->_selectedMerchantTypes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"selectedMerchants"];
    selectedMerchants = v5->_selectedMerchants;
    v5->_selectedMerchants = v19;

    v21 = v5;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFWalletTransactionTrigger;
  v4 = a3;
  [(WFTrigger *)&v8 encodeWithCoder:v4];
  v5 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs:v8.receiver];
  [v4 encodeObject:v5 forKey:@"selectedPassUniqueIDs"];

  v6 = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  [v4 encodeObject:v6 forKey:@"selectedMerchantTypes"];

  v7 = [(WFWalletTransactionTrigger *)self selectedMerchants];
  [v4 encodeObject:v7 forKey:@"selectedMerchants"];
}

- (BOOL)hasValidConfiguration
{
  v2 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (WFWalletTransactionTrigger)init
{
  v8.receiver = self;
  v8.super_class = WFWalletTransactionTrigger;
  v2 = [(WFTrigger *)&v8 init];
  v3 = v2;
  if (v2)
  {
    selectedPassUniqueIDs = v2->_selectedPassUniqueIDs;
    v2->_selectedPassUniqueIDs = MEMORY[0x1E695E0F0];

    selectedMerchantTypes = v3->_selectedMerchantTypes;
    v3->_selectedMerchantTypes = &unk_1F4A9B4B8;

    v6 = v3;
  }

  return v3;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v4 = [v2 imageNamed:@"Wallet" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Wallet", @"Wallet");
  v5 = [v3 localize:v4];

  return v5;
}

@end