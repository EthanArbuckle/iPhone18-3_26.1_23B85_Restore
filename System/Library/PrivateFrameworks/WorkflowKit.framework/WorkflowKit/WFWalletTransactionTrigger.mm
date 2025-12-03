@interface WFWalletTransactionTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (BOOL)isEqual:(id)equal;
- (WFWalletTransactionTrigger)init;
- (WFWalletTransactionTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWalletTransactionTrigger

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  selectedPassUniqueIDs = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  selectedMerchantTypes = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  selectedMerchants = [(WFWalletTransactionTrigger *)self selectedMerchants];
  v9 = [v3 stringWithFormat:@"<%@: %p, selectedPassUniqueIDs: %@, selectedMerchantTypes: %@, selectedMerchants: %@>", v5, self, selectedPassUniqueIDs, selectedMerchantTypes, selectedMerchants];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    selectedPassUniqueIDs = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
    selectedPassUniqueIDs2 = [(WFWalletTransactionTrigger *)v6 selectedPassUniqueIDs];
    v9 = selectedPassUniqueIDs;
    v10 = selectedPassUniqueIDs2;
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

    selectedMerchantTypes = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
    selectedMerchantTypes2 = [(WFWalletTransactionTrigger *)v6 selectedMerchantTypes];
    v14 = selectedMerchantTypes;
    v18 = selectedMerchantTypes2;
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

    selectedMerchants = [(WFWalletTransactionTrigger *)self selectedMerchants];
    selectedMerchants2 = [(WFWalletTransactionTrigger *)v6 selectedMerchants];
    v20 = selectedMerchants;
    v23 = selectedMerchants2;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = WFWalletTransactionTrigger;
  v4 = [(WFTrigger *)&v10 copyWithZone:zone];
  selectedPassUniqueIDs = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  v6 = [selectedPassUniqueIDs copy];
  [v4 setSelectedPassUniqueIDs:v6];

  selectedMerchantTypes = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  [v4 setSelectedMerchantTypes:selectedMerchantTypes];

  selectedMerchants = [(WFWalletTransactionTrigger *)self selectedMerchants];
  [v4 setSelectedMerchants:selectedMerchants];

  return v4;
}

- (WFWalletTransactionTrigger)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = WFWalletTransactionTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectedPassUniqueIDs"];
    selectedPassUniqueIDs = v5->_selectedPassUniqueIDs;
    v5->_selectedPassUniqueIDs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"selectedMerchantTypes"];
    selectedMerchantTypes = v5->_selectedMerchantTypes;
    v5->_selectedMerchantTypes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"selectedMerchants"];
    selectedMerchants = v5->_selectedMerchants;
    v5->_selectedMerchants = v19;

    v21 = v5;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFWalletTransactionTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedPassUniqueIDs"];

  selectedMerchantTypes = [(WFWalletTransactionTrigger *)self selectedMerchantTypes];
  [coderCopy encodeObject:selectedMerchantTypes forKey:@"selectedMerchantTypes"];

  selectedMerchants = [(WFWalletTransactionTrigger *)self selectedMerchants];
  [coderCopy encodeObject:selectedMerchants forKey:@"selectedMerchants"];
}

- (BOOL)hasValidConfiguration
{
  selectedPassUniqueIDs = [(WFWalletTransactionTrigger *)self selectedPassUniqueIDs];
  v3 = [selectedPassUniqueIDs count] != 0;

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
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  v4 = [v2 imageNamed:@"Wallet" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Wallet", @"Wallet");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end