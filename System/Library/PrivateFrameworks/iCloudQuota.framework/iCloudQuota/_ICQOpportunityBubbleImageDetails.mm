@interface _ICQOpportunityBubbleImageDetails
- (_ICQOpportunityBubbleImageDetails)initWithServerDictionary:(id)dictionary;
- (id)getURLForScale:(int64_t)scale;
@end

@implementation _ICQOpportunityBubbleImageDetails

- (_ICQOpportunityBubbleImageDetails)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _ICQOpportunityBubbleImageDetails;
  v5 = [(_ICQOpportunityBubbleImageDetails *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"3x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor3x:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"2x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor2x:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"1x"];
    [(_ICQOpportunityBubbleImageDetails *)v5 setUrlFor1x:v8];
  }

  return v5;
}

- (id)getURLForScale:(int64_t)scale
{
  v11 = *MEMORY[0x277D85DE8];
  switch(scale)
  {
    case 3:
      urlFor3x = [(_ICQOpportunityBubbleImageDetails *)self urlFor3x];
      goto LABEL_7;
    case 2:
      urlFor3x = [(_ICQOpportunityBubbleImageDetails *)self urlFor2x];
      goto LABEL_7;
    case 1:
      urlFor3x = [(_ICQOpportunityBubbleImageDetails *)self urlFor1x];
LABEL_7:
      v5 = urlFor3x;
      v6 = [MEMORY[0x277CBEBC0] URLWithString:urlFor3x];
      goto LABEL_11;
  }

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    scaleCopy = scale;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Invalid scale %ld", &v9, 0xCu);
  }

  v6 = 0;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end