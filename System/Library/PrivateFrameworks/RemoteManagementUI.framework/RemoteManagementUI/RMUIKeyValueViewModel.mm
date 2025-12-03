@interface RMUIKeyValueViewModel
- (RMUIKeyValueViewModel)init;
- (RMUIKeyValueViewModel)initWithCoder:(id)coder;
- (void)clearModel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIKeyValueViewModel

- (RMUIKeyValueViewModel)init
{
  v7.receiver = self;
  v7.super_class = RMUIKeyValueViewModel;
  v2 = [(RMUIKeyValueViewModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    detailViewModels = v2->_detailViewModels;
    v2->_detailViewModels = MEMORY[0x277CBEBF8];

    hiddenDetails = v3->_hiddenDetails;
    v3->_hiddenDetails = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)clearModel
{
  v14 = *MEMORY[0x277D85DE8];
  [(RMUIKeyValueViewModel *)self setTitle:0];
  [(RMUIKeyValueViewModel *)self setSymbol:0];
  [(RMUIKeyValueViewModel *)self setDeclaration:0];
  [(RMUIKeyValueViewModel *)self setDeclarationIdentifier:0];
  [(RMUIKeyValueViewModel *)self setDeclarationServerToken:0];
  [(RMUIKeyValueViewModel *)self setDeclarationType:0];
  [(RMUIKeyValueViewModel *)self setHiddenDetails:MEMORY[0x277CBEC10]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  detailViewModels = [(RMUIKeyValueViewModel *)self detailViewModels];
  v4 = [detailViewModels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(detailViewModels);
        }

        [*(*(&v9 + 1) + 8 * v7++) clearModel];
      }

      while (v5 != v7);
      v5 = [detailViewModels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithShort:{-[RMUIKeyValueViewModel symbol](self, "symbol")}];
  [coderCopy encodeObject:v6 forKey:@"symbol"];

  title = [(RMUIKeyValueViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  declaration = [(RMUIKeyValueViewModel *)self declaration];
  [coderCopy encodeObject:declaration forKey:@"declaration"];

  declarationIdentifier = [(RMUIKeyValueViewModel *)self declarationIdentifier];
  [coderCopy encodeObject:declarationIdentifier forKey:@"declarationIdentifier"];

  declarationServerToken = [(RMUIKeyValueViewModel *)self declarationServerToken];
  [coderCopy encodeObject:declarationServerToken forKey:@"declarationServerToken"];

  declarationType = [(RMUIKeyValueViewModel *)self declarationType];
  [coderCopy encodeObject:declarationType forKey:@"declarationType"];

  detailViewModels = [(RMUIKeyValueViewModel *)self detailViewModels];
  [coderCopy encodeObject:detailViewModels forKey:@"detailViewModels"];

  hiddenDetails = [(RMUIKeyValueViewModel *)self hiddenDetails];
  [coderCopy encodeObject:hiddenDetails forKey:@"hiddenDetails"];
}

- (RMUIKeyValueViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = RMUIKeyValueViewModel;
  v5 = [(RMUIKeyValueViewModel *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
    v5->_symbol = [v6 integerValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"declaration"];
    declaration = v5->_declaration;
    v5->_declaration = v11;

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"declarationIdentifier"];
    declarationIdentifier = v5->_declarationIdentifier;
    v5->_declarationIdentifier = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"declarationServerToken"];
    declarationServerToken = v5->_declarationServerToken;
    v5->_declarationServerToken = v17;

    v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"declarationType"];
    declarationType = v5->_declarationType;
    v5->_declarationType = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"detailViewModels"];
    detailViewModels = v5->_detailViewModels;
    v5->_detailViewModels = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"hiddenDetails"];
    hiddenDetails = v5->_hiddenDetails;
    v5->_hiddenDetails = v30;
  }

  return v5;
}

@end