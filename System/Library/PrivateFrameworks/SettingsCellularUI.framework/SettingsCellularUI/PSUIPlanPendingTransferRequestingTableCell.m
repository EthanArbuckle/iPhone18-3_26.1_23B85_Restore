@interface PSUIPlanPendingTransferRequestingTableCell
- (id)_setStatusLabelText;
@end

@implementation PSUIPlanPendingTransferRequestingTableCell

- (id)_setStatusLabelText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REQUEST_SENT" value:&stru_287733598 table:@"Gemini-Gemini"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

@end