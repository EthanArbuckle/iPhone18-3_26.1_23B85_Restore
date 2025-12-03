@interface SPUISJournalResultBuilder
- (SPUISJournalResultBuilder)initWithResult:(id)result;
- (id)buildFootnote;
@end

@implementation SPUISJournalResultBuilder

- (SPUISJournalResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SPUISJournalResultBuilder;
  v5 = [(SPUISResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISJournalResultBuilder *)v5 setDateCreated:v6];
  }

  return v5;
}

- (id)buildFootnote
{
  v14[3] = *MEMORY[0x277D85DE8];
  dateCreated = [(SPUISJournalResultBuilder *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(SPUISJournalResultBuilder *)self dateCreated];
    v5 = [SPUISDateFormatManager dynamicMediumStringFromDate:dateCreated2];

    if ([v5 length])
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Entry" value:0 table:0];

      v14[0] = v7;
      v14[1] = @" · ";
      v14[2] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
      v9 = [v8 componentsJoinedByString:&stru_287C50EE8];

      buildFootnote = [MEMORY[0x277D4C598] textWithString:v9];

      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = SPUISJournalResultBuilder;
  buildFootnote = [(SPUISResultBuilder *)&v13 buildFootnote];
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];

  return buildFootnote;
}

@end