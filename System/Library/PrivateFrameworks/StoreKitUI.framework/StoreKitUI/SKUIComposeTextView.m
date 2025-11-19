@interface SKUIComposeTextView
- (void)setPlaceholder:(id)a3;
@end

@implementation SKUIComposeTextView

- (void)setPlaceholder:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D740C0];
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  v6 = [v4 placeholderTextColor];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v7];
  [(SKUIComposeTextView *)self setAttributedPlaceholder:v8];
}

@end