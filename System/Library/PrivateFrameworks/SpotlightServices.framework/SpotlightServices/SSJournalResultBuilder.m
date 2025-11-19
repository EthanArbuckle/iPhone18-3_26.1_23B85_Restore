@interface SSJournalResultBuilder
- (SSJournalResultBuilder)initWithResult:(id)a3;
- (id)buildFootnote;
@end

@implementation SSJournalResultBuilder

- (SSJournalResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSJournalResultBuilder;
  v5 = [(SSResultBuilder *)&v8 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSJournalResultBuilder *)v5 setDateCreated:v6];
  }

  return v5;
}

- (id)buildFootnote
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(SSJournalResultBuilder *)self dateCreated];

  if (v3)
  {
    v4 = [(SSJournalResultBuilder *)self dateCreated];
    v5 = [SSDateFormatManager dynamicMediumStringFromDate:v4];

    if ([v5 length])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Entry" value:0 table:0];

      v14[0] = v7;
      v14[1] = @" · ";
      v14[2] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
      v9 = [v8 componentsJoinedByString:&stru_1F556FE60];

      v10 = [MEMORY[0x1E69CA3A0] textWithString:v9];

      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = SSJournalResultBuilder;
  v10 = [(SSResultBuilder *)&v13 buildFootnote];
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end