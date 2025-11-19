@interface _ICQOpportunityBubbleImageDetails
- (_ICQOpportunityBubbleImageDetails)initWithServerDictionary:(id)a3;
- (id)getURLForScale:(int64_t)a3;
@end

@implementation _ICQOpportunityBubbleImageDetails

- (_ICQOpportunityBubbleImageDetails)initWithServerDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _ICQOpportunityBubbleImageDetails;
  v5 = [(_ICQOpportunityBubbleImageDetails *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"3x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor3x:v6];

    v7 = [v4 objectForKeyedSubscript:@"2x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor2x:v7];

    v8 = [v4 objectForKeyedSubscript:@"1x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor1x:v8];
  }

  return v5;
}

- (id)getURLForScale:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 3:
      v4 = [(_ICQOpportunityBubbleImageDetails *)self urlFor3x];
      goto LABEL_7;
    case 2:
      v4 = [(_ICQOpportunityBubbleImageDetails *)self urlFor2x];
      goto LABEL_7;
    case 1:
      v4 = [(_ICQOpportunityBubbleImageDetails *)self urlFor1x];
LABEL_7:
      v5 = v4;
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
      goto LABEL_11;
  }

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Invalid scale %ld", &v9, 0xCu);
  }

  v6 = 0;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end