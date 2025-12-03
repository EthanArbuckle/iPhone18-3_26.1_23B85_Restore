@interface AFClientLite(SVXAceCommandHandling)
- (void)handleAceCommand:()SVXAceCommandHandling reply:;
@end

@implementation AFClientLite(SVXAceCommandHandling)

- (void)handleAceCommand:()SVXAceCommandHandling reply:
{
  v6 = a4;
  v7 = MEMORY[0x277CEF340];
  v8 = a3;
  v9 = [v7 alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__AFClientLite_SVXAceCommandHandling__handleAceCommand_reply___block_invoke;
  v20[3] = &unk_279C66CF0;
  v21 = v6;
  v10 = v6;
  v11 = [v9 initWithBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__AFClientLite_SVXAceCommandHandling__handleAceCommand_reply___block_invoke_2;
  v18[3] = &unk_279C66D18;
  v12 = v11;
  v19 = v12;
  v13 = MEMORY[0x26D642680](v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__AFClientLite_SVXAceCommandHandling__handleAceCommand_reply___block_invoke_3;
  v16[3] = &unk_279C66D40;
  v17 = v12;
  v14 = v12;
  v15 = MEMORY[0x26D642680](v16);
  [self handleCommand:v8 afterCurrentRequest:0 commandHandler:v13 completion:v15];
}

@end